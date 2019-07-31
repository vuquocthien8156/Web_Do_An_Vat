<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="QL_product.aspx.cs" Inherits="SOURCE.QL_product" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     <div class="container">
       <%--  <div class="row">
                 <div class="w3l_search" style="margin-left:450px">
		
				<asp:TextBox ID="tbSearch" runat="server" type="text" name="Product" value="Search a product..." required="" />
				<asp:Button  runat="server" type="submit" OnClick="Unnamed_Click" />

                </div>
           </div> --%>
         <asp:HyperLink ID="HyperLink1" Font-Bold=  "True" Font-Size="Medium" NavigateUrl="~/Create_Product.aspx" runat="server">Thêm Sản Phẩm</asp:HyperLink>
         <br />
         <asp:Label ID="Label5" runat="server" Text="DANH SÁCH SẢN PHẨM" 
            Font-Bold=  "True" Font-Size="Medium" ForeColor="#3333FF"></asp:Label>
    <asp:GridView ID="GV_Sanpham" runat="server" DataKeyNames="Masp" OnRowDeleting="GV_Sanpham_RowDeleting" Width="100%" OnSelectedIndexChanging="GV_Sanpham_SelectedIndexChanging" AllowPaging="True" OnPageIndexChanging="GV_Sanpham_PageIndexChanging" PageSize="5">
        <Columns>
            
            <asp:BoundField DataField="Masp" HeaderText="Mã SP" ReadOnly="True" />
            
            <asp:TemplateField HeaderText="Tên sp">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tensp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mô tả">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mota") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Giá sp">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("GiaSP") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Trạng thái">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# gettrangthai(Eval("Trangthai_con_het")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lần đặt">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Solandat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("URL") %>' Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NCC">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("TenNCC") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loại sp">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Tenloaisp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
            <asp:CommandField HeaderText="Xóa" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
         </div>
</asp:Content>
