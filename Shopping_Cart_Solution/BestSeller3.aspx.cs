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

public partial class BestSeller3 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet is an in-memory cache of data retrieved from a data source
        //step 1: create Dataset with a GET method
        DataSet datapaperbacks = GetDataPaperbacks();

        //DataSource is used to pull the data from the database and populate them
        //step 8: pull data using DataSource
        
        Repeater3.DataSource = datapaperbacks;

        //step 9: bind the data to the repeater
        Repeater3.DataBind();
    }

    private DataSet GetDataPaperbacks()
    {
        string App_Data = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(App_Data))
        {
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT TOP 2 * FROM AS_Film", conn);
            DataSet datapaperbacks = new DataSet();
            cmd.Fill(datapaperbacks);
            return datapaperbacks;
        }
    }

}







