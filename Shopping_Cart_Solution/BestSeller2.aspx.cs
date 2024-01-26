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

public partial class BestSeller2 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet is an in-memory cache of data retrieved from a data source
        //step 1: create Dataset with a GET method
        DataSet datafiction = GetDataFiction();

        //DataSource is used to pull the data from the database and populate them
        //step 8: pull data using DataSource
        Repeater2.DataSource = datafiction;

        //step 9: bind the data to the repeater
        Repeater2.DataBind();
    }

    private DataSet GetDataFiction()
    {
        //step 2: retrieve connection info from web.config
        string App_Data = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;

        //step 3: define a connection to the database
        using (SqlConnection conn = new SqlConnection(App_Data))
        {
            //step 4: create a command to retrieve data from a table in your database
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT TOP 10 * FROM AS_Pop", conn);

            //step 5: create a new DataSet
            DataSet datafiction = new DataSet();

            //step 6: pass the retrieved data into the newly created Dataset
            cmd.Fill(datafiction );

            //step 7: return
            return datafiction;
        }
    }

}







