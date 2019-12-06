using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class GioHang : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();

    private void load_data()
    {
        if (Session["cart"] == null)
        {
            Response.Write("<script>alert('Giỏ hàng rỗng!')</script>");
            lbtb.Text = "Giỏ hàng của bạn đang trống";
            HyperLink2.Visible = true;
        }
        else
        {

            tbGioHang = (DataTable)Session["cart"];
            gvGioHang.DataSource = tbGioHang;
            gvGioHang.DataBind();
            string strnumber = tbGioHang.Compute("Sum(ThanhTien)", "").ToString();
            if ((Session["cart"] != null))
            {
                lbtt.Visible = true;
                lbtt.Text = "Tổng tiền:  " + strnumber + "VNĐ";
                btnmuahang.Visible = true;
            }
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
            load_data();
        foreach (DataRow row in tbGioHang.Rows)
        {
            Session["SL"] = tbGioHang.Compute("Sum(SoLuong)", "").ToString();
        }
       
    }

    protected void gvGioHang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvGioHang.EditIndex = e.NewEditIndex;
        load_data();
    }
    protected void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int intquantity = int.Parse((gvGioHang.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text);
        tbGioHang.Rows[e.RowIndex]["SoLuong"] = intquantity;
        gvGioHang.EditIndex = -1;
        load_data();
    }

    protected void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //Response.Write("<script>alert('Bạn chắc chắn muốn bỏ sản phẩm này!')</script>");

        tbGioHang.Rows.RemoveAt(e.RowIndex);
        gvGioHang.EditIndex = -1;
        if (Session["cart"] != null)
        {
            lbtt.Visible = true;
            btnmuahang.Visible = true;
            load_data();
            
        }
        if(gvGioHang.Rows.Count == 0)
        {
            lbtt.Visible = false;
            btnmuahang.Visible = false;
            lbtb.Text = "Giỏ hàng của bạn đang trống";
            HyperLink2.Visible = true;
        }

    }

    protected void btnmuahang_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DatHang.aspx");
    }
}