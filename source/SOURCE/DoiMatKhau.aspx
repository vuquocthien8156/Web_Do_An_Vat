<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="SOURCE.DoiMatKhau" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">

    <div class="container">

        <div class="col-md-3"></div>
        <div class="col-md-4 account-left" style="background:#505050">
            <div style="margin-left:25px;margin-top:20px">

             <asp:Label runat="server"  Text="ĐỔI MẬT KHẨU" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" style="margin-left:85px;margin-top:20px"> </asp:Label><br />
            <asp:TextBox ID="txtpassold" TextMode="Password" runat="server" style="margin-top:8px;padding:5px;width:300px" placeholder="Password old"  required=""></asp:TextBox>
            <asp:Label ID="lbkiemtraMK" runat="server" ></asp:Label>
            <asp:TextBox ID="txtpassnew" TextMode="Password" runat="server" style="margin-top:8px;padding:5px;width:300px" placeholder="Passwword new"></asp:TextBox>
            <asp:TextBox ID="txtpassnewrepeat" TextMode="Password" runat="server" style="margin-top:8px;margin-bottom:15px;padding:5px;width:300px" placeholder="Repeat"  required=""></asp:TextBox>
             <asp:CompareValidator runat="server" ErrorMessage="Mật khẩu chưa trùng khớp" ControlToValidate="txtpassnew"  ControlToCompare="txtpassnewrepeat" style="color:red;padding-top:5px;font-size:12px"></asp:CompareValidator>
             <asp:Label ID="lbThongbao" style="color:red" runat="server" ></asp:Label>
            <asp:Button ID="btnXong" runat="server" Text="Xong" style="margin-left:120px;margin-bottom:10px;border-radius:5px" OnClick="Button1_Click" />
            
            </div>

        </div>
        <div class="col-md-5"></div>
    </div>

</asp:Content>
