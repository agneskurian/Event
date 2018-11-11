using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class User_view_decoration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spviewdecoration", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@username", Session["username"].ToString());
        cmd.Parameters.Add("@Decorationid", GridView1.SelectedRow.Cells[0].Text);
        //cmd.Parameters.Add("@bookingid", DropDownList1.SelectedItem.Value.ToString());
        cmd.ExecuteNonQuery();

    }
}