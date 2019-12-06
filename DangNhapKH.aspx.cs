using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DangNhapKH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {

        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        SqlDataAdapter da = new SqlDataAdapter("select MAKH, TENKH, DIACHIKH, SDTKH, EMAIL, MATKHAU from KHACHHANG where EMAIL='" + txtmail.Text + "'and MATKHAU='" + txtmk.Text + "'", cn);
        DataTable tb = new DataTable();
        da.Fill(tb);
        if (tb.Rows.Count > 0)
        {
            Session["mail"] = txtmail.Text;
            Session["dangnhap"] = "1";

            Session["MaKH"] = tb.Rows[0]["MAKH"];
            Session["TenKh"] = tb.Rows[0]["TENKH"];
            Session["DiaChiKH"] = tb.Rows[0]["DIACHIKH"];
            Session["sdtKH"] = tb.Rows[0]["SDTKH"];
            Session["EmailKH"] = tb.Rows[0]["EMAIL"];

            Response.Redirect("TrangChu.aspx");
            Response.Write("<script>alert('Bạn đã đăng nhập thành công')</script>");

        }
        else Response.Write("<script>alert('Email/Password chưa đúng')</script>");
    }
}