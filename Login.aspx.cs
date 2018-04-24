using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        invalid.Visible = false;
    }
    protected void Login_submit_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string role = mycon.GetValue("select role from login where username='"+ Username.Text  +"' and password='"+ Password.Text +"' and status='active'");
        if (role == "user")
        {
            Session["u_id"] = mycon.GetValue("select u_id from user_regis where u_name='"+ Username.Text +"'");
            Response.Redirect("pvt_files.aspx");
        }
        else if (role == "admin")
        {
            Response.Redirect("user_log.aspx");
        }
        else
        {
            invalid.Visible = true;
        }
    }
    protected void clr_Click(object sender, EventArgs e)
    {
        Username.Text = "";
        Password.Text = "";

    }
}