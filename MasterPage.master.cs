using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string sql = "select  l.MALOAI, TENLOAI , '~/LoaiSP.aspx?maloai = ' + cast(l.MALOAI as nvarchar(50)) as LK from LOAISP l, SANPHAM sp where l.MALOAI = sp.MALOAI group by TENLOAI, l.MALOAI";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataSet ds = new DataSet();

        da.Fill(ds, "LSP");
        DataList1.DataSource = ds.Tables["LSP"];
        DataList1.DataBind();

        string sql1 = "select top 4 MASP, TENSP, ANH, GIABAN, '~/ChiTietSanPham.aspx?masp ='+ cast(MASP as nvarchar(50)) as LK  from  SANPHAM  group by MASP, TENSP, ANH, GIABAN ";
        SqlDataAdapter da1 = new SqlDataAdapter(sql1, cn);


        da1.Fill(ds, "sph");
        DataList2.DataSource = ds.Tables["sph"];
        DataList2.DataBind();
        //if (Session["cart"] == null)
        //    lbsl.Text = "0";
        //else if (Session["cart"] != null)
            //lbsl.Text = Session["SL"].ToString();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/GioHang.aspx");
    }

    protected void btnsearch_Click(object sender, ImageClickEventArgs e)
    {
        if (txtsearch.Text == "")
        {

            Response.Write("<script>alert('Bạn Phải Nhập Từ Khoá Trước Khi Tìm!')</script>");

        }

        else
        {
            string tensp = txtsearch.Text;

            Response.Redirect("KQTimKiem.aspx?tensp=" + tensp);
        }
    }

    protected void btnTK_Click(object sender, ImageClickEventArgs e)
    {
        if (txtTK.Text == "")
        {

            Response.Write("<script>alert('Bạn Phải Nhập Từ Khoá Trước Khi Tìm!')</script>");

        }

        else
        {

            string tensp = txtTK.Text;


            int GiaTu = int.Parse(drlgiatu.SelectedItem.Value.ToString());

            int GiaDen = int.Parse(drlgiaden.SelectedItem.Value.ToString());

            Response.Redirect("KQTim.aspx?tensp=" + tensp + "&GiaTu=" + GiaTu + "&GiaDen=" + GiaDen);
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Status = "301 Moved Permanently";
        Response.AddHeader("Location", "https://viettelpost.com.vn");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Status = "301 Moved Permanently";
        Response.AddHeader("Location", "https://ghn.vn/");
    }
}
