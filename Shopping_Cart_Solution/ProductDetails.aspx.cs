using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using FirebaseAdmin.Messaging;

public partial class ProductDetails : BasePage
{
    //declare a new Product class
    Product prod = null;
    DataTable dt = new DataTable();

    //retrieve connection info from web.config
    string constr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        Product aProd = new Product();

        //request ProdID from QueryString (PostBackURL)
        string prodID = Request.QueryString["ProdID"].ToString();
        prod = aProd.getProduct(prodID);

        lblTitle.Text = prod.Product_Name;
        lblDescription.Text = prod.Product_Desc;
        lblPrice.Text = prod.Unit_Price.ToString("C");
        lblPrice2.Text = prod.Unit_Price.ToString("C");
        imgProductDetails.ImageUrl = prod.Product_Image;
        lblAuthor.Text = prod.Album_Artist;
        lblGenre.Text = prod.Album_Genre;
        if (!IsPostBack)
        {
            DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) " +
                "RatingCount FROM [RATINGS] WHERE Title = @booktitle");

            //display rating
            Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
            lblresult.Text = string.Format("{0} Reviews ", dt.Rows[0]["RatingCount"]);
            lblavgrating.Text = string.Format("{0}", dt.Rows[0]["AverageRating"]);
        }

    }
    public void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);

        //insert rating into database
        SqlCommand cmd = new SqlCommand("INSERT INTO [RATINGS] VALUES (@ratingvalue,@review,@title)");
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ratingvalue", Rating1.CurrentRating.ToString());
        cmd.Parameters.AddWithValue("@review", txtreview.Text);
        cmd.Parameters.AddWithValue("@title", lblTitle.Text);
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    private DataTable GetData(string query)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@booktitle", lblTitle.Text);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;

    }
    public void btnAddCart_Click(object sender, EventArgs e)
    {
        Guid newUuid = Guid.NewGuid();
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("INSERT INTO Cart VALUES (@id,@name,@price,@quantity,@image,@userid)");
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@id", newUuid);
        cmd.Parameters.AddWithValue("@name", lblTitle.Text);
        cmd.Parameters.AddWithValue("@price", lblPrice.Text);
        cmd.Parameters.AddWithValue("@quantity", "1");
        cmd.Parameters.AddWithValue("@image", imgProductDetails.ImageUrl);
        cmd.Parameters.AddWithValue("@userid", Session["Email"].ToString());
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('Added to cart');</script>");
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}