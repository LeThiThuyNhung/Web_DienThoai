using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_QuanLyMau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["TENMAU"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMau")).Text;
        SqlDataSource1.Insert();
    }
}