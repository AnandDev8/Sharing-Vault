using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GroupPage : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            ConnectionClass mycon = new ConnectionClass();

            string u_id = Session["u_id"].ToString();
            string g_id = Request.QueryString["g_id"];
            string owner_id = mycon.GetValue("select u_id from g_create where g_id=" + g_id  );
            if (owner_id == u_id)
            {
                DataMember.DataSource = mycon.select("select * from user_regis where status='ACTIVE'");
                DataMember.DataBind();
                
            }
            DataTable dt = mycon.select("select  * from g_create where g_id=" + g_id );
            gname.Text = dt.Rows[0][2].ToString();
            datetime.Text = dt.Rows[0][3].ToString();
            ppic.ImageUrl = dt.Rows[0][4].ToString();
            datadisp();
            msgdisp();
        }
    }
   // protected void del_Click(object sender, EventArgs e)
    //{
     //   ConnectionClass mycon=new ConnectionClass();
      //  string g_id= Request.QueryString["g_id"];
      //  mycon.iud("insert into tbl_addmember values(" + g_id + "," + )
    //}
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string uname = e.CommandArgument.ToString();
        ConnectionClass mycon = new ConnectionClass();
        string gd = Request.QueryString["g_id"];
        string  cnt = mycon.GetValue("select count(*) from tbl_addmember");
        int count = Convert.ToInt32(cnt);
        count = count + 1;
        string gm_id = "GM" + count.ToString();
        mycon.iud("insert into tbl_addmember values('"+gm_id +"'," + gd + ",'" + uname + "','" + DateTime.Now.ToString() + "','ACTIVE')");
        string user_id = Session["u_id"].ToString();
        mycon.iud("insert into tbl_logs values('you have added a new member into your group','" + user_id + "','" + DateTime.Now.ToString() + "')");
        datadisp();
    }
    public void datadisp()
    {   
        string gd=Request.QueryString["g_id"];
        ConnectionClass mycon = new ConnectionClass();
        DataListGMember.DataSource = mycon.select("SELECT user_regis.u_name, user_regis.profilepic FROM user_regis INNER JOIN  tbl_addmember ON user_regis.u_name = tbl_addmember.u_name INNER JOIN g_create ON tbl_addmember.g_id = g_create.g_id WHERE (g_create.g_id = "+gd+") AND (tbl_addmember.status = 'ACTIVE')" );
        DataListGMember.DataBind();

    }
    public void msgdisp()
    {
        ConnectionClass mycon=new ConnectionClass();
        string gid=Request.QueryString["g_id"];
        msgscreen.DataSource=mycon.select("SELECT tbl_addf.p_id,tbl_addf.user_id,tbl_addf.filename, tbl_addf.p_id,tbl_addf.filedisc, tbl_addf.path, user_regis.u_name FROM tbl_addf INNER JOIN user_regis ON tbl_addf.user_id = user_regis.u_id WHERE (tbl_addf.g_id ="+gid +") AND tbl_addf.status='ACTIVE'");
        msgscreen.DataBind();
    }
     
    protected void DataListGMember_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string uname = e.CommandArgument.ToString();
        ConnectionClass mycon = new ConnectionClass();
        mycon.iud("update tbl_addmember set status='INACTIVE' where u_name='" + uname + "'");
        string user_id=Session["u_id"].ToString();
        mycon.iud("insert into tbl_logs values('You have Removed a member from your group','" + user_id + "','" + DateTime.Now.ToString() + "')");
        datadisp();
    }
    protected void Attach_Click(object sender, ImageClickEventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string u_id = Session["u_id"].ToString();
        string g_id = Request.QueryString["g_id"];
        string ext = System.IO.Path.GetExtension(groupupload.FileName);
        string filename = DateTime.Now.ToBinary().ToString();
        string savepath = @"~\GroupContents\" + filename + ext;
        groupupload.SaveAs(Server.MapPath(savepath));
        string cnt = mycon.GetValue("select count(*) from tbl_addf");
        int count = Convert.ToInt32(cnt);
        count = count + 1;
        string pid = "F" + count.ToString();
        mycon.iud("insert into tbl_addf values('"+pid +"','" + u_id + "'," + g_id + ",'" + DateTime.Now.ToString() + "','" + savepath + "','" + filename + "','" + msg.Text + "','ACTIVE')");
        datadisp();
        msgdisp();
    }
    protected void msgscreen_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            string pid = e.CommandArgument.ToString();
            Response.Redirect("public downloader.aspx?p_id=" + pid);
        }
        else if (e.CommandName == "report")
        {
            string p_id = e.CommandArgument.ToString();
            Response.Redirect("reportuser.aspx?p_id=" + p_id);
        }
    }
    protected void msgscreen_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void search_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon=new ConnectionClass();
        DataMember.DataSource = mycon.select("SELECT u_id, fname, mname, lname, u_name, u_password, gender, phone, nationality, time, email, dob, profilepic, status, dp2, discp, personal FROM user_regis WHERE (fname LIKE '" + textsearch.Text + "%')");
        DataMember.DataBind();
    }
}