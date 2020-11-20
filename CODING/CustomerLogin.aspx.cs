using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["userid"] = TextBox1.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Register where userid=@userid and password=@password",con);
        cmd.Parameters.AddWithValue("@userid",TextBox1.Text);
        cmd.Parameters.AddWithValue("@password",TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            con.Close();
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Login success.');", true);
            Response.Redirect("FileUpload.aspx");
        }

        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Login failed.');", true);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}