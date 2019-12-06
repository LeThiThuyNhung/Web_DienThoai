<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTKNV.aspx.cs" Inherits="admin_QuanLyTKNV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sp {
           
            margin:20px 0px 20px 0px;
            text-align:center;
            font-size:20px;
            color:#f00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sp">DANH SÁCH KHÁCH HÀNG</div><br /><br />
    <table style="width:100%; margin-left: 170px;">
        <tr>
            <td>Mã NV</td>
            <td>
                <asp:DropDownList ID="drlma" runat="server" DataTextField="TENNV" DataValueField="MANV" Height="30px" Width="164px" DataSourceID="SqlDataSource2">
                </asp:DropDownList>
            </td>
            <td rowspan="4">
                <asp:GridView ID="gvTK" runat="server" AutoGenerateColumns="False" Height="70px" Width="760px" DataSourceID="SqlDataSource1" DataKeyNames="MANV" OnRowDeleting="gvTK_RowDeleting" OnRowUpdating="gvTK_RowUpdating" >
                    <Columns>
                        <asp:BoundField DataField="MANV" HeaderText="Mã NV"  ReadOnly="true"/>
                        <asp:BoundField DataField="USERNAME" HeaderText="Tên người dùng" />
                        <asp:BoundField DataField="PASSWORD" HeaderText="Mật khẩu" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString ="<%$ ConnectionStrings:wdt%>" 
                    SelectCommand="select NV.MANV, TENNV, USERNAME, PASSWORD from NHANVIEN nv, TAIKHOAN_NV tk where nv.MANV = tk.MANV" 
                    UpdateCommand="update TAIKHOAN_NV set USERNAME=@USERNAME, PASSWORD=@PASSWORD where MANV = @manv" 
                    DeleteCommand="delete from TAIKHOAN_NV where MANV=@manv">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString ="<%$ ConnectionStrings:wdt%>" 
                    SelectCommand="select MANV, TENNV from NHANVIEN">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Tên người dùng</td>
            <td>
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnThem" runat="server" Text="Thêm" Height="30px" Width="120px" ForeColor="Red" OnClick="btnThem_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhuy" runat="server" Text="Hủy" Height="30px" Width="120px" ForeColor="Red" OnClick="btnhuy_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

