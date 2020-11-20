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
using System.IO;
using Microsoft.Office.Interop.Word;

public partial class FileCheck : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["iaas"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select choosefile from Fileupload where userid='" + Session["userid"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "choosefile";
            DropDownList1.DataValueField = "choosefile";
            DropDownList1.DataBind();
            con.Close();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select fileprocess1 from Fileprocess",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                //Label2.Text = dr[1].ToString();
                //Label3.Text = dr[4].ToString();
                //Label4.Text = dr[8].ToString();
                //Label5.Text = dr[7].ToString();

            }
            }
        con.Close();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("select 2token from fileprocess2", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox3.Text = dr[0].ToString();
                
            }
        }
        con.Close();
   
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select fileprocess3 from fileprocess3", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox5.Text = dr[0].ToString();

            }
        }
        con.Close();
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StringBuilder str1 = new StringBuilder();
        //StringBuilder str2 = new StringBuilder();
        string files = Server.MapPath(@"~\Upload\" + DropDownList1.SelectedItem.ToString());
        //string[] backnode = Directory.GetFiles(Server.MapPath(@"~\upload"));
        Application word = new Application();
        Document doc = new Document();


        try
        {
            object file = files.ToString();
            object missing = System.Type.Missing;
            doc = word.Documents.Open(ref file,
                        ref missing, ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing);
            string read = string.Empty;

            List<ListItem> arr = new List<ListItem>();
            for (int i = 0; i < doc.Paragraphs.Count; i++)
            {
                {
                    string temp = doc.Paragraphs[i + 1].Range.Text.Trim();
                    if (temp != string.Empty)
                        str1.Append(temp);
                }
            }
            ((_Document)doc).Close();
        }
        catch (Exception)
        { }
        TextBox2.Text = str1.ToString();
    }





    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        

        string pat = Server.MapPath("~/Upload") + "/" + DropDownList1.SelectedItem.ToString();
        byte[] bts = System.IO.File.ReadAllBytes(pat);
        Response.TransmitFile( pat);
        Response.Clear();
        Response.ClearHeaders();
        Response.AddHeader("Content-Type", "Application/octet-stream");
        Response.AddHeader("Content-Length", bts.Length.ToString());
        Response.AddHeader("Content-Disposition", "attachment;   filename="+ pat);
        Response.BinaryWrite(bts);
        Response.Flush();
        Response.End();
  
    }
}
