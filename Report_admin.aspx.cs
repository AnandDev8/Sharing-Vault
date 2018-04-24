using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill();
        }

    }
    public void fill()
    {
        ConnectionClass mycon = new ConnectionClass();
        Listreport.DataSource = mycon.select("select * from tbl_report where status='ACTIVE'");
        Listreport.DataBind();
    }
    protected void Listreport_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "download")
        {
            ConnectionClass mycon = new ConnectionClass();
            string p_id = e.CommandArgument.ToString();
            string path = mycon.GetValue("select path from tbl_addf where p_id='" + p_id+"'");
            Response.Redirect(path);
        }
        else if (e.CommandName == "delete")
        {
            ConnectionClass mycon = new ConnectionClass();
            string pid = e.CommandArgument.ToString();
            mycon.iud("update tbl_addf set status='REMOVE' where p_id='"+ pid +"'" );
            mycon.iud("update tbl_report set status='INACTIVE' where p_id='" + pid +"'");
            fill();
        }
    }
}