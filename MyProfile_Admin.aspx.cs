﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checking whether user has logged in or not , if the user has not logged in or the session has expired,
        //user must relogin so the user is redirected automatically
        if (Session["FirstName"] != null)
        {
            this.Master.PageH1Text = Session["FirstName"].ToString();
        }

        else
        {
            Response.Redirect("~/Login.aspx");   
        }
       

    }

    
}