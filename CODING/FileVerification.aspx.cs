using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FileVerification : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["filename"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Filestatus values('"+Label1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+DropDownList1.SelectedItem.ToString()+"','"+DropDownList2.SelectedItem.ToString()+"','"+DropDownList3.SelectedItem.ToString()+"') ", con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if(i==1)
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('File verified successfully .');", true);
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('File not uploaded .');", true);

    }
}