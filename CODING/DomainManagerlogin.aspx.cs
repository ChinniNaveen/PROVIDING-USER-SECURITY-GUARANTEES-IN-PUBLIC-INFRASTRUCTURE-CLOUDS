﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DomainManagerlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "Manager" && TextBox2.Text == "Manager")
            {
                Response.Redirect("FileVerification.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect username or password');", true);
            }
        }
        catch
        {
        }
   
    }
}