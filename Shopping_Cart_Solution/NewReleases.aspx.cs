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

public partial class NewReleases : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet is an in-memory cache of data retrieved from a data source
        //step 1: create Dataset with a GET method
        DataSet datanew = GetDataNew();

        //DataSource is used to pull the data from the database and populate them
        //step 8: pull data using DataSource
        Repeater1.DataSource = datanew;

        //step 9: bind the data to the repeater
        Repeater1.DataBind();
    }

    private DataSet GetDataNew()
    {
        //step 2: retrieve connection info from web.config
        string App_Data = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;

        //step 3: define a connection to the database
        using (SqlConnection conn = new SqlConnection(App_Data))
        {
            //step 4: create a command to retrieve data from a table in your database
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM NEW_RELEASES", conn);

            //step 5: create a new DataSet
            DataSet datathriller = new DataSet();

            //step 6: pass the retrieved data into the newly created Dataset
            cmd.Fill(datathriller);

            //step 7: return
            return datathriller;
        }
    }

}







