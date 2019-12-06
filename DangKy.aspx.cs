using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        if (DaTonTaiEmail(txtMail.Text))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Email này đã được đăng ký. Bạn vui lòng điền email khác để đăng ký.');", true);
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into KHACHHANG(TENKH, MATKHAU, SDTKH, DIACHIKH, EMAIL) values(N'" + txtTen.Text + "','" + txtMK.Text + "','" + txtSDT.Text + "','" + txtDChi.Text + "','" + txtMail.Text + "')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("DangNhapKH.aspx");
        }
        cn.Close();
        txtTen.Text = "";
        txtSDT.Text = "";
        txtMK.Text = "";
        txtDChi.Text = "";
    }

    private bool DaTonTaiEmail(string email)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        DataTable dt = new DataTable();
        string sql = "select * from KHACHHANG where EMAIL='" + txtMail.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }
}