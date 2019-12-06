<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dk {
           margin:20px 0px 20px 0px;
            text-align:center;
            font-size:20px;
            color:#f00;
        }
        .tb {
            margin-left:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="dk">ĐĂNG KÝ TÀI KHOẢN</div>
    <table class="tb"  style="width:500px; height: 225px;">
        <tr>
            
            <td colspan="2" >
                <asp:TextBox ID="txtTen" runat="server" Height="36px" Width="400px" placeholder="Tên tài khoản"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên không được để trống" ControlToValidate="txtTen" ForeColor="Red">Tên không được để trống</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
      
            <td colspan="2">
                <asp:TextBox type="password" ID="txtMK" runat="server" Height="36px"  placeholder="Mật khẩu" Width="400px"></asp:TextBox><br />
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMK" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red">Mật khẩu không được để trống</asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtDChi" runat="server" Height="36px" Width="400px" placeholder="Địa chỉ" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDChi" ErrorMessage="Địa chỉ không được để trống" ForeColor="Red">Địa chỉ không được để trống</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtSDT" runat="server" Height="36px" Width="400px" placeholder="Số điện thoại"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{10}$" ControlToValidate="txtSDT" ForeColor="Red">Chỉ được nhập 10 kí tự</asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td colspan="2">
                <asp:TextBox ID="txtMail" runat="server" Height="36px" placeholder="Email" Width="400px"></asp:TextBox><br />
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="txtMail" ErrorMessage="Email sai định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">Email sai định dạng</asp:RegularExpressionValidator>
               
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnThem" runat="server" Text="Đăng ký" Height="36px" Width="200px" ForeColor="Red" OnClick="btnThem_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Trở lại" Height="37px" Width="196px" ForeColor="Red" />
            </td>
        </tr>
    </table>
</asp:Content>

