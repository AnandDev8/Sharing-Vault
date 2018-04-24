using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        invalid.Visible=false;
    }
    protected void login_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string role = mycon.GetValue("select role from login where username='"+ uname.Text  +"' and password='"+ password.Text +"' and status='active'");
        if (role == "user")
        {
            Session["u_id"] = mycon.GetValue("select u_id from user_regis where u_name='"+ uname.Text +"'");
            Response.Redirect("pvt_files.aspx");
        }
        else if (role == "admin")
        {
            Session["username"] = mycon.GetValue("select username from Login where username='admin'");
            Response.Redirect("user_log.aspx");
        }
        else
        {
            invalid.Visible = true;
        }
    }
    protected void  Button1_Click(object sender, EventArgs e)
     {
        uname.Text="";
        password.Text="";
     }
}