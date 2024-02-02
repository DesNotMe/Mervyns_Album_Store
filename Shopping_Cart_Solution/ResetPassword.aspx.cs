using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Salt_Password_Sample;
using System.Net;
using System.Net.Mail;
using System.ServiceModel.Configuration;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;

public partial class ResetPassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string forgot_otp = Request.QueryString["forgot_otp"].ToString();
        string email = Request.QueryString["email"].ToString();
        conn.Open();
        string checkActivation = "select Id from REGISTRATION where Email='" + email + "' and forgot_otp='" + forgot_otp + "'";
        SqlCommand checkCMD = new SqlCommand(checkActivation, conn);
        SqlDataReader read = checkCMD.ExecuteReader();
        if (read.Read())
        {
            PlaceHolder1.Visible = true;
            conn.Close();
        }
        else
        {
            PlaceHolder1.Visible = false;
            conn.Close();
        }
    }
    
    protected void resetpwdBtn_Click(object sender, EventArgs e)
    {
       
        string email = Request.QueryString["email"].ToString();
        if (txt_RegPassword.Text.ToString() == txt_ConfirmPW.Text.ToString())
        {
            conn.Open();
            string hashpw = Hash.ComputeHash(txt_RegPassword.Text, "SHA512", null);
            string updateAcc = "update REGISTRATION set forgot_otp=0, Password = '" + hashpw + "' where Email ='"+ email +"' ";
            SqlCommand cmdUpdate = new SqlCommand(updateAcc, conn);
            cmdUpdate.ExecuteNonQuery();
            
            lblErrorMsg.Text = "Password reset successfully.";
            lblErrorMsg.ForeColor = System.Drawing.Color.Green;
            conn.Close();
        }
        else
        {
            lblErrorMsg.Text = "Password and Confirm password is not the same.";
            lblErrorMsg.ForeColor = System.Drawing.Color.Red;
        }
        
    }
}

//if (txt_RegPassword.Text.ToString() == txt_ConfirmPW.Text.ToString())
//{
//    conn.Open();
//    string updateAcc = "update REGISTRATION set forgot_otp=0, Password = '" + txt_RegPassword.Text.ToString() + "' where Email ='" + email + "' ";
//    SqlCommand cmdUpdate = new SqlCommand(updateAcc, conn);
//    cmdUpdate.ExecuteNonQuery();
//    Hash.VerifyHash(txt_RegPassword.Text, "SHA512", updateAcc);

//    lblErrorMsg.Text = "Password reset successfully";
//    lblErrorMsg.ForeColor = System.Drawing.Color.Green;
//    conn.Close();
//}
//else
//{
//    lblErrorMsg.Text = "Password and Confirm password is not the same.";
//    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
//}