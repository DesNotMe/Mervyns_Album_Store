using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class BestSeller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindRepeater();
        }
    }

    private void BindRepeater()
    {
        string constr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Pop_CRUD"))
            {
                cmd.Parameters.AddWithValue("@Action", "SELECT");
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                }
            }
        }
    }

    protected void OnEdit(object sender, EventArgs e)
    {
        //Find the reference of the Repeater Item.
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
        this.ToggleElements(item, true);
    }

    private void ToggleElements(RepeaterItem item, bool isEdit)
    {
        //Toggle Buttons.
        item.FindControl("lnkEdit").Visible = !isEdit;
        item.FindControl("lnkUpdate").Visible = isEdit;
        item.FindControl("lnkCancel").Visible = isEdit;


        //Toggle Labels.
        item.FindControl("lblTitle").Visible = !isEdit;
        item.FindControl("lblAuthor").Visible = !isEdit;
        item.FindControl("imgBooks").Visible = !isEdit;

        //Toggle TextBoxes.
        item.FindControl("txtTitle").Visible = isEdit;
        item.FindControl("txtAuthor").Visible = isEdit;
        item.FindControl("txtImage").Visible = isEdit;


    }

    protected void OnUpdate(object sender, EventArgs e)
    {
        // Find the reference of the Repeater Item.
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;

        // Finds the matching BS_ID in the row of data
        int bookId = int.Parse((item.FindControl("lblBookId") as Label).Text);
        // Trim() allows data to be modified
        string name = (item.FindControl("txtTitle") as TextBox).Text.Trim();
        string price = (item.FindControl("txtAuthor") as TextBox).Text.Trim();
        string image = (item.FindControl("txtImage") as TextBox).Text.Trim();

        string constr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            // using stored procedure
            using (SqlCommand cmd = new SqlCommand("Pop_CRUD"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                // call the action UPDATE
                cmd.Parameters.AddWithValue("@Action", "UPDATE");
                // pass in new values
                cmd.Parameters.AddWithValue("@AlbumId", bookId);
                cmd.Parameters.AddWithValue("@Title", name);
                cmd.Parameters.AddWithValue("@Artist", price);
                cmd.Parameters.AddWithValue("@Image", image);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update Successful');</script>");
                // Show Toastr success notification
                ScriptManager.RegisterStartupScript(this, GetType(), "showSuccessNotification", "toastr.success('Product updated successfully!');", true);
            }
        }

        // Display
        this.BindRepeater();
    }


    protected void OnCancel(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
        this.ToggleElements(item, false);
    }

    protected void OnDelete(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
        int bookId = int.Parse((item.FindControl("lblBookId") as Label).Text);

        string constr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Pop_CRUD"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@AlbumId", bookId);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Delete Successful');</script>");
            }
        }
        this.BindRepeater();
    }

    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin-InsertHiphop.aspx");
    }
}