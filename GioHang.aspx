<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td class="auto-style1" style="text-align: center; font-size: large; font-weight: bold;">Giỏ hàng của bạn</td>
            </tr>
            <tr>
                <td><asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="MASP" onrowdeleting="gvGioHang_RowDeleting" 
            onrowediting="gvGioHang_RowEditing" onrowupdating="gvGioHang_RowUpdating" 
            Width="615px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="Mã SP">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên SP">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="Mau" HeaderText="Màu" />
                <asp:TemplateField HeaderText="Giá">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thành tiền">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("ThanhTien") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView></td>
            </tr>
            <tr>
                <td style="text-align: right; font-size: medium">
                    <asp:Label ID="lbtt" runat="server" Font-Bold="True" Font-Size="Medium" Visible="False"></asp:Label>

                    <br />
                    <asp:ImageButton ID="btnmuahang" runat="server" Height="42px" ImageUrl="~/image/muahang.PNG" OnClick="btnmuahang_Click" Visible="False" />

                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center; font-size: medium">
                    <asp:Label ID="lbtb" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium; text-align: center">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TrangChu.aspx" Visible="False">Tiếp tục mua hàng</asp:HyperLink>
                </td>
            </tr>
        </table>

    </div>
        
        <br />
          
</asp:Content>

