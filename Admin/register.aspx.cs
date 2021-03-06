﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            generate_captua();
        }
    }
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    private String RandomString(int size, bool lowercase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);

        }
        if (lowercase)
        {
            return builder.ToString().ToLower();
        }
        return builder.ToString();

    }
    protected void generate_captua()
    {
        StringBuilder builder = new StringBuilder();
        builder.Append(RandomString(3, true));
        builder.Append(RandomNumber(100, 999));
        builder.Append(RandomString(2, false));
        lblcaptua.Text = builder.ToString();
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        generate_captua();
    }
    protected int id_generated()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 3);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            id = Int32.Parse(dt.Rows[i][0].ToString());
        }
        id = id + 1;

        return id;

    }


   protected void Button1_Click(object sender, EventArgs e)
    {
     if (Page.IsValid)
        {

            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("splogin", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 0);
            cmd.Parameters.Add("@loginid", id_generated());
            cmd.Parameters.Add("@username", txtuname.Text);
            cmd.Parameters.Add("@passwd", txtpass.Text);
            cmd.Parameters.Add("@usertype", "Guest");

            SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 0);
            cmd1.Parameters.Add("@regid", id_generated());
            cmd1.Parameters.Add("@username", txtuname.Text);
            cmd1.Parameters.Add("@address", txtaddress.Text);
            cmd1.Parameters.Add("@city", txtcity.Text);
            cmd1.Parameters.Add("@email", txtemail.Text);
            cmd1.Parameters.Add("@phone", txtphn.Text);
            cmd1.Parameters.Add("@password", txtpass.Text);


            SqlCommand cmd2 = new SqlCommand("splogin", obj.con);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add("@flag", 4);
            cmd2.Parameters.Add("@username", txtuname.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd2);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script>alert('you are already registerd please login')</script>");


            }

            else
            {

                cmd1.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                Response.Redirect("loginUser.aspx");
            }
            clear();

        }
    }
    protected void clear()
    {
        txtuname.Text = "";
        txtaddress.Text = "";
        txtcity.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtphn.Text = "";
        txtpass.Text = "";
        txtcpass.Text = "";


    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
   
}
    
       
  
    
//protected void Button1_Click(object sender, EventArgs e)
//{

//}
