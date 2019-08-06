<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="mail.aspx.cs" Inherits="SOURCE.mail" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">


		<div class="w3l_banner_nav_right">
<!-- mail -->
		<div class="mail">
			<h3>Mail Us</h3>
			<div class="agileinfo_mail_grids">
				<div class="col-md-4 agileinfo_mail_grid_left">
					<ul>
						<li><i class="fa fa-home" aria-hidden="true"></i></li>
						<li>address<asp:Label runat="server">868 1st Avenue NYC.</asp:Label></li>
					</ul>
					<ul>
						<li><i class="fa fa-envelope" aria-hidden="true"></i></li>
						<li>email<asp:Label runat="server"><a href="mailto:Doanvat.1No2@gmail.com">Doanvat.1No2@gmail.com</a></asp:Label></li>
					</ul>
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i></li>
						<li>call to us<asp:Label runat="server">(+123) 233 2362 826</asp:Label></li>
					</ul>
				</div>
				<div class="col-md-8 agileinfo_mail_grid_right">
			            
						<div class="col-md-6 wthree_contact_left_grid">
							<asp:TextBox  ID="tbName" runat="server" name="Name" value="Name*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required="" />
							<asp:TextBox ID="tbEmail" runat="server" type="email" name="Email" value="Email*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required="" />
						</div>
						<div class="col-md-6 wthree_contact_left_grid">
							<asp:TextBox ID="tbTelephone" runat="server" name="Telephone" value="Telephone*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required="" />
							<asp:TextBox ID="tbSub" runat="server" name="Subject" value="Subject*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required="" />
						</div>
						<div class="clearfix"> </div>
						<asp:TextBox ID="tbMess" runat="server" TextMode="MultiLine" Height="250px"  name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="" >Message...</asp:TextBox>
						<asp:Label runat="server" ID="lbThongbao"></asp:Label><br />
                        <asp:Button ID="btnGui" runat="server" type="submit" Text="Submit" OnClick="btnGui_Click" />
						<asp:Button ID="btnClear" runat="server" type="reset" Text="Clear" OnClick="btnClear_Click" />
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //mail -->
		</div>
		<div class="clearfix"></div>
	<%--</div>--%>
<!-- //banner -->
<!-- map -->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d96748.15352429623!2d-74.25419879353115!3d40.731667701988506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sshopping+mall+in+New+York%2C+NY%2C+United+States!5e0!3m2!1sen!2sin!4v1467205237951" style="border:0"></iframe>
	</div>
<!-- //map -->


</asp:Content>
