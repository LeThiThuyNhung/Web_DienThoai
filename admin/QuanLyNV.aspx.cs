using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_QuanLyNV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["TENNV"].DefaultValue = ((TextBox)gvNV.FooterRow.FindControl("txtTNV")).Text;
        SqlDataSource1.InsertParameters["SDTNV"].DefaultValue = ((TextBox)gvNV.FooterRow.FindControl("txtSDT")).Text;
        SqlDataSource1.InsertParameters["DIACHINV"].DefaultValue = ((TextBox)gvNV.FooterRow.FindControl("txtDC")).Text;
        SqlDataSource1.InsertParameters["EMAILNV"].DefaultValue = ((TextBox)gvNV.FooterRow.FindControl("txtEmail")).Text;
        SqlDataSource1.Insert();
    }
   
}