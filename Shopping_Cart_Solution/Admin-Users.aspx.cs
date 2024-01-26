using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int result = 0;
        Product prod = new Product();
        string categoryID = gvUsers.DataKeys[e.RowIndex].Value.ToString();
        result = prod.UserDelete(categoryID);

        if (result > 0)
        {
            Response.Write("<script>alert('Product Removed successfully');</script>");
        }
        else
        {
            Response.Write("<script>alert('Product Removal NOT successful');</script>");
        }

        Response.Redirect("Admin-Users.aspx");
    }
}