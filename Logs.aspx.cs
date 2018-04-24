﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectionClass mycon = new ConnectionClass();
        loglist.DataSource = mycon.select("SELECT tbl_logs.events, tbl_logs.time, user_regis.u_name FROM tbl_logs INNER JOIN user_regis ON tbl_logs.u_id = user_regis.u_id");
        loglist.DataBind();
    }
}