using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class user_regis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            user.Visible = false;
            birthday.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        string savePath;
        string savePath2;
        if (propic.HasFile)
        {
            string extn = System.IO.Path.GetExtension(propic.FileName);
            string fileName = DateTime.Now.ToBinary().ToString();
            savePath = @"~\imgs\" + fileName + extn;
            propic.SaveAs(Server.MapPath(savePath));
        }
        else
            savePath = @"\imgs\sv.png";
        if (Background.HasFile)
        {
            string extn = System.IO.Path.GetExtension(Background.FileName);
            string fileName = DateTime.Now.ToBinary().ToString();
            savePath2 = @"~\imgs\" + fileName + extn;
            Background.SaveAs(Server.MapPath(savePath2));
        }
        else
            savePath2 = @"\imgs\sv.png";
        string count = mycon.GetValue ("select count(*) from user_regis where u_name='" + uname.Text + "'");
        int c = Convert.ToInt32(count);
        if (c == 0)
        {
            string ct = mycon.GetValue("select count(*) from user_regis");
            int cnt = Convert.ToInt32(ct);
            cnt = cnt + 1;
            string uid = "u" + cnt.ToString();
            mycon.iud("insert into user_regis values ('"+uid +"','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + uname.Text + "','" + password.Text + "','" + gender.Text + "','" + number.Text + "','" + nation.Text + "','" + DateTime.Now.ToString() + "','" + mail.Text + "','" + date.Text + "','" + savePath + "','ACTIVE','" + savePath2 + "','" + discrip.Text + "','" + personal.Text + "')");
            mycon.iud("insert into login values('" + uname.Text + "','" + password.Text + "','user','active')");
            //Response.Write("<script>alert('Saved');</script>");
            Session["u_id"] = mycon.GetValue("select max(u_id) from user_regis");
            string user_id = Session["u_id"].ToString();
            mycon.iud("insert into tbl_category values('" + user_id + "','Text','" + DateTime.Now.ToString() + "')");
            mycon.iud("insert into tbl_category values('" + user_id + "','Audio','" + DateTime.Now.ToString() + "')");
            mycon.iud("insert into tbl_category values('" + user_id + "','Video','" + DateTime.Now.ToString() + "')");
            mycon.iud("insert into tbl_category values('" + user_id + "','Picture','" + DateTime.Now.ToString() + "')");
            mycon.iud("insert into tbl_logs values('You Have Successfully registered to Sharing vault','" + user_id + "','" + DateTime.Now.ToString() + "')");
            Response.Redirect("pvt_files.aspx");
            clear();
        }
        else
        {
            user.Visible = true;
        }

    }
    public void clear()
    {
        fname.Text = "";
        lname.Text = "";
        mname.Text = "";
        uname.Text = "";
        password.Text = "";
        gender.Text = "";
        nation.Text = "";
        date.Text = "";
    }
    protected void date_TextChanged(object sender, EventArgs e)
    {
        birthday.Visible = true;
    }

    protected void birthday_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = birthday.SelectedDate.ToShortDateString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        birthday.Visible = true;
    }
}