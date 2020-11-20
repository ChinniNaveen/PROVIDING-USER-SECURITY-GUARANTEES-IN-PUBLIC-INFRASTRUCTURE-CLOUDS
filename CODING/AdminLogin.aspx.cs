using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
            {
                Response.Redirect("TPAfileVerification.aspx");
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