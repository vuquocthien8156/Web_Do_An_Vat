<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SOURCE.login" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

 
		<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <asp:Panel ID="fromLogin" runat="server" class="form">
					<h2>Login to your account</h2>
				
					  <asp:TextBox ID="txtUsernameLogin" autocomplete="username" runat="server" type="text" name="Username" placeholder="Username"  required=""/>
                       <asp:Label ID="lbUserTontai" runat="server" style="color:red;padding-top:5px;font-size:12px" >  </asp:Label>  
<%--                      <asp:CustomValidator ErrorMessage="errormessage" ControlToValidate="txtUsernameLogin" OnServerValidate="Unnamed_ServerValidate" runat="server" />--%>
                      <asp:TextBox ID="PasswordLogin" autocomplete="current-password" runat="server" type="password" name="Password" placeholder="Password"  required="" />
					  <asp:Button ID="Login" runat="server" type="submit" Text="Login" OnClick="Login_Click1" />
			
				  </asp:Panel>
				  <asp:Panel ID="fromRegister" runat="server" class="form">
					<h2>Create an account</h2>
					
                        <asp:TextBox ID="txtName" runat="server" type="text" name="Username" placeholder="Name"  required="" />
                        <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Không được bỏ trống" ControlToValidate="txtName" runat="server" style="color:red;font-size:12px" />
                        
                        <asp:TextBox ID="txtUsername" autocomplete="username" runat="server" type="text" name="Username" placeholder="Username" required="" />
                        <asp:RequiredFieldValidator ErrorMessage="Không được bỏ trống" Display="Dynamic"  ControlToValidate="txtUsername"  style="color:red;font-size:12px" runat="server" />
                        <asp:RegularExpressionValidator  runat="server" Display="Dynamic"  ControlToValidate="txtUsername" style="color:red;font-size:12px" ErrorMessage="Tên không hợp lệ" ValidationExpression="^\w+[a-zA-Z_0-9]$" ></asp:RegularExpressionValidator>
                        <asp:Label ID="lbUserTrung" runat="server"  style="color:red;font-size:12px">  </asp:Label>
                       
                        <asp:TextBox ID="txtPassword" autocomplete= "new-password" runat="server" type="password" name="Password" placeholder="Password"   required=""  />
                        <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="txtPassword" runat="server" />
                        <asp:TextBox ID="txtPasswordrepeat"  autocomplete= "new-password" runat="server" type="password" name="Password" placeholder="Passwordrepeat" style="margin-bottom:0"  required="" />
                        <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="txtPasswordrepeat" runat="server" /><br />
                        <asp:CompareValidator runat="server" Display="Dynamic" ErrorMessage="Mật khẩu chưa trùng khớp" ControlToValidate="txtPassword"  ControlToCompare="txtPasswordrepeat" style="color:red;padding-top:5px;font-size:12px"></asp:CompareValidator>
                       
                       <asp:TextBox ID="txtEmail" runat="server" type="email" name="Email" placeholder="Email Address" style="margin-bottom:0"  required="" />
                        <asp:RequiredFieldValidator  Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="txtEmail" runat="server" /><br />
                        <asp:RegularExpressionValidator Display="Dynamic" runat="server"  style="color:red;font-size:12px"  ControlToValidate="txtEmail" ErrorMessage="Email khong hop le" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ></asp:RegularExpressionValidator>
                        <asp:Label ID="lbThongbaotrungemail" Display="Dynamic"  style="color:red;font-size:12px" runat="server" /> 

                       <asp:TextBox ID="txtAddress" runat="server" type="text" name="Diachi" placeholder="Address"  required=""  />
                      <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="txtAddress" runat="server" />
                       
                      <asp:TextBox ID="txtphonenumber" runat="server" type="text" name="Phone" placeholder="Phone Number" style="margin-bottom:0"  required="" MaxLength="11"  />
                      <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="txtphonenumber" runat="server" />  <br />
                      <asp:RegularExpressionValidator Display="Dynamic" runat="server"  style="color:red;font-size:12px" ID="requiredforPhone"  ControlToValidate="txtphonenumber" Type="Interger" ErrorMessage="Phải có từ 9 đến 11 số"  ValidationExpression="[0-9]{9,11}$" ></asp:RegularExpressionValidator>
                       
                      <asp:Button  OnClick="register_Click" ID="register" runat="server" Text="Register"  />
					
  
				  </asp:Panel>
                   <div class="cta"><a href="GuiMa.aspx">Forgot your password?</a></div>
				</div>
			</div>
			<script>
			    $('.toggle').click(function () {
			        // Switches the Icon
			        $(this).children('i').toggleClass('fa-pencil');
			        // Switches the forms  
			        $('.form').animate({
			            height: "toggle",
			            'padding-top': 'toggle',
			            'padding-bottom': 'toggle',
			            opacity: "toggle"
			        }, "slow");
			    });
			</script>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				</div>
				<h3>Nam libero tempore</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-bar-chart" aria-hidden="true"></i>
				</div>
				<h3>officiis debitis aut rerum</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<h3>eveniet ut et voluptates</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter-top-serv-btm -->


</asp:Content>
