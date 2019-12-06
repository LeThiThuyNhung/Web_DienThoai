<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="DSHD.aspx.cs" Inherits="admin_DSHD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    DANH SÁCH HÓA ĐƠN</p>
<p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</p>
</asp:Content>

