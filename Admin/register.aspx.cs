﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;
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
        if (lblcaptua.Text == txtcap.Text)
        {
            Response.Write("<script>alert('Successfully Registerd')</script>");
        }
        else
        {
            txtcap.Text = "";
            generate_captua();
        }
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
        cmd1.ExecuteNonQuery();
        cmd.ExecuteNonQuery();
        //clear();
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    
}