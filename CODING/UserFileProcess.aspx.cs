using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class UserFileProcess : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["filename"].ToString();
    }
       

    private void FillCapctha()
    {
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
FillCapctha();
    {
        try
        {
            Random random = new Random();
            string combination = "01234555522224444111100000123455552222444401111";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            TextBox4.Text = Session["captcha"].ToString();
           
        }
        catch
        {

            throw;
        }
    }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
       FillCapctha();
    {
        try
        {
            Random random = new Random();
            string combination = "010000234555522224444111101111";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            TextBox6.Text = Session["captcha"].ToString();
           
        }
        catch
        {

            throw;
        }
    }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList5.SelectedItem.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('plsss fill.');", true);
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into fileprocess2 values('" + RadioButtonList5.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "') ", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Updated.');", true);
        }
  
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
 FillCapctha();
    {
        try
        {
            Random random = new Random();
            string combination = "012345555222244441111000001111";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            TextBox8.Text = Session["captcha"].ToString();
           
        }
        catch
        {

            throw;
        }
    }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RadioButtonList7.SelectedItem.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Please fill.');", true);
        else
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into fileprocess3 values('" + RadioButtonList7.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "') ", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Updated.');", true);
        }
  

    }

    protected void Buttons_Click(object sender, EventArgs e)
    {
        if (RadioButtonList9.SelectedItem.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('plsss fill all fields.');", true);

        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Fileprocess values('" + RadioButtonList9.SelectedItem.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "') ", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Updated.');", true);
        }
  
    }
}


