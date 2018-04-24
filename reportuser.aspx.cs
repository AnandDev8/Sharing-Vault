using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reportuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string pid = Request.QueryString["p_id"];
        string ud = Session["u_id"].ToString();
        from.Text = mycon.GetValue("select u_name from user_regis where u_id='" + ud+"'");
        mail.Text = mycon.GetValue("select email from user_regis where u_id='" + ud +"'");
       
    }
    protected void reprt_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string pid = Request.QueryString["p_id"];
        string ud = Session["u_id"].ToString();
        string user_id = mycon.GetValue("select user_id from tbl_addf where p_id='" + pid +"'");
        string toname = mycon.GetValue("select u_name from user_regis where u_id='" + user_id +"'");
        string cnt = mycon.GetValue("select count(*) from tbl_addf");
        int count = Convert.ToInt32(cnt);
        count = count + 1;
        string r_id = "R" + count.ToString();
        mycon.iud("insert into tbl_report values('"+r_id +"','" + from.Text + "','" + toname + "','" + msg.Text + "','" + DateTime.Now.ToString() + "','" + pid + "' ,'ACTIVE')");
        mycon.iud("insert into tbl_logs values('Abuse reported','" + user_id + "','" + DateTime.Now.ToString() + "')");
       // mycon.iud("update tbl_report set status='INACTIVE' where p_id="+pid );
    }
}