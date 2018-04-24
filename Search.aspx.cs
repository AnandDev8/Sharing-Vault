using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillData();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    public void fillData()
    {
        ConnectionClass mycon = new ConnectionClass();
        DataFriend.DataSource = mycon.select("select * from user_regis");
        DataFriend.DataBind();
    }
    protected void view_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void DataFriend_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string uid = e.CommandArgument.ToString();
        Response.Redirect("vaultProfile.aspx?u_id='"+ uid +"'");
    }
    protected void okay_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        DataFriend.DataSource=mycon.select("SELECT u_id, fname, mname, lname, u_name, u_password, gender, phone, nationality, time, email, dob, profilepic, status, dp2, discp, personal FROM user_regis WHERE (fname LIKE '" + TextSearch.Text  + "%')");
        DataFriend.DataBind();
        //fillData();
    }
}