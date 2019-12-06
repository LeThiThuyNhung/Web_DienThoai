<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoaiSP.aspx.cs" Inherits="LoaiSP" %>

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

         .dl {
              text-align:center;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sp">

        <asp:DataList ID="DataList3" runat="server" Width="484px">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTenLoai" runat="server" Text='<%# Eval("TenLoai") %>' CssClass="dl"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div><br />
    
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" CellPadding="5" CellSpacing="5" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
        <ItemTemplate>
            <a href="ChiTietSanPham.aspx?masp=<%# Eval("MASP") %>"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ANH","~/image/{0}") %>' Height="170px" Width="160px" /></a>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink style="color:black" ID="HyperLink2" runat="server" NavigateUrl='<%# "ChiTietSanPham.aspx?masp=" + Eval("MASP") %>' Text='<%# Eval("TenSP") %>' Width="150px"></asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink style="color:black" ID="HyperLink3" runat="server" Text='<%# Eval("GiaBan") %>' NavigateUrl='<%# "ChiTietSanPham.aspx?masp=" + Eval("MASP") %>' ></asp:HyperLink>đ
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

