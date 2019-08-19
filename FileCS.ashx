<%@ WebHandler Language="C#" Class="FileCS" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class FileCS : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "video/mp4";
        string str = ConfigurationManager.ConnectionStrings["oms"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select data from video where id=@id", con);
        cmd.Parameters.AddWithValue("@id", context.Request["id"]);
        byte[] song = (byte[])cmd.ExecuteScalar();
        context.Response.BinaryWrite(song);
        con.Close();
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}