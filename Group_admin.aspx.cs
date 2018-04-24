using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Group_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            showgrp();
        }
    }
    protected void grplist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        if (e.CommandName == "block")
        {
            string g_id = e.CommandArgument.ToString();
            Response.Redirect("blockusr_admin.aspx?g_id='" + g_id +"'");
            //mycon.iud("update g_create set status='block' where g_id=" + g_id);
        }
        else if (e.CommandName == "delete")
        {
            string gid = e.CommandArgument.ToString();
            mycon.iud("update g_create set status='DELETE' where g_id='"+ gid +"'");
            mycon.iud("update g_create set status='remove' where g_id='" + gid + "'");
            showgrp();
        }
    }
    public void showgrp()
    {
        ConnectionClass mycon = new ConnectionClass();
        grplist.DataSource = mycon.select("SELECT g_create.g_name, g_create.g_time, user_regis.u_name, g_create.g_image, g_create.g_id FROM g_create INNER JOIN user_regis ON g_create.u_id = user_regis.u_id where g_create.status='ACTIVE'");
        grplist.DataBind();
    }
    protected void blockgrp_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void grplist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}