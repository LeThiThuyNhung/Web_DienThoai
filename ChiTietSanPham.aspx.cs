using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ChiTietSanPham : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["cart"] != null)
            {
                tbGioHang = Session["cart"] as DataTable;

            }
            else
            {
                tbGioHang.Rows.Clear();
                tbGioHang.Columns.Clear();
                tbGioHang.Columns.Add("MaSP", typeof(int));
                tbGioHang.Columns.Add("TenSP", typeof(string));
                tbGioHang.Columns.Add("SoLuong", typeof(int));
                tbGioHang.Columns.Add("Mau", typeof(string));
                tbGioHang.Columns.Add("DonGia", typeof(double));
                tbGioHang.Columns.Add("ThanhTien", typeof(double), "SoLuong * DonGia");
                Session["cart"] = tbGioHang;
            }
            load_data();

           
        }
    }
    private void load_data()
    {
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string strcmd = "select * from SANPHAM where MASP=" + Convert.ToInt32(Request.QueryString["masp"]).ToString();
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "sp");
        dlsSPham.DataSource = ds.Tables["sp"];
        dlsSPham.DataBind();
    }

    protected void dlsSPham_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "them")
        {
            if (Session["mail"] == null)
            {
                Response.Redirect("DangNhapKH.aspx");
            }
            else
            {
                int masp = int.Parse(dlsSPham.DataKeys[e.Item.ItemIndex].ToString());
                string tensp = ((Label)e.Item.FindControl("lbten")).Text;
                double gia = double.Parse(((Label)e.Item.FindControl("lbgban")).Text);
                string mau = ((DropDownList)e.Item.FindControl("drlMau")).SelectedValue;

                int sl = int.Parse(((TextBox)e.Item.FindControl("txtSL")).Text);


                foreach (DataRow row in tbGioHang.Rows)
                {
                    if ((int)row["MASP"] == masp && (string)row["Mau"] == mau)
                    {
                        row["SOLUONG"] = (int)row["SoLuong"] + 1;
                        goto GioHang;
                    }
                }

                tbGioHang.Rows.Add(masp, tensp, sl, mau, gia);
            GioHang:
                Session["GioHang"] = tbGioHang;
                Response.Write("<script>alert('Đã thêm vào giỏ hàng!')</script>");
            }
        }
        else
        {
            if (e.CommandName == "mua")
            {
                if (Session["mail"] == null)
                {
                    Response.Redirect("DangNhapKH.aspx");
                }
                else
                {
                    int masp = int.Parse(dlsSPham.DataKeys[e.Item.ItemIndex].ToString());
                    string tensp = ((Label)e.Item.FindControl("lbten")).Text;
                    double gia = double.Parse(((Label)e.Item.FindControl("lbgban")).Text);
                    string mau = ((DropDownList)e.Item.FindControl("drlMau")).SelectedValue;
                    Session["soluong"] = int.Parse(((Label)e.Item.FindControl("lbttrang")).Text);
                    int sl = int.Parse(((TextBox)e.Item.FindControl("txtSL")).Text);


                    foreach (DataRow row in tbGioHang.Rows)
                    {
                        if ((int)row["MASP"] == masp && (string)row["Mau"] == mau)
                        {
                            row["SOLUONG"] = (int)row["SoLuong"] + 1;
                            goto GioHang;
                        }
                    }

                    tbGioHang.Rows.Add(masp, tensp, sl, mau, gia);
                GioHang:
                    Session["GioHang"] = tbGioHang;
                    Response.Redirect("GioHang.aspx");
                }
            }
        }
    }

    protected void dlsSPham_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DropDownList drlmau = (DropDownList)e.Item.FindControl("drlMau");

        TextBox txtsl = (TextBox)e.Item.FindControl("txtSL");
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string s = Request.QueryString["masp"];
        string strcmd = " select TenMau, '~/ChiTietSanPham.aspx?masp ='+ cast(sp.MASP as nvarchar(50)) as LK from SANPHAM sp, MAU m, CT_SANPHAM ctsp where sp.MASP = ctsp.MaSP and m.MaMau = ctsp.MaMau and sp.MASP=" + s.ToString();
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataTable dataTable = new DataTable();
        da.Fill(dataTable);
        drlmau.DataSource = dataTable;
        drlmau.DataTextField = "TenMau";
        drlmau.DataValueField = "TenMau";
        drlmau.DataBind();

    }

}