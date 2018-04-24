using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class textfolder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
        ConnectionClass mycon=new ConnectionClass();
        if (!IsPostBack)
        {

            if (Request.QueryString["c_id"].ToString() != "5")
            {
                pass.Visible = false;
                passs.Visible = false;
            }
            
            string c_id = Request.QueryString["c_id"];

            string type = mycon.GetValue("select c_name from tbl_category where c_id=" + c_id);
            if (type == "Text")
            {
                pass.Visible = true;
                passs.Visible = true;
                string cname = mycon.GetValue("select c_name from tbl_category where c_id=" + c_id);
                folname.Text = cname;
                //filldata();
                fillfolderdata();
            }
            else
            {
                string cname = mycon.GetValue("select c_name from tbl_category where c_id=" + c_id);
                folname.Text = cname;
                //filldata();
                fillfolderdata();
            }
        }
    }
    //public void filldata()
    //{
    //    ConnectionClass mycon = new ConnectionClass();
     //   string c_id=Request.QueryString["c_id"];
      //  DataFolder.DataSource = mycon.select("select * from tbl_category where c_id="+c_id);
       // DataFolder.DataBind();
   // }
    protected void addfile_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        SecureFile sf=new SecureFile();
        string cid=Request.QueryString["c_id"];
        string type=mycon.GetValue("select c_name from tbl_category where c_id=" + cid);
        if (type == "Text")
        {
            string ext = System.IO.Path.GetExtension(folderupload.FileName);
            string filename = DateTime.Now.ToBinary().ToString();
            string savepath = @"~\folder\" + filename + ext;
            folderupload.SaveAs(Server.MapPath(savepath));
            string save = MapPath("encrypt");
            string source = MapPath("folder");
            sf.encrypt(filename+ext, source+"//"+filename+ext, passs.Text);
            mycon.iud("insert into tbl_pvt values(" + cid + ",'" + savepath + "','" + filename + "','"+ sname.Text +"','" + DateTime.Now.ToString() + "','ACTIVE')");
        }
        else
        {
            string ext = System.IO.Path.GetExtension(folderupload.FileName);
            string filename = DateTime.Now.ToBinary().ToString();
            string savepath = @"~\folder\" + filename + ext;
            folderupload.SaveAs(Server.MapPath(savepath));
            mycon.iud("insert into tbl_pvt values(" + cid + ",'" + savepath + "','" + filename + "','" + sname.Text + "','" + DateTime.Now.ToString() + "','ACTIVE')");
        }
        Response.Write("INSERTED");
        string user_id=Session["u_id"].ToString();
        mycon.iud("insert into tbl_logs values('you have added file into your user folder','" + user_id + "','" + DateTime.Now.ToString() + "')");
        fillfolderdata();
        
    }
    public void fillfolderdata()
    {
        ConnectionClass mycon = new ConnectionClass();
        string cid = Request.QueryString["c_id"];
        DataTable dt = mycon.select("select * from tbl_pvt where status='ACTIVE' AND c_id=" + cid);
        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    string url = dt.Rows[i]["path"].ToString();
        //    string ext = Path.GetExtension(url);
        //    if (ext == ".txt")
        //    {
        //        dt.Rows[i]["path"] = "~/imgs/sv.png";
        //    }
        //}
        DataFolder.DataSource = dt;
        DataFolder.DataBind();
    }
    protected void DataFolder_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        if (e.CommandName == "delete")
        {
            string path = e.CommandArgument.ToString();
            mycon.iud("update tbl_pvt set status='INACTIVE' where path='" + path + "'");
            string user_id = Session["u_id"].ToString();
            mycon.iud("insert into tbl_logs values('You have deleted a file from your Private folder','" + user_id + "','" + DateTime.Now.ToString() + "')");
        }
        else if (e.CommandName == "view")
        {
            string path = e.CommandArgument.ToString();
          //  done.NavigateUrl = path;
            string cd = Request.QueryString["c_id"];
            string u_id = mycon.GetValue("select u_id from tbl_category where c_id=" + cd);
            string cdd = mycon.GetValue("select c_id from tbl_category where u_id='" + u_id + "'AND c_name='Text'");
            if (Request.QueryString["c_id"].ToString() != cdd )
            {
                Response.Redirect(path);
            }
            else
            {
                SecureFile sf = new SecureFile();
                string p = MapPath(path);
                int index=path.IndexOf('-');
                int len=path.Length;
                string fname=path.Substring(index,len-index);
                if (passs.Text != "")
                {
                   string pth =sf.decrypt(fname, p, passs.Text);
                  // Response.Redirect(pth);
                   if (pth != "")
                   {
                       string ext = Path.GetExtension(fname);
                       Response.Redirect("~/folder/" + fname + "_decrypted" + ext);
                   }
                   else
                   {
                       Response.Write("INVALID PASSWORD");
                   }
                }
            }
        }
               
        fillfolderdata();
    }
}