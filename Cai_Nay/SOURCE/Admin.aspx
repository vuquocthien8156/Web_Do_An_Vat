<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SOURCE.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-3" style="background:grey;height:450px;margin-bottom:20px"> 
                <div class="col-md-12" style="background:#6f6f6f;width:220px;height:410px;margin:20px">
                    <div class="col-md-12" style="background:#616060;width:180px;height:370px;margin:20px">
                        <div class="col-md-12" style="background:#565656;width:140px;height:330px;margin:20px"></div>
                    </div>
                </div>
            </div>
        <div class="col-md-6">
            <div style="margin-left:50px">
             <% if(int.Parse(Session["Loai"].ToString()) == 1) {%>
            <asp:Label runat="server" style="padding-left:80px;font-size:48px;font-weight:900;font-family:Tahoma">CHÀO ADMIN</asp:Label>
            <asp:HyperLink NavigateUrl="~/QL_product.aspx" class="w3l_header_right1"  runat="server" style="margin-top:20px;height:80px;width:500px;background:red;color:white;padding-left:95px;padding-top:15px;font-size:32px;font-weight:700">QUẢN LÝ SẢN PHẨM</asp:HyperLink><br />
            <asp:HyperLink NavigateUrl="~/QL_KhachHang.aspx" class="w3l_header_right1" runat="server" style="margin-top:20px;height:80px;width:500px;background:blue;color:white;padding-left:75px;padding-top:15px;font-size:32px;font-weight:700" >QUẢN LÝ KHÁCH HÀNG</asp:HyperLink><br />
            <asp:HyperLink NavigateUrl="~/QL_NCC.aspx" runat="server" class="w3l_header_right1" style="margin-top:20px;height:80px;width:500px;background:yellow;color:white;padding-left:60px;padding-top:18px;font-size:32px;font-weight:700" >QUẢN LÝ NHÀ CUNG CẤP</asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/QL_Nhanvien.aspx" runat="server" class="w3l_header_right1" style="margin-bottom:20px;margin-top:20px;height:80px;width:500px;background-color:darkblue;color:white;padding-left:60px;padding-top:18px;font-size:32px;font-weight:700" >QUẢN LÝ NHÂN VIÊN</asp:HyperLink>
            <%} else{ %>
                <% if((Session["info"] as System.Data.DataRow)["LoaiNV"].ToString() == "2") {%>
                <asp:HyperLink NavigateUrl="~/Create_Product.aspx" class="w3l_header_right1"  runat="server" style="margin-top:20px;height:80px;width:500px;background:red;color:white;padding-left:95px;padding-top:15px;font-size:32px;font-weight:700">THÊM SẢN PHẨM</asp:HyperLink><br />
                <asp:HyperLink NavigateUrl="~/Create_NCC.aspx" runat="server" class="w3l_header_right1" style="margin-top:20px;height:80px;width:500px;background:yellow;color:white;padding-left:60px;padding-top:18px;font-size:32px;font-weight:700" >THÊM NHÀ CUNG CẤP</asp:HyperLink>
                <%} %>
            <%} %>
            </div>
        </div>
            <div class="col-md-3" style="background:grey;height:450px;margin-bottom:20px">
                <div class="col-md-12" style="background:#6f6f6f;width:220px;height:410px;margin:20px">
                    <div class="col-md-12" style="background:#616060;width:180px;height:370px;margin:20px">
                        <div class="col-md-12" style="background:#565656;width:140px;height:330px;margin:20px"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
