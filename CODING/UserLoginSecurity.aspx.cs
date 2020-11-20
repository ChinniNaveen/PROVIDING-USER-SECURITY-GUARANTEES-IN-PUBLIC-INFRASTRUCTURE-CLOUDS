using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

public partial class UserLoginSecurity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        FillCapctha();
        //Label1.Text = Session["userid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into securitykey values('" + TextBox1.Text + "')", con);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FillCapctha();
           {
        try
        {
            Random random = new Random();
            string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            TextBox1.Text = Session["captcha"].ToString();
        
        }
        catch
        {

            throw;
        }
    }
  
   }

    private void FillCapctha()
    {
        
    }


}
    
         