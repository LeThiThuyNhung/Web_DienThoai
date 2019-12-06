using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_QuanLyTKNV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);

        string strcmd = "insert into TAIKHOAN_NV(MANV, USERNAME, PASSWORD) values('" + drlma.SelectedValue.ToString() + "','" + txtten.Text + "','" + txtmk.Text + "')";
        SqlCommand cmd = new SqlCommand(strcmd, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        txtten.Text = "";
        txtmk.Text = "";
    }
    protected void btnhuy_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txtmk.Text = "";
    }
    protected void gvTK_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int manv = int.Parse(gvTK.DataKeys[e.RowIndex].Value.ToString());
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
    }
    protected void gvTK_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int manv = int.Parse(gvTK.DataKeys[e.RowIndex].Value.ToString());
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
    }
}