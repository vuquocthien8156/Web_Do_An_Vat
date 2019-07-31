<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Sua_info_KH.aspx.cs" Inherits="SOURCE.Sua_info_KH" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">

      <div class="container">

        <div class="col-md-4"></div>
        <div class="col-md-4 account-left" style="background:#505050">
            <div style="margin-left:25px;margin-top:20px">

            <asp:Label runat="server"  Text="Thông tin của bạn" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" style="margin-left:85px;margin-top:20px"> </asp:Label><br />
            <asp:Label ID="lbHoten" runat="server" Text="Họ Tên" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3"></asp:Label>
            <asp:TextBox ID="txtTenKH" runat="server"  style="margin-top:8px;padding:5px;width:300px" placeholder="Họ Tên"  required=""></asp:TextBox>
            <asp:Label ID="tbDiachi" runat="server" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" Text="Địa chỉ"></asp:Label>
            <asp:TextBox ID="txtDiachi" runat="server" style="margin-top:8px;padding:5px;width:300px" placeholder="Địa chỉ"  required=""></asp:TextBox><br />
            <asp:Label ID="lbSDT" runat="server" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" Text="Số Điện Thoại"></asp:Label>
            <asp:TextBox ID="txtSDT" runat="server" style="margin-top:8px;padding:5px;width:300px;margin-bottom:0" placeholder="Số điện thoại"  required=""></asp:TextBox>
            <asp:RegularExpressionValidator runat="server"  style="color:red;font-size:12px" ID="requiredforPhone"  ControlToValidate="txtSDT" Type="Interger" ErrorMessage="Phải có từ 9 đến 11 số"  ValidationExpression="[0-9]{9,11}$" ></asp:RegularExpressionValidator><br />
            <asp:Label ID="lbEmail" runat="server" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" style="margin-bottom:15px;padding:5px;width:300px" placeholder="Email"  required=""></asp:TextBox>
            <asp:RegularExpressionValidator  runat="server"  style="color:red;font-size:12px"  ControlToValidate="txtEmail" ErrorMessage="Email khong hop le" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ></asp:RegularExpressionValidator>
            <asp:Label ID="Thongbao" style="color:red" runat="server" ></asp:Label><br />
            <asp:Button ID="btnXong" runat="server" Text="Sửa" style="margin-left:120px;margin-bottom:10px;border-radius:5px" OnClick="btnXong_Click" />
            </div>

        </div>
        <div class="col-md-4"></div>
    </div>

</asp:Content>
