<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color:#f00; font-size:20px">Xin chào:<asp:Literal ID="ltrTenDangNhap" runat="server"></asp:Literal> đến với trang quản trị trang web | <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton></p>
</asp:Content>

