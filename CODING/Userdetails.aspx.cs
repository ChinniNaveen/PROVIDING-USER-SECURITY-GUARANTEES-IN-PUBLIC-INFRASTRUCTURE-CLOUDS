using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Userdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select name from Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "name";
            DropDownList1.DataBind();
            con.Close();
        }
   

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Register where name='"+DropDownList1.SelectedItem.ToString()+"'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            while (dr.Read())
            {
                Label1.Text = dr[0].ToString();
                Label2.Text = dr[1].ToString();
                Label3.Text = dr[4].ToString();
                Label4.Text = dr[8].ToString();
                Label5.Text = dr[7].ToString();

            }
            }
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}