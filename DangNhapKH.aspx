<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhapKH.aspx.cs" Inherits="DangNhapKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            height: 65px;
        }
        .auto-style2 {
            height: 26px;
            width: 174px;
        }
        .auto-style3 {
            width: 174px;
        }
    .auto-style4 {
        width: 450px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:600px; margin-left:30px;">
    <tr>
        <td class="auto-style1" colspan="2" style="font-size: 15pt; color: #FF0000; font-style: normal; text-align: center">ĐĂNG NHẬP TÀI KHOẢN</td>
    </tr>
    <tr>
        <td style="text-align: center;" class="auto-style2">Email</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtmail" runat="server" Width="300px" Height="36px"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Email sai định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: center;" class="auto-style3">Mật khẩu</td>
        <td style="width: 520px">
            <asp:TextBox ID="txtmk" runat="server" TextMode="Password" Width="300px" Height="36px"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmk" ErrorMessage="Mật khẩu không được rỗng" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td style="width: 520px">
            <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" ForeColor="Red" Height="36px" Width="300px" />
        &nbsp;<br />
            Bạn chưa có tài khoản? Nhấn vào đây để <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DangKy.aspx">đăng ký</asp:HyperLink>
&nbsp;</td>
    </tr>
</table>
</asp:Content>

