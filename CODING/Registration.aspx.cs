using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
try
        {
            TextBox1.Text = "CU00" + Convert.ToString(GetUserid());
        }
        catch
        {

        }

    }
    public int GetUserid()
    {
        try
        {
            int userid = 0;
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Register", con);
            userid = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            return userid;
        }
        catch
        {
            return 0;
        }
        finally
        {
            con.Close();
        }

    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        RadioButtonList1.SelectedItem.Text = "";
        DropDownList1.SelectedItem.Text = "";
    }

    protected void  Button1_Click(object sender, EventArgs e)
       {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Register values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+RadioButtonList1.SelectedItem.Text+"','"+DropDownList1.SelectedItem.ToString()+"','"+TextBox7.Text+"')",con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Register Successfully.');", true);
            clear();
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Register failed.');", true);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerLogin.aspx");

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}

    