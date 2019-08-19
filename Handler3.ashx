<%@ WebHandler Language="C#" Class="Handler3" %>

using System;
using System.Web;
using System.Data.SqlClient;

public class Handler3 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "audio/mpeg";
        SqlConnection con = new SqlConnection("server=DESKTOP-1OERUD8\\SQLEXPRESS;integrated security=true;database=OM");
        con.Open();
        SqlCommand cmd = new SqlCommand("select song_name,sbytes from songs where song_id=@song_id", con);
        cmd.Parameters.AddWithValue("@song_id", context.Request["song_id"]);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        byte[] song = (byte[])dr["sbytes"];
        string name = dr["song_name"].ToString();
        context.Response.ContentType = "audio/mpeg";
        con.Close();

        context.Response.Clear();
        context.Response.Buffer = true;
        context.Response.AppendHeader("Content-Disposition", "attachment; filename=" + name);
        context.Response.BinaryWrite(song);
        context.Response.End(); 
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}