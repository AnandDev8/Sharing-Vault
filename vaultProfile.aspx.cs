using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class vaultProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Request.QueryString["u_id"];
        ConnectionClass mycon = new ConnectionClass();
        DataTable dt=mycon.select("select * from user_regis where u_id=" + uid  );
        backimage.ImageUrl = dt.Rows[0][14].ToString();
        proimg.ImageUrl = dt.Rows[0][12].ToString();
        fname.Text = dt.Rows[0][1].ToString();
        mname.Text = dt.Rows[0][2].ToString();
        lname.Text = dt.Rows[0][3].ToString();
        username.Text = dt.Rows[0][4].ToString();
        dateofb.Text = dt.Rows[0][11].ToString();
        disc.Text = dt.Rows[0][15].ToString();
        tint.Text = dt.Rows[0][16].ToString();


    }
}