<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Xacnhan.aspx.cs" Inherits="SOURCE.Xacnhan" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">
     <div class="container">

        <div class="col-md-3"></div>
        <div class="col-md-4 account-left" style="background:#505050">
            <div style="margin-left:25px;margin-top:20px">

            <asp:Label runat="server" ID="lbChao" Font-Bold=  "True" Font-Size="Medium" ForeColor="#f3f3f3" style="margin-left:35px;margin-top:20px"> </asp:Label><br />
            <asp:TextBox ID="txtMaxacnhan" runat="server" style="margin-top:8px;padding:5px;width:300px" placeholder="Mã xác nhận"  required=""></asp:TextBox>
            <asp:Button ID="btnXacnhan" runat="server" Text="Gửi" style="margin:10px 0 10px 10px;margin-bottom:10px;border-radius:5px" OnClick="btnXacnhan_Click" />
            
            </div>

        </div>
        <div class="col-md-5"></div>
    </div>
</asp:Content>
