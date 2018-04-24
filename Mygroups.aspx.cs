using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mygroups : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string uid = Session["u_id"].ToString();
        string uname = mycon.GetValue("select u_name from user_regis where u_id='" + uid +"'");
        grouplist.DataSource = mycon.select("SELECT DISTINCT tbl_addmember.u_name, g_create.g_name, g_create.g_image, g_create.g_id FROM  g_create INNER JOIN tbl_addmember ON g_create.g_id = tbl_addmember.g_id AND tbl_addmember.u_name ='" + uname  + "' AND g_create.status='ACTIVE'");
        grouplist.DataBind();
    }
    protected void grouplist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string gid = e.CommandArgument.ToString();
        Response.Redirect("GroupPage.aspx?g_id='" + gid +"'");
    }
}