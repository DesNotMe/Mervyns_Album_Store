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

public partial class Cart : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Email"] == null)
        {
            Response.Redirect("/Home");
            Session["Email"] = "New User";
        }

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Cart WHERE userid=@user", con))
            {
                string user = Session["Email"].ToString();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@user", user);
                con.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string name = reader["Name"].ToString();
                        string price = reader["Price"].ToString();
                        string image = reader["Image"].ToString();
                        string Id = reader["Id"].ToString();

                        Carttext.Text += name + "<br />" + price + "<img src='" + image + "' alt='Product Image' /><asp:Button runat='server' OnClick='Clear_Click' Id='" + Id + "'>X</asp:Button><br>";

                    }
                }
            }
        }
    }
    protected void Clear_Click(object sender, EventArgs e)
    {
    }
    protected void Payment_Click(object sender, EventArgs e)
    {
    }
}