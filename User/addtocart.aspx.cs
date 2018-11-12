﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("~/Admin/home.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcart", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@Productid", Request.QueryString["id"].ToString());
        cmd.Parameters.Add("@username",Session["username"].ToString());
        cmd.Parameters.Add("@status", "0");
        Response.Write("<script>alert('Submitted Successfully')</script>");
        cmd.ExecuteNonQuery();
    
    }
}