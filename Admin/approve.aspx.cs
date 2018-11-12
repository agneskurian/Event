﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_approve : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("~/Admin/home.aspx");
        }
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcart", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@Bookingid",Request.QueryString["id"].ToString());
        cmd.ExecuteNonQuery();

           
    }
}