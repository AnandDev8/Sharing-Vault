using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class public_downloader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectionClass mycon=new ConnectionClass();
        string pid = Request.QueryString["p_id"];
        DataTable dt = mycon.select("select * from tbl_addf where p_id='" + pid +"'");
        filename.Text = dt.Rows[0][5].ToString();
        disc.Text = dt.Rows[0][6].ToString();
        img.ImageUrl = dt.Rows[0][4].ToString();
        down.NavigateUrl = dt.Rows[0][4].ToString();
    }
}