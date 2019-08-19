using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OnlineQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-1OERUD8\\SQLEXPRESS;integrated security=true;database=OM");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into query values('"+TextBox1.Text.Trim()+"','"+TextBox2.Text.Trim()+"','"+TextBox3.Text.Trim()+"','"+TextBox4.Text.Trim()+"')",con);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Label5.Text = "Query Saved Successfully";
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
            TextBox1.Focus();
        }
        con.Close();
    }
}