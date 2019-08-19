using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("~/Admin/Login.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("Home.aspx");
    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("Online Query.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("ContactUs.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("BollyWoodSongs.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("videosongs.aspx");
    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("videosongs.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("Online Query.aspx");
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("BollyWoodSongs.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text.Length == 0)
        {
            Label2.Text = "cant be left blank";
        }
        else
        {
            string query = TextBox1.Text;
            query = query.Replace(' ','+');
            Response.RedirectPermanent("Search.aspx?song_name="+query+"");
        }
    }
}
