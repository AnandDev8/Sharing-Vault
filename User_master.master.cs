using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class User_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ConnectionClass mycon = new ConnectionClass();
            string uid = Session["u_id"].ToString();
            if (uid == "")
            {
                Response.Redirect("LoginS.aspx");
            }
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
                string user_id = Session["u_id"].ToString();
                DataTable dt = mycon.select("select * from user_regis where u_id='" + user_id + "'");
                fname.Text = dt.Rows[0][1].ToString();
                username.Text = dt.Rows[0][4].ToString();
                name.Text = dt.Rows[0][1].ToString();
                phone.Text = dt.Rows[0][7].ToString();
                country.Text = dt.Rows[0][8].ToString();
                dp1.ImageUrl = dt.Rows[0][12].ToString();
                dp2.ImageUrl = dt.Rows[0][12].ToString();
                back.ImageUrl = dt.Rows[0][14].ToString();
                dp1.CommandArgument = user_id;

            }
        }
    }
    protected void dp1_Click(object sender, ImageClickEventArgs e)
    {
        string user = Session["u_id"].ToString();

    }
    protected void edit_Click(object sender, ImageClickEventArgs e)
    {
        string uid = Session["u_id"].ToString();
        ConnectionClass mycon=new ConnectionClass();
        Response.Redirect("profilepage.aspx?u_id=" + uid );
    }
    protected void signout_Click(object sender, ImageClickEventArgs e)
    {
        
       // Session.RemoveAll();
        Session.Abandon();
        Session.Clear();
        //System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("LoginS.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void edits_Click(object sender, ImageClickEventArgs e)
    {
        string uid = Session["u_id"].ToString();
        ConnectionClass mycon = new ConnectionClass();
        Response.Redirect("profilepage.aspx?u_id=" + uid);
    }
    protected void edit_Click1(object sender, EventArgs e)
    {
        string uid = Session["u_id"].ToString();
        ConnectionClass mycon = new ConnectionClass();
        Response.Redirect("profilepage.aspx?u_id=" + uid);
    }
}
