using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionClass mycon = new ConnectionClass();
            string user = Session["username"].ToString();
            if (user == "")
            {
                Response.Redirect("LoginS.aspx");
           
            }
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
                string userrr = Session["username"].ToString();
            }
        }
    }
    protected void sinout_Click(object sender, ImageClickEventArgs e)
    {
        // Session.RemoveAll();
        Session.Abandon();
        Session.Clear();
        //System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("LoginS.aspx");
    }
}
