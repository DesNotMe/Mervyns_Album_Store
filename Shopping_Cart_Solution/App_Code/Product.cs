using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    //system.Configuration.ConnectionStringSettings _connStr;
    string _connStr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
    private string _prodID = null;
    private string _prodName = string.Empty;
    private string _prodDesc = "";
    private decimal _unitPrice = 0;
    private string _prodImage = "";
    private string _albumArtist = "";
    private string _albumGenre = "";

    public Product()
    {
    }

    public Product(string prodID, string prodName, string prodDesc,
                   decimal unitPrice, string prodImage, string albumArtist, string albumGenre)
    {
        _prodID = prodID;
        _prodName = prodName;
        _prodDesc = prodDesc;
        _unitPrice = unitPrice;
        _prodImage = prodImage;
        _albumArtist = albumArtist;
        _albumGenre = albumGenre;
    }

    //get/set the attributes of the Product object.
    //note the attribute name (e.g. Product_ID) is same as the actual database field name.
    //this is for ease of referencing.
    public string Product_ID
    {
        get { return _prodID; }
        set { _prodID = value; }
    }
    public string Product_Name
    {
        get { return _prodName; }
        set { _prodName = value; }
    }
    public string Product_Desc
    {
        get { return _prodDesc; }
        set { _prodDesc = value; }
    }
    public decimal Unit_Price
    {
        get { return _unitPrice; }
        set { _unitPrice = value; }
    }
    public string Product_Image
    {
        get { return _prodImage; }
        set { _prodImage = value; }
    }

    public string Album_Artist
    {
        get { return _albumArtist; }
        set { _albumArtist = value; }
    }
    public string Album_Genre
    {
        get { return _albumGenre; }
        set { _albumGenre = value; }
    }

    //below as the Class methods for some DB operations. 
    public Product getProduct(string prodID)
    {
        Product prodDetail = null;

        string prod_Name, prod_Desc, Prod_Image, album_Artist, album_Genre;
        decimal unit_Price;

        string queryStr = "SELECT * FROM ALL_Products WHERE ID = @ProdID";

        SqlConnection conn = new SqlConnection(_connStr);
        SqlCommand cmd = new SqlCommand(queryStr, conn);
        cmd.Parameters.AddWithValue("@ProdID", prodID);

        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            prod_Name = dr["Title"].ToString();
            prod_Desc = dr["Description"].ToString();
            Prod_Image = dr["Image"].ToString();
            unit_Price = decimal.Parse(dr["Price"].ToString());
            album_Artist = dr["Artist"].ToString();
            album_Genre = dr["Genre"].ToString();

            prodDetail = new Product(prodID, prod_Name, prod_Desc, unit_Price, Prod_Image, album_Artist, album_Genre);
        }
        else
        {
            prodDetail = null;
        }

        conn.Close();
        dr.Close();
        dr.Dispose();

        return prodDetail;
    }

    public int UserDelete(string ID)
    {
        string queryStr = "DELETE FROM Registration WHERE ID=@ID";
        SqlConnection conn = new SqlConnection(_connStr);
        SqlCommand cmd = new SqlCommand(queryStr, conn);
        cmd.Parameters.AddWithValue("@ID", ID);
        conn.Open();
        int nofRow = 0;
        nofRow = cmd.ExecuteNonQuery();
        conn.Close();
        return nofRow;
    }

    public int ProductInsert()
    {
        int result = 0;
        string queryStr = "INSERT INTO ALL_Products(ID, Title, Description, Price, Image, Artist, Genre)" + "values (@Product_ID, @Product_Name, @Product_Desc, @Unit_Price, @Product_Image, @album_Artist, @album_Genre)";

        SqlConnection conn = new SqlConnection(_connStr);
        SqlCommand cmd = new SqlCommand(queryStr, conn);
        cmd.Parameters.AddWithValue("@Product_ID", this.Product_ID);
        cmd.Parameters.AddWithValue("@Product_Name", this.Product_Name);
        cmd.Parameters.AddWithValue("@Product_Desc", this.Product_Desc);
        cmd.Parameters.AddWithValue("@Unit_Price", this.Unit_Price);
        cmd.Parameters.AddWithValue("@Product_Image", this.Product_Image);
        cmd.Parameters.AddWithValue("@album_Artist", this.Album_Artist);
        cmd.Parameters.AddWithValue("@album_Genre", this.Album_Genre);

        conn.Open();
        result += cmd.ExecuteNonQuery();
        conn.Close();

        return result;
    }//end Insert
}

public class Thriller
{
    //System.Configuration.ConnectionStringSettings _connStr;
    string _connStr = ConfigurationManager.ConnectionStrings["App_Data"].ConnectionString;
    private string _prodID = null;
    private string _prodName = string.Empty;
    private string _prodImage = "";
    private string _albumArtist = "";

    // Default constructor
    public Thriller()
    {
    }

    // PRODUCTS
    public Thriller(string prodID, string prodName, string prodImage, string albumArtist)
    {
        _prodID = prodID;
        _prodName = prodName;
        _prodImage = prodImage;
        _albumArtist = albumArtist;
    }

    // Constructor that take in all except product ID
    public Thriller(string prodName, string prodImage, string albumArtist)
        : this(null, prodName, prodImage, albumArtist)
    {
    }

    // Constructor that take in only Product ID. The other attributes will be set to 0 or empty.
    public Thriller(string prodID)
        : this(prodID, "", "", "")
    {
    }

    // Get/Set the attributes of the Product object.
    // Note the attribute name (e.g. Product_ID) is same as the actual database field name.
    // This is for ease of referencing.
    public string Product_ID
    {
        get { return _prodID; }
        set { _prodID = value; }
    }
    public string Product_Name
    {
        get { return _prodName; }
        set { _prodName = value; }
    }

    public string Product_Image
    {
        get { return _prodImage; }
        set { _prodImage = value; }
    }

    public string album_Artist
    {
        get { return _albumArtist; }
        set { _albumArtist = value; }
    }

    public int ThrillerInsert()
    {
        int result = 0;
        string queryStrThriller = "INSERT INTO AS_Hiphop(AS_ID, AS_Image, AS_Title, AS_Artist)" + "values (@Product_ID, @Product_Name, @Product_Image, @album_Artist)";

        SqlConnection conn = new SqlConnection(_connStr);
        SqlCommand cmd = new SqlCommand(queryStrThriller, conn);
        cmd.Parameters.AddWithValue("@Product_ID", this.Product_ID);
        cmd.Parameters.AddWithValue("@Product_Image", this.Product_Image);
        cmd.Parameters.AddWithValue("@Product_Name", this.Product_Name);
        cmd.Parameters.AddWithValue("@album_Artist", this.album_Artist);

        conn.Open();
        result += cmd.ExecuteNonQuery();
        conn.Close();

        return result;
    }//end Insert
}