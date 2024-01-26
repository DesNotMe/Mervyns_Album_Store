using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductDetails : System.Web.UI.Page
{
    //declare a new Product class
    Product prod = null;

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
    }
}