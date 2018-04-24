using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            showuser();
        }
    }
    protected void adminlist_ItemCommand(object source, DataListCommandEventArgs e)
    {
      

    }
    protected void okay_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon=new ConnectionClass();
        adminlist.DataSource = mycon.select("SELECT u_id, fname, mname, lname, u_name, u_password, gender, phone, nationality, time, email, dob, profilepic, status, dp2, discp, personal FROM user_regis WHERE (fname LIKE '" + adminsearch.Text  + "%')");
        adminlist.DataBind();
    }
    public void showuser()
    {
        ConnectionClass mycon = new ConnectionClass();
        adminlist.DataSource = mycon.select("select * from user_regis where status='ACTIVE'");
        adminlist.DataBind();
    }
    protected void adminlist_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string uid = Session["u_id"].ToString();
        if (e.CommandName == "block")
        {
            string u_id = e.CommandArgument.ToString();
            mycon.iud("update user_regis set status='BLOCKED' where u_id='" + u_id +"'");
            string uname=mycon.GetValue("select u_name from user_regis where u_id='"+u_id +"'");
            Label1.Text = "block";
            mycon.iud("update  Login set status='BLOCKED' where username='" + uname + "'");
            showuser();
        }
        else if (e.CommandName == "view")
        {
            string uidd = e.CommandArgument.ToString();
            Response.Redirect("vaultProfile.aspx?u_id='" + uidd+"'");
            showuser();
        }
        else if (e.CommandName == "delete")
        {
            string udd = e.CommandArgument.ToString();
            mycon.iud("update user_regis set status='DELETE' where u_id='" + udd+"'");
            string uname = mycon.GetValue("select u_name from user_regis where u_id='" + udd+"'");
            mycon.iud("update  Login set status='DELETE' where username='" + uname + "'");
            Label1.Text = "delete";
            showuser();
        }

    }
}