using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public SqlConnection con;
    public void getconnect()
    {
        String str = ConfigurationManager.ConnectionStrings["EventConnectionString"].ConnectionString;
        con=new SqlConnection(str);
        con.Open();
    }
	//
		// TODO: Add constructor logic here
		//
	
}