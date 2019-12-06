using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["dangnhap"] != null && Session["dangnhap"].ToString() == "1")
        {

        }
        else
        {
            Response.Redirect("DangNhapAdmin.aspx");
        }

        if (!IsPostBack)
            ltrTenDangNhap.Text = Session["name"].ToString();
    }
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        Session["dangnhap"] = null;
        Session["ten"] = null;
        Response.Redirect("DangNhapAdmin.aspx");
    }
}