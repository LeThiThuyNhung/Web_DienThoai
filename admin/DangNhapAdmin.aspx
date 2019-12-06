<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="DangNhapAdmin.aspx.cs" Inherits="admin_DangNhapAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
        .auto-style2 {
            width: 150px;
            height: 26px;
        }
        .auto-style3 {
            width: 450px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:600px; margin-left: 400px;">
        <tr>
            <td class="auto-style1" colspan="2" style="font-size: 15pt; color: #FF0000; font-style: normal; text-align: center">ĐĂNG NHẬP QUYỀN QUẢN TRỊ WEBSITE</td>
        </tr>
        <tr>
            <td class="auto-style2">Tên đăng nhập</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtU" runat="server" Width="300px" Height="36px" OnTextChanged="txtU_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtU" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">Mật khẩu</td>
            <td style="width: 520px">
                <asp:TextBox ID="txtmk" runat="server" TextMode="Password" Width="300px" Height="36px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmk" ErrorMessage="Mật khẩu không được rỗng" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 200px"></td>
            <td style="width: 520px">
                <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" ForeColor="Red" Height="36px" Width="300px" />
            </td>
        </tr>
    </table>
</asp:Content>

