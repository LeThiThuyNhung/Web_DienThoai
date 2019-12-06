using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class TrangChu : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();
    static PagedDataSource p = new PagedDataSource();
    public static int intSTT;
    public static int trang_thu = 0;
    public void load_data()
    {
        DataTable dt = new DataTable();
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string sql = "select  * from SANPHAM ";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        da.Fill(dt);
        p.DataSource = dt.DefaultView;
        p.PageSize = 9;
        p.CurrentPageIndex = trang_thu;
        p.AllowPaging = true;

        btntdau.Enabled = true; btntrc.Enabled = true; btnsau.Enabled = true; btntcuoi.Enabled = true;

        if (p.IsFirstPage == true)//neu la dau.
        {
            btntdau.Enabled = false;//neu la trang dau thi hai nut mo di.
            btntrc.Enabled = false;
            btnsau.Enabled = true;//Hai nut sau sang len.
            btntcuoi.Enabled = true;
        }

        if (p.IsLastPage == true)//neu la cuoi
        {
            btntdau.Enabled = true;//nguoc lai
            btntrc.Enabled = true;
            btnsau.Enabled = false;
            btntcuoi.Enabled = false;
        }

        txttrang.Text = (trang_thu + 1) + " / " + p.PageCount;
        dlspham.DataSource = p;
        dlspham.DataBind();



    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string sql = "select MASP, TENSP, ANH, GIABAN, '~/ChiTietSanPham.aspx?masp ='+ cast(MASP as nvarchar(50)) as LK  from  SANPHAM  group by MASP, TENSP, ANH, GIABAN ";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        dlspham.DataSource = ds.Tables["a"];
        dlspham.DataBind();
        load_data();

    }
    protected void btntdau_Click(object sender, EventArgs e)
    {
        trang_thu = 0;
        load_data();
    }
    protected void btntrc_Click(object sender, EventArgs e)
    {
        trang_thu--;
        load_data();
    }
    protected void btnsau_Click(object sender, EventArgs e)
    {
        trang_thu++;
        load_data();
    }
    protected void btntcuoi_Click(object sender, EventArgs e)
    {
        trang_thu = p.PageCount - 1;
        load_data();
    }
}