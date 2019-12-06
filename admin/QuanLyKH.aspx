<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyKH.aspx.cs" Inherits="admin_QuanLyKH" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="100%" DataSourceID="SqlDataSource1" DataKeyNames="MAKH">
        <Columns>
            <asp:BoundField DataField="MAKH" HeaderText="Mã KH" />
            <asp:BoundField DataField="TENKH" HeaderText="Tên KH" />
            <asp:BoundField DataField="MATKHAU" HeaderText="Mật khẩu" />
            <asp:BoundField DataField="SDTKH" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="DIACHIKH" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="Email" HeaderText="Mail" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString ="<%$ ConnectionStrings:wdt%>" 
        SelectCommand="Select * from KHACHHANG">

    </asp:SqlDataSource>
</asp:Content>

