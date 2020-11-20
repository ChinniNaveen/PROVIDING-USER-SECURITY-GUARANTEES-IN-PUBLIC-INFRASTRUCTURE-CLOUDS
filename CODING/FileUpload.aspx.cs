using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FileUpload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["userid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        Session["filename"] = FileUpload1.PostedFile.FileName.ToString();
        FileUpload1.SaveAs(Server.MapPath("Upload") + "/" + FileUpload1.FileName.ToString());
 
        SqlCommand cmd = new SqlCommand("insert into Fileupload values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+FileUpload1.PostedFile.FileName.ToString()+"','"+TextBox3.Text+"') ",con);
        int i=cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('File uploaded and forwarded to domain manager .');", true);
   
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('File not uploaded .');", true);
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserFileProcess.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileCheck.aspx");
    }
}