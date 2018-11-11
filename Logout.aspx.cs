﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
  
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        string redirectUrl = FormsAuthentication.LoginUrl + "?ReturnUrl=~/Admin/Default3.aspx";
        FormsAuthentication.SignOut();
        Response.Redirect(redirectUrl);

    }
}