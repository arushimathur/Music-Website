<%@ WebHandler Language="C#" Class="Handler2" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class Handler2 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context)
    {
        context.Response.ContentType = "audio/mpeg";
        string str = ConfigurationManager.ConnectionStrings["oms"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select sbytes from art_song where song_id=@songid", con);
        cmd.Parameters.AddWithValue("@songid", context.Request["song_id"]);
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