<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="QL_NCC.aspx.cs" Inherits="SOURCE.QL_NCC" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

           <div class="col-md-12">
             <asp:HyperLink ID="HyperLink1" Font-Bold=  "True" Font-Size="Medium" NavigateUrl="Create_NCC.aspx" runat="server">Thêm Nhà Cung Cấp</asp:HyperLink>
             <br />
             <asp:Label ID="Label5" runat="server" Text="DANH SÁCH NHÀ CUNG CẤP" 
                Font-Bold=  "True" Font-Size="Medium" ForeColor="#3333FF"></asp:Label>
            </div>
         </div>
        <div class="row">

        <div class="col-md-12">
      <asp:GridView ID="GvProducer" Width="100%" runat="server" DataKeyNames="MaNCC" OnRowDeleting="GvProducer_RowDeleting" OnSelectedIndexChanging="GvProducer_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="MaNCC" HeaderText="Mã NCC" />
            <asp:BoundField DataField="TenNCC" HeaderText="Tên NCC" />
            <asp:BoundField DataField="Diachi" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="Giohoatdong" HeaderText="Giờ hoạt động" />
            <asp:TemplateField HeaderText="Đang mở cửa">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Get_Active(Eval("Trangthai_mocua")) %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dịch vụ ship">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Get_DVShip(Eval("DichVuShip")) %>' Enabled="false"  />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Email" DataField="Mail" />
            <asp:TemplateField HeaderText="Hình">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" ImageUrl='<%# Eval("URL") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>

    </asp:GridView>
        </div>

        </div>
    </div>

  
</asp:Content>
