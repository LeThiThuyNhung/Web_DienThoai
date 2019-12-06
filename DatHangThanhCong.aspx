<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DatHangThanhCong.aspx.cs" Inherits="DatHangThanhCong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; font-weight: bold; text-align: center">
    Đặt hàng thành công!</p>
<p style="color: #FF0000; font-size: medium">
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl="~/TrangChu.aspx">Quay lại trang chủ</asp:HyperLink>
</p>
</asp:Content>

