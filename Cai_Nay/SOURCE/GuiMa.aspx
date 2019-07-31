<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="GuiMa.aspx.cs" Inherits="SOURCE.Xacnhan1" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    
    <div class="container">

        <div class="col-md-3"></div>
        <div class="col-md-4 account-left" style="background:#505050">
            <div style="margin-left:25px;margin-top:20px">

            <asp:Label runat="server"  Text="Vui lòng nhập email để lấy mã" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" style="margin-left:35px;margin-top:20px"> </asp:Label><br />
            <asp:TextBox ID="tbEMail" TextMode="Email" runat="server" style="margin-top:8px;padding:5px;width:300px" placeholder="Email"  required=""></asp:TextBox>
            <asp:RegularExpressionValidator  runat="server"  style="color:red;font-size:12px"  ControlToValidate="tbEMail" ErrorMessage="Email khong hop le" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ></asp:RegularExpressionValidator>
<%--            <asp:CustomValidator ErrorMessage="Không tồn tại email này" style="color:red;font-size:12px" ControlToValidate="tbEMail"  OnServerValidate="Unnamed_ServerValidate"  runat="server"/><br />--%>
            <asp:Label ID="lbThongbao" runat="server" style="color:red;font-size:12px" />
            <asp:Button ID="btnGui" runat="server" Text="Gửi" style="margin:10px 0 10px 10px;border-radius:5px" OnClick="Button1_Click" />
            
            </div>

        </div>
        <div class="col-md-5"></div>
    </div>
</asp:Content>
