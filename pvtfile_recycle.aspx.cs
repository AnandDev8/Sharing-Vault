using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pvtfile_recycle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillrecycle();
        }
    }
    public void fillrecycle()
    {
        string ud = Session["u_id"].ToString();
            ConnectionClass mycon = new ConnectionClass();
            //string c_id=mycon.GetValue("select c_id from tbl_pvt where path='" + 
            recyclelist.DataSource = mycon.select("SELECT tbl_pvt.path,tbl_category.u_id, tbl_pvt.sname, tbl_pvt.filename, tbl_pvt.status, tbl_pvt.time FROM tbl_category INNER JOIN tbl_pvt ON tbl_category.c_id = tbl_pvt.c_id WHERE (tbl_pvt.status = 'INACTIVE') AND (tbl_category.u_id ='"+ ud +"')");
            recyclelist.DataBind();
       
    }
    protected void recyclelist_ItemCommand(object source, DataListCommandEventArgs e)
    {
     
            ConnectionClass mycon = new ConnectionClass();
            string path = e.CommandArgument.ToString();
            mycon.iud("update tbl_pvt set status='ACTIVE' where path='" + path + "'");
            string user_id = Session["u_id"].ToString();
            mycon.iud("insert into tbl_logs values('You have restored a file from your recycle bin','" + user_id + "','" + DateTime.Now.ToString() + "')");
           fillrecycle();
  
    }
}