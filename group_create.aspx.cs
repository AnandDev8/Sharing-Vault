using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class group_create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                        fillList();
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string savePath;
        ConnectionClass mycon = new ConnectionClass();
        //~\\imgs\\sv.png
        if (FileUpload1.HasFile)
        {
            string extn = System.IO.Path.GetExtension(FileUpload1.FileName);
            string fileName = DateTime.Now.ToBinary().ToString();
            savePath = @"~\groups\" + fileName + extn;
            FileUpload1.SaveAs(Server.MapPath(savePath));
        }else
            savePath=@"\imgs\sv.png";
        string u_name = mycon.GetValue("select max(username) from Login");
        string u_id = Session["u_id"].ToString();
        string ct = mycon.GetValue("select count(*) from g_create");
        int count = Convert.ToInt32(ct);
        count = count + 1;
        string g_id = "G" + count.ToString();
        mycon.iud("insert into g_create values('"+ g_id +"','" + u_id   +"','" + Group_name.Text + "','" + DateTime.Now.ToString() + "','"+ savePath +"','" + Group_type.Text + "','" + Group_disc.Text + "','ACTIVE')");
        //string u_id=Session["u_id"].ToString();
        string user_id = Session["u_id"].ToString();
        mycon.iud("insert into tbl_logs values('You have  created a new group','" + user_id + "','" + DateTime.Now.ToString() + "')");
        fillList();
        clear();
    }


    public void fillList()
    {
        string u_id = Session["u_id"].ToString();
        ConnectionClass mycon = new ConnectionClass();
        DataList1.DataSource = mycon.select("select * from g_create where u_id = '" + u_id + "' AND status='ACTIVE'");

        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string gid = e.CommandArgument.ToString();
        Response.Redirect("GroupPage.aspx?g_id='"+gid +"'");
    }
    public void clear()
    {
        Group_disc.Text = "";
        Group_name.Text = "";
        Group_type.Text = "";
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}