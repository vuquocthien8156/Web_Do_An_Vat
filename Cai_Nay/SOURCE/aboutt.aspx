<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="aboutt.aspx.cs" Inherits="SOURCE.aboutt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">

<%--    <!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="index.aspx">Home</asp:HyperLink><asp:Label runat="server">|</asp:Label></li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<asp:Label runat="server" class="sr-only">Toggle navigation</asp:Label>
					<asp:Label runat="server" class="icon-bar"></asp:Label>
					<asp:Label runat="server" class="icon-bar"></asp:Label>
					<asp:Label runat="server" class="icon-bar"></asp:Label>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><asp:HyperLink runat="server" NavigateUrl="products.aspx">Branded Foods</asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="household.aspx">Households</asp:HyperLink></li>
						<li class="dropdown mega-dropdown active">
							<asp:HyperLink runat="server" NavigateUrl="#" class="dropdown-toggle" data-toggle="dropdown">Veggies & Fruits<asp:Label runat="server" class="caret"></asp:Label></asp:HyperLink>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>	
										<li><asp:HyperLink runat="server" NavigateUrl="vegetables.aspx">Vegetables</asp:HyperLink></li>
										<li><asp:HyperLink runat="server" NavigateUrl="vegetables.aspx">Fruits</asp:HyperLink></li>
									</ul>
								</div>                  
							</div>				
						</li>
						<li><asp:HyperLink runat="server" NavigateUrl="kitchen.aspx">Kitchen</asp:HyperLink></li>
						<li class="dropdown">
							<asp:HyperLink runat="server" NavigateUrl="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<asp:Label runat="server" class="caret"></asp:Label></asp:HyperLink>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><asp:HyperLink runat="server" NavigateUrl="drinks.aspx">Soft Drinks</asp:HyperLink></li>
										<li><asp:HyperLink runat="server" NavigateUrl="drinks.aspx">Juices</asp:HyperLink></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><asp:HyperLink runat="server" NavigateUrl="pet.aspx">Pet Food</asp:HyperLink></li>
						<li class="dropdown">
							<asp:HyperLink runat="server" NavigateUrl="#" class="dropdown-toggle" data-toggle="dropdown">Frozen Foods<asp:Label runat="server" class="caret"></asp:Label></asp:HyperLink>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><asp:HyperLink runat="server" NavigateUrl="frozen.aspx">Frozen Snacks</asp:HyperLink></li>
										<li><asp:HyperLink runat="server" NavigateUrl="frozen.aspx">Frozen Nonveg</asp:HyperLink></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><asp:HyperLink runat="server" NavigateUrl="bread.aspx">Bread & Bakery</asp:HyperLink></li>
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>--%>
		<div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
			<h3>About Us</h3>
			<p class="animi">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
				praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
				excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui 
				officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem 
				rerum facilis est et expedita distinctio.</p>
			<div class="agile_about_grids">
				<div class="col-md-6 agile_about_grid_right">
					<img src="images/31.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-6 agile_about_grid_left">
					<ol>
						<li>laborum et dolorum fuga</li>
						<li>corrupti quos dolores et quas</li>
						<li>est et expedita distinctio</li>
						<li>deleniti atque corrupti quos</li>
						<li>excepturi sint occaecati cupiditate</li>
						<li>accusamus et iusto odio</li>
					</ol>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
<%--	</div>--%>
<!-- //banner -->
<!-- team -->
	<div class="team">
		<div class="container">
			<h3>Meet Our Amazing Team</h3>
			<div class="agileits_team_grids">
				<div class="col-md-3 agileits_team_grid">
					<img src="images/32.jpg" alt=" " class="img-responsive" />
					<h4>Martin Paul</h4>
					<p>Manager</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></asp:HyperLink></li>
					</ul>
				</div>
				<div class="col-md-3 agileits_team_grid">
					<img src="images/33.jpg" alt=" " class="img-responsive" />
					<h4>Michael Rick</h4>
					<p>Supervisor</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></asp:HyperLink></li>
					</ul>
				</div>
				<div class="col-md-3 agileits_team_grid">
					<img src="images/34.jpg" alt=" " class="img-responsive" />
					<h4>Thomas Carl</h4>
					<p>Supervisor</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></asp:HyperLink></li>
					</ul>
				</div>
				<div class="col-md-3 agileits_team_grid">
					<img src="images/35.jpg" alt=" " class="img-responsive" />
					<h4>Laura Lee</h4>
					<p>CEO</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></asp:HyperLink></li>
						<li><asp:HyperLink runat="server" NavigateUrl="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></asp:HyperLink></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3>Testimonials</h3>
				<div class="w3_testimonials_grids">
					<div class="wmuSlider example1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>Andrew Smith <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>Thomson Richard <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>Crisp Kale <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>John Paul <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>Rosy Carl <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="col-md-6 w3_testimonials_grid">
										<p><i class="fa fa-quote-right" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
											voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
											repellat.</p>
										<h4>Rockson Doe <asp:Label runat="server">Customer</asp:Label></h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
						</div>
					</div>
					<script src="js/jquery.wmuSlider.js"></script> 
					<script>
					    $('.example1').wmuSlider();
					</script> 
				</div>
		</div>
	</div>
<!-- //testimonials -->

</asp:Content>
