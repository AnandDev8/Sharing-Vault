using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class profilepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            filldt();
            password.Enabled = false;
            cpassword.Enabled = false;
        }
    }
    protected void savechanges_Click(object sender, EventArgs e)
    {
        
       
    }
    public void filldt()
    {
        ConnectionClass mycon = new ConnectionClass();
        string u_id = Session["u_id"].ToString();
        if (u_id == "")
        {
            Response.Redirect("LoginS.aspx");
        }
        else
        {
            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
            DataTable dt = mycon.select("select * from user_regis where u_id='" + u_id + "'");
            fname.Text = dt.Rows[0][1].ToString();
            mname.Text = dt.Rows[0][2].ToString();
            lnames.Text = dt.Rows[0][3].ToString();
            uname.Text = dt.Rows[0][4].ToString();
            proimg.ImageUrl = dt.Rows[0][12].ToString();
            backimage.ImageUrl = dt.Rows[0][14].ToString();
            textint.Text = dt.Rows[0][16].ToString();
            textdisc.Text = dt.Rows[0][15].ToString();
            email.Text = dt.Rows[0][10].ToString();
        }
    }

    protected void save_Click(object sender, EventArgs e)
    {
        string savePath;
        string savepath2;
        string u_id = Session["u_id"].ToString();
        ConnectionClass mycon = new ConnectionClass();
        //~\\imgs\\sv.png
        if (backup.HasFile)
        {
            string extn = System.IO.Path.GetExtension(backup.FileName);
            string fileName = DateTime.Now.ToBinary().ToString();
            savePath = @"~\imgs\" + fileName + extn;
            backup.SaveAs(Server.MapPath(savePath));
            mycon.iud("update user_regis set dp2='" + savePath + "' where u_id='"+ u_id +"'");
        }
        else
            savePath = @"\imgs\sv.png";
        if (frontimage.HasFile)
        {
            string extn = System.IO.Path.GetExtension(frontimage.FileName);
            string fileName = DateTime.Now.ToBinary().ToString();
            savepath2 = @"~\imgs\" + fileName + extn;
            frontimage.SaveAs(Server.MapPath(savepath2));
            mycon.iud("update user_regis set profilepic='" + savepath2 + "'where u_id='"+u_id+"'" );
        }
        else
            savepath2 = @"\imgs\sv.png";
        
        // mycon.iud("insert into tbl_profile values(" + u_id + ",'" + savePath + "','" + textdisc + "','" + textint + "')");
        mycon.iud("update user_regis set fname='" + fname.Text + "',mname='" + mname.Text + "',lname='" + lnames.Text + "',email='" + email.Text + "', discp='" + textdisc.Text + "',personal='" + textint.Text + "' where u_id='" + u_id+"'");
        mycon.iud("insert into tbl_logs values('You have updated your profile','" + u_id + "','" + DateTime.Now.ToString() + "')");
        DataTable dt = mycon.select("select * from user_regis where u_id='"+u_id+"'" );
        backimage.ImageUrl = dt.Rows[0][14].ToString();
        textdisc.Text = dt.Rows[0][15].ToString();
        textint.Text = dt.Rows[0][16].ToString();
        proimg.ImageUrl = dt.Rows[0][12].ToString();
    }
    protected void check_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string uid = Session["u_id"].ToString();
        string uname=mycon.GetValue("select u_name from user_regis where u_id='"+uid+"'");
        string checkpassw = mycon.GetValue("select password from Login where username='" + uname + "'");
        if (pass.Text == checkpassw)
        {
            password.Enabled = true;
            cpassword.Enabled = true;
        }

    }
    protected void setpass_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string uid = Session["u_id"].ToString();
        string uname=mycon.GetValue("select u_name from user_regis where u_id='"+uid+"'");
        mycon.iud("update Login set password='" + password.Text + "' where username='" + uname + "'");
    }
}