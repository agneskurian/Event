using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class User_userbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spbooking", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@username",Session["username"].ToString());
        cmd.Parameters.Add("@eventtype",DropDownList1.SelectedItem.Text );
        cmd.Parameters.Add("@no_seat", txtseat.Text);
        cmd.Parameters.Add("@venue", txtvenue.Text);
        cmd.Parameters.Add("@date", txtdate.Text);
        cmd.Parameters.Add("@time", txtdate.Text);
        cmd.ExecuteNonQuery();
        //clear();
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}