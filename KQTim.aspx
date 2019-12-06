<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KQTim.aspx.cs" Inherits="KQTim" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sp">SẢN PHẨM</div><br /><br />
    <asp:DataList ID="dlspham" runat="server" RepeatColumns="3" ItemStyle-Width="220px" CellPadding="5" CellSpacing="5">
<ItemStyle Width="200px"></ItemStyle>
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Image ID="Image1" runat="server" Height="170px" ImageUrl='<%# "image/" + Eval ("Anh") %>' Width="160px" ImageAlign="Middle" /></a>
            <br />
            <br />
            <center><a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Label ID="lbten" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label></a></center>
            <center><a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Label ID="Lblgb" runat="server" Text='<%# Eval("GIABAN") %>'></asp:Label></a></center>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

