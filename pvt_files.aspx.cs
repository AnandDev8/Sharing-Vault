using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pvt_files : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldata();
        }
    }
    protected void AudioFolder_Click(object sender, ImageClickEventArgs e)
    {

    }
    public void filldata()
    {
        ConnectionClass mycon = new ConnectionClass();
        string u_id = Session["u_id"].ToString();
        if (Session["u_id"] == null)
        {
            Response.Write("<script>alert('NOT AUTHORIZED');</script>");
           
        }
        else
        {
            DataCat.DataSource = mycon.select("select * from tbl_category where u_id='" + u_id +"'");
            DataCat.DataBind();
            
        }

    }
    protected void DataCat_ItemCommand(object source, DataListCommandEventArgs e)
    {   
        ConnectionClass mycon=new ConnectionClass();
        string cid = e.CommandArgument.ToString();
        Response.Redirect("textfolder.aspx?c_id="+cid);
    }
}