using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class admin_QuanLyLoaiSP : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["TENLOAI"].DefaultValue = ((TextBox)gvloaisp.FooterRow.FindControl("txtTL")).Text;
        SqlDataSource1.Insert();
    }
}