<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="QuanLySP.aspx.cs" Inherits="QuanLySP" %>

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
    <div class="sp">THÊM SẢN PHẨM MỚI</div>
    <table style="width:700px; margin-left:300px ">
        <tr>
            <td style="width:100px">Mã loại</td>
            <td >
                <asp:DropDownList ID="drlloai" runat="server" Height="30px" Width="174px" DataSourceID="SqlDataSource2" DataTextField="TENLOAI" DataValueField="MALOAI">
                </asp:DropDownList>
            </td>
            <td style="width:100px"> Camera trước</td>
            <td>
                <asp:TextBox ID="txtctruoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px">Mã NCC</td>
            <td >
                <asp:DropDownList ID="drlncc" runat="server" Height="30px" Width="175px" DataSourceID="SqlDataSource3" DataTextField="TENNCC" DataValueField="MANCC">
                </asp:DropDownList>
            </td>
            <td style="width:100px; height:30px">Camera sau</td>
            <td >
                <asp:TextBox ID="txtcamsau" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Tên sản phẩm</td>
            <td >
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
            <td style="width:100px; height:30px">CPU</td>
            <td >
                <asp:TextBox ID="txtcpu" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Ảnh</td>
            <td >
                <asp:FileUpload ID="fuAnh" runat="server" />
            </td>
            <td style="width:100px; height:30px"> Ram</td>
            <td >
                <asp:TextBox ID="txtram" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px" >Số lượng</td>
            <td >
                <asp:TextBox ID="txtsl" runat="server"></asp:TextBox>
            </td>
            <td style="width:100px; height:30px">Bộ nhớ trong</td>
            <td >
                <asp:TextBox ID="txtbonho" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Màu</td>
            <td >
                <asp:DropDownList ID="drmau" runat="server" DataSourceID="SqlDataSource4" DataTextField="TenMau" DataValueField="MaMau" Height="21px" Width="167px">
                </asp:DropDownList>
            </td>
            <td style="width:100px; height:30px">Thẻ nhớ</td>
            <td>
                <asp:TextBox ID="txtthenho" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Màn hình</td>
            <td>
                <asp:TextBox ID="txtmh" runat="server"></asp:TextBox>
            </td>
            <td style="width:100px; height:30px"> Thẻ sim</td>
            <td>
                <asp:TextBox ID="txtthesim" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Hệ điều hành</td>
            <td >
                <asp:TextBox ID="txthdh" runat="server"></asp:TextBox>
            </td>
            <td style="width:100px; height:30px"> Dung lượng pin</td>
            <td >
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:100px; height:30px">Bảo hành</td>
            <td >
                <asp:TextBox ID="txtbh" runat="server"></asp:TextBox>
            </td>
            <td>Giá bán</td>
            <td>
                <asp:TextBox ID="txtgban" runat="server"></asp:TextBox>
            </td>
        </tr>
     
        <tr>
            <td colspan="4" style="margin-right: 10px">
                <asp:Button ID="tbnthem0" runat="server" Height="35px" Text="Thêm" Width="266px" ForeColor="Red" OnClick="tbnthem_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhuy0" runat="server" Text="Hủy" Height="35px" Width="238px" ForeColor="Red" OnClick="btnhuy_Click"/>
            </td>
        </tr>
     
        </table><br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="MASP" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="MASP" HeaderText="Mã SP" ReadOnly="true" />
                        <asp:TemplateField HeaderText="Mã loại">
                            <EditItemTemplate>
                                 <asp:DropDownList ID="drlloai" DataSourceID="SqlDataSource2" runat="server" DataTextField="TENLOAI" DataValueField="MALOAI" SelectedValue='<%# Eval("MALOAI") %>'>
                                     </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate> <%#Eval("MALOAI") %>
                           </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã NCC">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drlncc" DataSourceID="SqlDataSource3" runat="server" DataTextField="TENNCC" DataValueField="MANCC" SelectedValue='<%# Eval("MANCC") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MANCC") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TENSP" HeaderText="Tên SP" />
                        <asp:TemplateField HeaderText="Ảnh">
                          
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuAnh" runat="server" />
                            </EditItemTemplate>
                          
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="65px" ImageUrl='<%# Eval("Anh","~/image/{0}") %>' Width="68px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                        <asp:BoundField DataField="GIABAN" HeaderText="Giá bán" />
                        <asp:TemplateField HeaderText="Màu">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drlmau" runat="server" DataSourceID="SqlDataSource4" DataTextField="TenMau" DataValueField="MaMau" Height="23px" Width="117px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WEBSITE_DIENTHOAIDIDONGConnectionString %>" SelectCommand="SELECT [MaMau], [TenMau] FROM [MAU]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenMau") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MANHINH" HeaderText="Màn hình" />
                        <asp:BoundField DataField="HEDIEUHANH" HeaderText="Hệ điều hành" />
                        <asp:BoundField DataField="CAMERATRUOC" HeaderText="Camera trước" />
                        <asp:BoundField DataField="CAMERASAU" HeaderText="Camera sau" />
                        <asp:BoundField DataField="CPU" HeaderText="CPU" />
                        <asp:BoundField DataField="RAM" HeaderText="Ram" />
                        <asp:BoundField DataField="BONHOTRONG" HeaderText="Bộ nhớ trong" />
                        <asp:BoundField DataField="THENHO" HeaderText="Thẻ nhớ" />
                        <asp:BoundField DataField="THESIM" HeaderText="Thẻ sim" />
                        <asp:BoundField DataField="DUNGLUONGPIN" HeaderText="Dung lượng pin" />
                        <asp:BoundField DataField="BAOHANH" HeaderText="Bảo hành" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString ="<%$ ConnectionStrings:wdt%>"
                    selectCommand ="select sp.MASP, MANCC, MALOAI, TENSP, ANH, SOLUONG, GIABAN, TenMau, MANHINH, HEDIEUHANH, CAMERATRUOC, CAMERASAU, CPU , RAM, BONHOTRONG, THENHO, THESIM, DUNGLUONGPIN, BAOHANH from SANPHAM sp, CT_SANPHAM ctsp, MAU m where sp.MASP = ctsp.MaSP and ctsp.MaMau = m.MaMau"
                    UpdateCommand ="update SANPHAM set TENSP = @TENSP where MASP = @masp" 
                    DeleteCommand ="delete from SANPHAM where MASP = @masp">
                </asp:SqlDataSource>
    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString ="<%$ ConnectionStrings:wdt%>"
            selectCommand ="select * from LOAISP">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"  ConnectionString ="<%$ ConnectionStrings:wdt%>"
            selectCommand ="select * from NHACUNGCAP">

    </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:wdt %>"
          SelectCommand="SELECT [MaMau], [TenMau] FROM [MAU]"
          UpdateCommand ="update CT_SP set CT_SP set MaMau = @MaMau where MASP= @masp"
          DeleteCommand ="delete from MAU where MASP = @masp">
          
     </asp:SqlDataSource>

</asp:Content>
