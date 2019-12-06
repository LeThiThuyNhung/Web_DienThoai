using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_DangNhapAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        SqlDataAdapter da = new SqlDataAdapter("select * from TAIKHOAN_NV where USERNAME='" + txtU.Text + "'and PASSWORD='" + txtmk.Text + "'", cn);
        DataTable tb = new DataTable();
        da.Fill(tb);
        if (tb.Rows.Count > 0)
        {
            Session["name"] = txtU.Text;
            Session["dangnhap"] = "1";
            Response.Redirect("admin.aspx");

        }
        else Response.Write("<script>alert('Username/Password chưa đúng')</script>");
    }
    protected void txtU_TextChanged(object sender, EventArgs e)
    {

    }
}