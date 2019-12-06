<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyNV.aspx.cs" Inherits="admin_QuanLyNV" %>

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
    <div class="sp">THÊM NHÂN VIÊN</div>
    <table style="width:100%; margin-left: 170px;">
        <tr>
            <td>
                <asp:GridView ID="gvNV" runat="server" DataKeyNames="MANV" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="100px" ShowFooter="True">
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
                        <asp:BoundField DataField="MANV" HeaderText="MANV"  ReadOnly="true" InsertVisible="False" SortExpression="MANV"/>
                        <asp:TemplateField HeaderText="TENNV" SortExpression="TENNV">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENNV") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTNV" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENNV") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SDTNV" SortExpression="SDTNV">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SDTNV") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("SDTNV") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DIACHINV" SortExpression="DIACHINV">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DIACHINV") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("DIACHINV") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMAILNV" SortExpression="EMAILNV">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EMAILNV") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMAILNV") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString ="<%$ ConnectionStrings:WEBSITE_DIENTHOAIDIDONGConnectionString %>" 
                    SelectCommand="SELECT * FROM [NHANVIEN]" 
                    UpdateCommand="UPDATE [NHANVIEN] SET [TENNV] = @TENNV, [SDTNV] = @SDTNV, [DIACHINV] = @DIACHINV, [EMAILNV] = @EMAILNV WHERE [MANV] = @MANV" 
                    DeleteCommand="DELETE FROM [NHANVIEN] WHERE [MANV] = @MANV" InsertCommand="INSERT INTO [NHANVIEN] ([TENNV], [SDTNV], [DIACHINV], [EMAILNV]) VALUES (@TENNV, @SDTNV, @DIACHINV, @EMAILNV)" >
                    <DeleteParameters>
                        <asp:Parameter Name="MANV" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TENNV" Type="String" />
                        <asp:Parameter Name="SDTNV" Type="String" />
                        <asp:Parameter Name="DIACHINV" Type="String" />
                        <asp:Parameter Name="EMAILNV" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TENNV" Type="String" />
                        <asp:Parameter Name="SDTNV" Type="String" />
                        <asp:Parameter Name="DIACHINV" Type="String" />
                        <asp:Parameter Name="EMAILNV" Type="String" />
                        <asp:Parameter Name="MANV" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

