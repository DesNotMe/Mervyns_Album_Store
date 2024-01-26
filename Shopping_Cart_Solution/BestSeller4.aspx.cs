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

public partial class BestSeller4 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet is an in-memory cache of data retrieved from a data source
        //step 1: create Dataset with a GET method
        DataSet datayoungreaders = GetDataYoungReaders();

        //DataSource is used to pull the data from the database and populate them
        //step 8: pull data using DataSource
        Repeater4.DataSource = datayoungreaders;

        //step 9: bind the data to the repeater
        Repeater4.DataBind();
    }

    private DataSet GetDataYoungReaders()
    {
        string App_Data = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(App_Data))
        {
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT TOP 6 * FROM AS_Others", conn);
            DataSet datayoungreaders = new DataSet();
            cmd.Fill(datayoungreaders);
            return datayoungreaders;
        }
    }

}











