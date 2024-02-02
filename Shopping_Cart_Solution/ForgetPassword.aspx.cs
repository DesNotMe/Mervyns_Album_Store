using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.ServiceModel.Configuration;
using System.Security.Cryptography;
using System.Threading.Tasks;
using Google.Apis.Auth.OAuth2;
using System.Text;
using System.IO;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void forgotPwdBtn_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString);

        conn.Open();

        string checkuser = "SELECT Id FROM REGISTRATION WHERE Email= @email" ;
        SqlCommand com = new SqlCommand(checkuser, conn);
        com.Parameters.AddWithValue("@email", txt_Email.Text);

        using(SqlDataReader read = com.ExecuteReader())
        {
            if (read.Read())//checks if email exists inside DB
            {
                conn.Close();
                Random random = new Random();
                int myRandom = random.Next(10000, 999999);
                string forgot_otp = myRandom.ToString();
                conn.Open();
                string updateAcc = "update REGISTRATION set forgot_otp='" + forgot_otp + "' where Email = '" + txt_Email.Text.ToString() + "' ";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, conn);
                cmdUpdate.ExecuteNonQuery();

                MailMessage mail = new MailMessage();
                mail.To.Add(txt_Email.Text.ToString());
                mail.From = new MailAddress("leemervyn3@gmail.com");
                mail.Subject = "Reset password link";

                string emailBody = "";
                emailBody += "<h2> Hello User, </h2>";
                emailBody += "Click the link below to reset your password.</br>";
                emailBody += "<p><a href='" + " http://localhost:10068/ResetPassword.aspx?forgot_otp=" + forgot_otp + "&Email=" + txt_Email.Text.ToString() + "'> Click here to reset password.</a></p>";

                mail.Body = emailBody;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("leemervyn3@gmail.com", "njve lpey iaib pric");
                smtp.Send(mail);
                lblErorrMsg.Text = "Reset Password link sent suceessfully.";
                lblErorrMsg.ForeColor = System.Drawing.Color.Green;
                conn.Close();
            }


            else
            {
                lblErorrMsg.Text = "Your email is not associated with us.";
                lblErorrMsg.ForeColor = System.Drawing.Color.Red;
                conn.Close();
            }

            txt_Email.Text = ""; //clears textbox after login
        }
    }
}