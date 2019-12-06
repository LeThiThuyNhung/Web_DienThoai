<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyMau.aspx.cs" Inherits="admin_QuanLyMau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <p>
        DANH SÁCH MÀU</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaMau" DataSourceID="SqlDataSource1" ShowFooter="True">
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
                <asp:TemplateField HeaderText="MaMau" InsertVisible="False" SortExpression="MaMau">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaMau") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaMau") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TenMau" SortExpression="TenMau">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenMau") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtMau" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenMau") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBSITE_DIENTHOAIDIDONGConnectionString %>" DeleteCommand="DELETE FROM [MAU] WHERE [MaMau] = @MaMau" InsertCommand="INSERT INTO [MAU] ([TenMau]) VALUES (@TenMau)" SelectCommand="SELECT [MaMau], [TenMau] FROM [MAU]" UpdateCommand="UPDATE [MAU] SET [TenMau] = @TenMau WHERE [MaMau] = @MaMau">
            <DeleteParameters>
                <asp:Parameter Name="MaMau" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenMau" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenMau" Type="String" />
                <asp:Parameter Name="MaMau" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        </center>
</asp:Content>

