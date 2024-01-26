using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using Salt_Password_Sample;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblAftLogin.Text = Session["Email"].ToString();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["Search"] = txtSearch.Text;
        Response.Redirect("Search.aspx");
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["CHANGE_MASTERPAGE2"] = "~/MasterPage.Master";
        Session["CHANGE_MASTERPAGE"] = null;
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void btnHiphop_Click(object sender, EventArgs e)
    {
        Response.Redirect("BestSellerHiphop");
    }
    protected void btnPop_Click(object sender, EventArgs e)
    {
        Response.Redirect("BestSellerPop");
    }
    protected void btnFilm_Click(object sender, EventArgs e)
    {
        Response.Redirect("BestSellerFilm");
    }
    protected void btnOther_Click(object sender, EventArgs e)
    {
        Response.Redirect("BestSellerOthers");
    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home");
    }
}