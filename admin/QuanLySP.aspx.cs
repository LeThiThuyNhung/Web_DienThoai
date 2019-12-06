using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class QuanLySP : System.Web.UI.Page
{

    protected void tbnthem_Click(object sender, EventArgs e)
    {
        if (fuAnh.HasFile)
            fuAnh.SaveAs(Server.MapPath("~/image/" + fuAnh.FileName));
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);

        string strcmd = "insert into SANPHAM(MANCC, MALOAI, TENSP, ANH, SOLUONG, GIABAN, MANHINH, HEDIEUHANH, CAMERATRUOC, CAMERASAU, CPU, RAM, BONHOTRONG, THENHO, THESIM, DUNGLUONGPIN, BAOHANH ) values('" + drlncc.SelectedValue.ToString() + "','" + drlloai.SelectedValue.ToString() + "',N'" + txtten.Text + "','" + fuAnh.FileName + "','" + txtsl.Text + "','" + txtgban.Text +
             "',N'" + txtmh.Text + "','" + txthdh.Text + "','" + txtctruoc.Text + "','" + txtcamsau.Text + "','" + txtcpu.Text + "','" + txtram.Text + "','" + txtbonho.Text + "',N'" + txtthenho.Text + "',N'" + txtthesim.Text + "','" + txtpin.Text + "',N'" + txtbh.Text + "')";
        SqlCommand cmd = new SqlCommand(strcmd, cn);
        cn.Open();
        cmd.ExecuteNonQuery();

        cn.Close();

        string sql2 = "select MASP from SANPHAM";
        int idSP = 0;
        SqlDataAdapter da = new SqlDataAdapter(sql2, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow r in dt.Rows)
        {
            idSP = int.Parse(r[0].ToString());
        }
        int mamau = int.Parse(drmau.SelectedValue.ToString());
        string sql3 = "insert into CT_SANPHAM values('" + idSP + "','" + mamau + "')";
        SqlCommand cmd1 = new SqlCommand(sql3, cn);
        cn.Open();
        cmd1.ExecuteNonQuery();
        cn.Close();


    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (fuAnh.HasFile)
            fuAnh.SaveAs(Server.MapPath("~/image/" + fuAnh.FileName));
        int masp = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        int loai = int.Parse(((DropDownList)GridView1.Rows[e.RowIndex].FindControl("drlloai")).SelectedValue);
        int ncc = int.Parse(((DropDownList)GridView1.Rows[e.RowIndex].FindControl("drlncc")).SelectedValue);
        string ten = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
        string anh = Convert.ToString(((FileUpload)GridView1.Rows[e.RowIndex].FindControl("fuAnh")).ToString());
        int sl = int.Parse((GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text);
        float gb = float.Parse((GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text);
        int mau = int.Parse(((DropDownList)GridView1.Rows[e.RowIndex].FindControl("drlmau")).SelectedValue);
        string mh = (GridView1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
        string hdh = (GridView1.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text;
        string camtrc = (GridView1.Rows[e.RowIndex].Cells[10].Controls[0] as TextBox).Text;
        string camsau = (GridView1.Rows[e.RowIndex].Cells[11].Controls[0] as TextBox).Text;
        string cpu = (GridView1.Rows[e.RowIndex].Cells[12].Controls[0] as TextBox).Text;
        string ram = (GridView1.Rows[e.RowIndex].Cells[13].Controls[0] as TextBox).Text;
        string bnt = (GridView1.Rows[e.RowIndex].Cells[14].Controls[0] as TextBox).Text;
        string tn = (GridView1.Rows[e.RowIndex].Cells[15].Controls[0] as TextBox).Text;
        string ts = (GridView1.Rows[e.RowIndex].Cells[16].Controls[0] as TextBox).Text;
        string pin = (GridView1.Rows[e.RowIndex].Cells[17].Controls[0] as TextBox).Text;
        string bh = (GridView1.Rows[e.RowIndex].Cells[18].Controls[0] as TextBox).Text;
        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        SqlCommand cmd = new SqlCommand("update SANPHAM set MALOAI = '" + loai + "',MANCC='" + ncc + "',TENSP='" + ten + "',ANH='" + anh + "', SOLUONG='" + sl + "',GIABAN='" + gb + "',MANHINH='" + mh + "',HEDIEUHANH='" + hdh +
           "',CAMERATRUOC='" + camtrc + "',CAMERASAU=N'" + camsau + "',CPU=N'" + cpu + "',RAM='" + ram + "',BONHOTRONG='" + bnt + "',THENHO=N'" + tn + "',THESIM=N'" + ts + "',DUNGLUONGPIN=N'" + pin + "',BAOHANH=N'" + bh + "' where MASP='" + masp + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        cn.Close();

        //SqlCommand cmd1 = new SqlCommand("update CT_SP set MaMau = '" + mau + "' where MASP='" + masp);
        //cn.Open();
        //cmd1.ExecuteNonQuery();
        //GridView1.EditIndex = -1;
        //cn.Close();

    }
    protected void btnhuy_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txtsl.Text = "";

        txtcamsau.Text = "";
        txtbonho.Text = "";
        txtbh.Text = "";
        txtcpu.Text = "";
        txtctruoc.Text = "";
        txthdh.Text = "";
        txtmh.Text = "";
        txtpin.Text = "";
        txtram.Text = "";
        txtthenho.Text = "";
        txtthesim.Text = "";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string strcn = ConfigurationManager.AppSettings["wdt"];
        SqlConnection cn = new SqlConnection(strcn);
        int masp = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string sql2 = "select MASP from SANPHAM";
        int idSP = 0;
        SqlDataAdapter da = new SqlDataAdapter(sql2, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow r in dt.Rows)
        {
            idSP = int.Parse(r[0].ToString());
        }
        int mamau = int.Parse(drmau.SelectedValue.ToString());
        string sql3 = "delete from CT_SANPHAM where MASP = "+ masp;
        SqlCommand cmd1 = new SqlCommand(sql3, cn);
        cn.Open();
        cmd1.ExecuteNonQuery();
        cn.Close();
    }


}

