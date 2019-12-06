using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_KQTimKiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sten = Request.QueryString["tensp"].ToString();

        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        string strcmd = "select * from SANPHAM where TENSP like '%" + sten + "%'";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "sp");
        dlspham.DataSource = ds.Tables["sp"];
        dlspham.DataBind();
    }
}