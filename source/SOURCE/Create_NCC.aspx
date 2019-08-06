<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="Create_NCC.aspx.cs" Inherits="SOURCE.Insert_NCC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <div>
		<div class="container" > 
			<div class="account-bottom">
				<div class="col-md-6 account-left">
					<div style="margin-top:8px" class="account-top heading">
                        <h3>
                            <asp:HyperLink ID="Label1" NavigateUrl="~/QL_NCC.aspx" runat="server" Text="<= Quay lại"></asp:HyperLink>
                        </h3>
						<h3>ADD PRODUCER</h3>
					</div>

                    <div style="margin-top:8px">
						<span>Product Name</span>
                        <asp:TextBox required="" runat="server" ID="txtProductName" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>Address</span>
                        <asp:TextBox required="" runat="server" ID="txtAddress" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"></asp:TextBox>
					</div>

                   <div style="margin-top:8px">
						<span>Active Time</span>
                        <asp:TextBox required="" runat="server" ID="txtActiveTime" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"></asp:TextBox>
					</div>

                     <div style="margin-top:8px">
						<span>Ship</span>
                        <asp:CheckBox ID="cbShip" Text="Ship" runat="server" />
					</div>

                    <div style="margin-top:8px">
						<span>Mail</span>
                        <asp:TextBox required="" runat="server" ID="txtMail" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"></asp:TextBox>
					</div>
                   
					<div style="margin-top:8px">
						<span>URL</span><br />
                         <asp:Image ID="URL" runat="server" Height="100px" Visible="False" Width="100px" required="" />                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:ListView ID="LvImg" runat="server" Visible ="false">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" Height="100px" Width="100px" OnCommand="ImageButton1_Command" runat="server" ImageUrl='<%# DataBinder.Eval(Container , "DataItem") %>' CommandArgument='<%# DataBinder.Eval(Container , "DataItem") %>' />
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:Button ID="Button1" runat="server" Text="LOADIMAGE" style="background:red;color:white;border:1px solid #242424;border-radius:3px" OnClick="Button1_Click" />
					</div>

                    <div>
                        <asp:Label ID="lbThongbao" style="color:red" runat ="server" ></asp:Label><br />
						<asp:Button runat="server" ID="btnSubmit" Text="SUBMIT"  style ="margin-top:10px;width:100px;height:50px;background:red;color:white;border:1px solid #242424;border-radius:3px" OnClick="btnSubmit_Click"></asp:Button>
					</div>

				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

</asp:Content>
