<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyLoaiSP.aspx.cs" Inherits="admin_QuanLyLoaiSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sp {
           
            margin:20px 0px 20px 0px;
            text-align:center;
            font-size:20px;
            color:#f00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sp">THÊM LOẠI SẢN PHẨM MỚI</div>
    <table style="width:100%; margin-left: 350px;">
        <tr>
            
            <td>
                 <asp:GridView ID="gvloaisp" DataKeyNames="MALOAI" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 72px" Width="493px" ShowFooter="True">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="btnThem" runat="server" OnClick="btnThem_Click">Insert</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MALOAI" HeaderText="MALOAI" InsertVisible="False" ReadOnly="True" SortExpression="MALOAI" />
                        <asp:TemplateField HeaderText="TENLOAI" SortExpression="TENLOAI">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENLOAI") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTL" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENLOAI") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
                
    </table>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString ="<%$ ConnectionStrings:WEBSITE_DIENTHOAIDIDONGConnectionString %>"
         selectCommand ="SELECT * FROM [LOAISP]" 
        UpdateCommand="UPDATE [LOAISP] SET [TENLOAI] = @TENLOAI WHERE [MALOAI] = @MALOAI" 
        DeleteCommand="DELETE FROM [LOAISP] WHERE [MALOAI] = @MALOAI" InsertCommand="INSERT INTO [LOAISP] ([TENLOAI]) VALUES (@TENLOAI)">
        <DeleteParameters>
            <asp:Parameter Name="MALOAI" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENLOAI" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENLOAI" Type="String" />
            <asp:Parameter Name="MALOAI" Type="Int32" />
        </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>

