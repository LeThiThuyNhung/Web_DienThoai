<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DatHang.aspx.cs" Inherits="DatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; font-size: large; font-weight: bold">THÔNG TIN ĐẶT HÀNG</p>
    <p>
         <asp:Label ID="lblnd" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblTenKH" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbldchi" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblSDT" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblEmail" runat="server"></asp:Label>
        <br />
       
        <asp:Label ID="Label9" runat="server" Text="Ghi chú:"></asp:Label>
        <asp:TextBox ID="txtGhiChu" runat="server" Height="24px" TextMode="MultiLine" Width="223px"></asp:TextBox>
    </p>
    <asp:GridView ID="gvDatHang" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="MASP"
            Width="615px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="Mã SP">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên SP">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="Mau" HeaderText="Màu" />
                <asp:TemplateField HeaderText="Giá">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thành tiền">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("ThanhTien") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        </asp:GridView>
    <p style="text-align: right">
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Text="Tổng tiền: "></asp:Label>
        <asp:Label ID="lbltt" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>

        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="VNĐ"></asp:Label>

    </p>
    <p style="text-align: right">
        <asp:ImageButton ID="btndhang" runat="server" ImageUrl="~/image/dathang.PNG" OnClick="btndhang_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

