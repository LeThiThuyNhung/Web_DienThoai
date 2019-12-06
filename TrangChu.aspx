<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sp {
            text-align:center;
            border:1px;
            background-color:black;
            color:#f00; 
            height:40px;
            border-radius:5px;
            line-height:40px;
        }
        .bt {
            text-align:center;
            position:relative;
            
            z-index:1000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="sp">TẤT CẢ SẢN PHẨM</div><br /><br />
    <asp:DataList ID="dlspham" runat="server" RepeatColumns="3" ItemStyle-Width="220px" CellPadding="5" CellSpacing="5">
<ItemStyle Width="200px"></ItemStyle>
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="color:black" href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Image ID="Image1" runat="server" Height="170px" ImageUrl='<%# "image/" + Eval ("Anh") %>' Width="160px" ImageAlign="Middle" /></a>
            <br />
            <br />
            <center><a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Label ID="lbten" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label></a></center>
            <center><a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Label ID="Lblgb" runat="server" Text='<%# Eval("GIABAN") %>'></asp:Label>đ</a></center>
        </ItemTemplate>
    </asp:DataList><br /><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString ="<%$ ConnectionStrings:wdt%>"
         selectCommand ="  select MASP, TENSP, ANH, GIABAN, GIAKM from  SANPHAM  group by MASP, TENSP, ANH, GIABAN, GIAKM">

    </asp:SqlDataSource>
    <div class="bt">
        <asp:LinkButton ID="btntdau" runat="server" OnClick="btntdau_Click">Trang đầu</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btntrc" runat="server" OnClick="btntrc_Click">Trước</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txttrang" runat="server" Width="30px" ReadOnly="true"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnsau" runat="server" OnClick="btnsau_Click">Sau</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btntcuoi" runat="server" OnClick="btntcuoi_Click">Trang cuối</asp:LinkButton>
    </div>
</asp:Content>

 

