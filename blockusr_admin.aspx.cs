using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class blockusr_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionClass mycon = new ConnectionClass();
            string gid = Request.QueryString["g_id"];
            DataTable dt = mycon.select("SELECT DISTINCT g_create.g_name, user_regis.u_name, user_regis.email FROM g_create INNER JOIN user_regis ON g_create.u_id = user_regis.u_id WHERE g_create.g_id=" + gid );
            admin.Text = dt.Rows[0][0].ToString();
            user.Text = dt.Rows[0][1].ToString();
            mail.Text = dt.Rows[0][2].ToString();
            //blkgrp();
        }
    }
    protected void block_Click(object sender, EventArgs e)
    {
        string gid=Request.QueryString["g_id"];
        SendEMail em = new SendEMail();
        em.sendEMail("anandsk8@gmail.com", "nathandrake", mail.Text, "your are blocked", msg.Text);
        ConnectionClass mycon = new ConnectionClass();
        mycon.iud("update g_create set status='BLOCKED' where g_id="+gid  );
       // blkgrp();
    }
   
}