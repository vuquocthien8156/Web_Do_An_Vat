<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="QL_KhachHang.aspx.cs" Inherits="SOURCE.QL_KhachHang" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
        <asp:Label runat="server" >QUẢN LÝ KHÁCH HÀNG</asp:Label>
    <asp:GridView OnRowDeleting="gvKhachhang_RowDeleting1" ID="gvKhachhang" runat="server" Width="100%" DataKeyNames="MaKH" >
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã KH" />
            <asp:BoundField DataField="TenTK" HeaderText="Tên TK" />
            <asp:BoundField DataField="TenKH" HeaderText="Tên KH" />
            <asp:BoundField DataField="Diachi" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="SDT" HeaderText="SĐT" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    
    
    </asp:GridView>
    </div>

</asp:Content>
