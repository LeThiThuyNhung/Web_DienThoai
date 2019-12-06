using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DatHang : System.Web.UI.Page
{
    DataTable tbGioHang = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] == null)
        {
            Response.Write("<script>alert('Giỏ hàng rỗng!')</script>");
        }

        LayRaThongTinKhachHangDaDangNhap();
        tbGioHang = (DataTable)Session["cart"];


        string strnumber = tbGioHang.Compute("Sum(ThanhTien)", "").ToString();
        lbltt.Text =  strnumber;
        gvDatHang.DataSource = tbGioHang;
        gvDatHang.DataBind();
        lblnd.Text = "Ngày lập: " + DateTime.Now.Date.ToShortDateString();
    }

    private void LayRaThongTinKhachHangDaDangNhap()
    {
        //Nếu khách hàng đã đăng nhập
        if (Session["mail"] != null && Session["dangnhap"].ToString() == "1")
        {
            //Lấy thông tin đã lưu khi khách hàng đăng nhập
            lblTenKH.Text = "Tên khách hàng: " + Session["TenKh"].ToString();
            lbldchi.Text = "Đia chỉ: " + Session["DiaChiKH"].ToString();
            lblSDT.Text = "Số điện thoại: " + Session["sdtKH"].ToString();
            lblEmail.Text = "Email: " + Session["EmailKH"].ToString();
        }
    }
    protected void btndhang_Click(object sender, ImageClickEventArgs e)
    {
        int idkh = int.Parse(Session["MaKH"].ToString());
        if (Session["cart"] == null)
        {
            Response.Write("<script>alert('Giỏ hàng rỗng!')</script>");
        }
        int ngay = int.Parse(DateTime.Now.Day.ToString());
        int thang = int.Parse(DateTime.Now.Month.ToString());
        int nam = int.Parse(DateTime.Now.Year.ToString());
        double tt = Convert.ToDouble(lbltt.Text);
        string ntn = nam + "/" + thang + "/" + ngay;
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string sql1 = "insert into DONDATHANG(MAKH, NGAYDH, TONGTIEN, GHICHU) values ('" + idkh + "','" + nam + "/" + thang + "/" + ngay + "','" + tt + "',N'" + txtGhiChu.Text + "')";
        SqlCommand cmd = new SqlCommand(sql1, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        string sql2 = "select MADH from DONDATHANG";
        int idDH = 0;
        SqlDataAdapter da = new SqlDataAdapter(sql2, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow r in dt.Rows)
        {
            idDH = int.Parse(r[0].ToString());
        }
        if (tbGioHang.Rows.Count > 0)
        {
            foreach (DataRow r in tbGioHang.Rows)
            {
                int idSP = int.Parse(r["MaSP"].ToString());
                int SoLuong = int.Parse(r["SoLuong"].ToString());
                double thanhtien = double.Parse(r["ThanhTien"].ToString());
                string sql3 = "insert into CHITIET_DH values('" + idDH + "','" + idSP + "','" + SoLuong + "','" + thanhtien + "')";
                SqlCommand cmd1 = new SqlCommand(sql3, cn);
                cn.Open();
                cmd1.ExecuteNonQuery();
                cn.Close();

                int sl =  int.Parse(Session["soluong"].ToString()) - SoLuong;
                string sql4 = "update SANPHAM set SOLUONG=" + sl + "where MASP =" + idSP;
                SqlCommand cmd2 = new SqlCommand(sql4, cn);
                cn.Open();
                cmd2.ExecuteNonQuery();
                cn.Close();
                
            }

            Session["cart"] = null;
            Response.Redirect("DatHangThanhCong.aspx");
           
        }
 
    }

}
