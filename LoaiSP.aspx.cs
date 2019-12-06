using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoaiSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string s = Request.QueryString["maloai"];
        string strcmd = "select MASP, TenSP, GiaBan, Anh, '~/ChiTietSanPham.aspx?masp ='+ cast(MASP as nvarchar(50)) as LK from SANPHAM where MaLoai=" + Convert.ToInt32(Request.QueryString["maloai"]).ToString() + " group by MASP, TENSP, ANH, GIABAN";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "LSP");
        DataList2.DataSource = ds.Tables["LSP"];
        DataList2.DataBind();

        string sql = "select MaLoai, TenLoai from LoaiSP where MaLoai=" + Convert.ToInt32(Request.QueryString["maloai"]).ToString();
        SqlDataAdapter da1 = new SqlDataAdapter(sql, cn);
        da1.Fill(ds, "TL");
        DataList3.DataSource = ds.Tables["TL"];
        DataList3.DataBind();
    }
}