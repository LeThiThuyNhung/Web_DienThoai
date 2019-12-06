<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="ChiTietSanPham" %>

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
        .auto-style1 {
            width: 76px;
        }
        .auto-style2 {
            width: 80px;
        }
        .auto-style3 {
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sp">CHI TIẾT SẢN PHẨM</div><br /><br />
    <asp:DataList ID="dlsSPham" runat="server" Width="100%" RepeatColumns="1" DataKeyField="MASP" OnItemCommand="dlsSPham_ItemCommand" OnItemDataBound="dlsSPham_ItemDataBound" >
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" rowspan="6">
                        <asp:Image ID="Image1" runat="server" Height="180px" Width="200px" ImageUrl='<%# "image/" + Eval ("Anh") %>' />
                    </td>
                    <td class="auto-style2">Tên sản phẩm:
                        <asp:Label ID="lbten" runat="server" Text='<%# Eval("TENSP") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Giá:
                        <asp:Label ID="lbgban" runat="server" Text='<%# Eval("GIABAN") %>'></asp:Label>vnđ</td>
                </tr>
                <tr>
                    <td>Số lượng:
                        
                        <asp:TextBox ID="txtSL" runat="server" Height="20px" Width="38px">1</asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td>Màu:
                        <asp:DropDownList ID="drlMau" runat="server" Width="113px" Height="25px">
                        </asp:DropDownList>
                       
                    </td>
                </tr>
                <tr>
                    <td>Tình trạng:
                        <asp:Label ID="lbttrang" runat="server" Text='<%# Eval("SOLUONG") %>' ></asp:Label>
                        sản phẩm</td>
                </tr>
                <tr>
                    <td><b>Thông số kỹ thuật<br /></b>Màn hình:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("MANHINH") %>'></asp:Label>
                        <br />
                        Hệ điều hành:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("HEDIEUHANH") %>'></asp:Label>
                        <br />
                        Camera trước:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("CAMERATRUOC") %>'></asp:Label>
                        <br />
                        Camera sau:
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("CAMERASAU") %>'></asp:Label>
                        <br />
                        CPU:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("CPU") %>'></asp:Label>
                        <br />
                        Ram:
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("RAM") %>'></asp:Label>
                        <br />
                        Bộ nhớ trong:
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("BONHOTRONG") %>'></asp:Label>
                        <br />
                        Thẻ nhớ:
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("THENHO") %>'></asp:Label>
                        <br />
                        Thẻ sim:
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("THESIM") %>'></asp:Label>
                        <br />
                        Dung lượng pin:
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("DUNGLUONGPIN") %>'></asp:Label>
                        <br />
                        Bảo hành:
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("BAOHANH") %>'></asp:Label>
                        <br /><br />
                    </td>
                </tr>
                
            </table>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"></td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" CommandName="them" ImageUrl="~/image/themvaogh.PNG" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/muangay.PNG" CommandName="mua" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
         
    </asp:DataList>
</asp:Content>

