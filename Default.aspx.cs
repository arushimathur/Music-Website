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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();
        }
    }

    private void binddata()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["OMS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Id, Name from video";
                cmd.Connection = con;
                con.Open();
                DataList1.DataSource = cmd.ExecuteReader();
                DataList1.DataBind();
                con.Close();
            }
        }
    }
    bool checkFile(string filename)
    {
        return Path.GetExtension(filename).ToLower() == ".mp4";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (checkFile(FileUpload1.FileName))
            {
                using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
                {
                    byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
                    string constr = ConfigurationManager.ConnectionStrings["OMS"].ToString();
                    SqlConnection con = new SqlConnection(constr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into video(name,data)values(@name,@data)";
                    cmd.Parameters.AddWithValue("@name",FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@data",bytes);
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                        Response.Write("Data Stored..");

                }
            }
        }
       // Response.Redirect(Request.Url.AbsoluteUri);
    }
}