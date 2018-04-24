using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blockedUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            blkuser();
            blkgrp();
        }

    }
    public void blkuser()
    {
        ConnectionClass mycon = new ConnectionClass();
        blklist.DataSource = mycon.select("SELECT user_regis.u_id, user_regis.profilepic, user_regis.u_name FROM Login INNER JOIN user_regis ON Login.username = user_regis.u_name WHERE (Login.status = 'BLOCKED')");
        blklist.DataBind();
    }
    protected void blklist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string uid = e.CommandArgument.ToString();
        ConnectionClass mycon = new ConnectionClass();
        mycon.iud("update user_regis set status='ACTIVE' where u_id='"+ uid +"'");
        string user=mycon.GetValue("select u_name from user_regis where u_id='" + uid + "'");
        mycon.iud("update Login set status='active' where username='" + user +"'" );
        blkuser();
    }
    public void blkgrp()
    {
        ConnectionClass mycon = new ConnectionClass();
        string gid = Request.QueryString["g_id"];
        grplist.DataSource = mycon.select("select * from g_create where status='BLOCKED'");
        grplist.DataBind();
    }
    protected void blkgrplist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void blklist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void blkgrplist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grplist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string gid = e.CommandArgument.ToString();
        ConnectionClass mycon = new ConnectionClass();
        mycon.iud("update g_create set status='ACTIVE' where g_id='" + gid + "'");
        blkgrp();
    }
}