    <%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SOURCE.index" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

       <!-- banner -->
   <%-- <div class="banner">
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
						<li><a href="products.aspx">Branded Foods</a></li>
						<li><a href="household.aspx">Households</a></li>
						<li class="dropdown mega-dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Veggies & Fruits<asp:Label runat="server" class="caret"></asp:Label></a>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>	
										<li><a href="vegetables.aspx">Vegetables</a></li>
										<li><a href="vegetables.aspx">Fruits</a></li>
									</ul>
								</div>                  
							</div>				
						</li>
						<li><a href="kitchen.aspx">Kitchen</a></li>
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<asp:Label runat="server" class="caret"></asp:Label></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="drinks.aspx">Soft Drinks</a></li>
										<li><a href="drinks.aspx">Juices</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><a href="pet.aspx">Pet Food</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Frozen Foods<asp:Label runat="server" class="caret"></asp:Label></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="frozen.aspx">Frozen Snacks</a></li>
										<li><a href="frozen.aspx">Frozen Nonveg</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><a href="bread.aspx">Bread & Bakery</a></li>
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>--%>

		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>Make your <asp:Label runat="server">food</asp:Label> with Spicy.</h3>
								<div class="more">
									<asp:HyperLink runat="server" NavigateUrl="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</asp:HyperLink>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>Make your <asp:Label runat="server">food</asp:Label> with Spicy.</h3>
								<div class="more">
									<asp:HyperLink runat="server" NavigateUrl="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</asp:HyperLink>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<asp:HyperLink runat="server" NavigateUrl="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</asp:HyperLink>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				    $(window).load(function () {
				        $('.flexslider').flexslider({
				            animation: "slide",
				            start: function (slider) {
				                $('body').removeClass('loading');
				            }
				        });
				    });
			  </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
        <%--</div>--%>
<!-- banner bootom -->
	<div class="banner_bottom">
			<div class="wthree_banner_bottom_left_grid_sub">
			</div>
			<div class="wthree_banner_bottom_left_grid_sub1">
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="images/4.jpg" alt=" " class="img-responsive" />
						<div class="wthree_banner_bottom_left_grid_pos">
							<h4>Discount Offer <asp:Label runat="server">25%</asp:Label></h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="images/5.jpg" alt=" " class="img-responsive" />
						<div class="wthree_banner_btm_pos">
							<h3>introducing <asp:Label runat="server">best store</asp:Label> for <i>groceries</i></h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="images/6.jpg" alt=" " class="img-responsive" />
						<div class="wthree_banner_btm_pos1">
							<h3>Save <asp:Label runat="server">Upto</asp:Label> $10</h3>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
	</div>
<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Hot Offers</h3>
			<div class="agile_top_brands_grids">
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="tag"><img src="images/tag.png" alt=" " class="img-responsive" /></div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<asp:HyperLink runat="server" NavigateUrl="single.aspx"><img title=" " alt=" " src="images/1.png" /></asp:HyperLink>		
											<p>fortune sunflower oil</p>
											<h4>$7.99 <asp:Label runat="server">$10.00</asp:Label></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<%--<form action="checkout.aspx" method="post">--%>
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Fortune Sunflower Oil" />
													<input type="hidden" name="amount" value="7.99" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
												</fieldset>
													
											<%--</form>--%>
									
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<asp:HyperLink runat="server" NavigateUrl="single.aspx"><img title=" " alt=" " src="images/3.png" /></asp:HyperLink>		
											<p>basmati rise (5 Kg)</p>
											<h4>$11.99 <asp:Label runat="server">$15.00</asp:Label></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
<%--											<form action="#" method="post">--%>
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="basmati rise" />
													<input type="hidden" name="amount" value="11.99" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
												</fieldset>
<%--											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<asp:HyperLink runat="server" NavigateUrl="single.aspx"><img src="images/2.png" alt=" " class="img-responsive" /></asp:HyperLink>
											<p>Pepsi soft drink (2 Ltr)</p>
											<h4>$8.00 <asp:Label runat="server">$10.00</asp:Label></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
<%--											<form action="#" method="post">--%>
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Pepsi soft drink" />
													<input type="hidden" name="amount" value="8.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
												</fieldset>
<%--											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<asp:HyperLink runat="server" NavigateUrl="single.aspx"><img src="images/4.png" alt=" " class="img-responsive" /></asp:HyperLink>
											<p>dogs food (4 Kg)</p>
											<h4>$9.00 <asp:Label runat="server">$11.00</asp:Label></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
<%--											<form action="#" method="post">--%>
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="dogs food" />
													<input type="hidden" name="amount" value="9.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
												</fieldset>
<%--											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //top-brands -->
<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<h3>Top Products</h3>
			<div class="w3l_fresh_vegetables_grids">
				<div class="col-md-3 w3l_fresh_vegetables_grid w3l_fresh_vegetables_grid_left">
					<div class="w3l_fresh_vegetables_grid2">
						<ul>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="products.aspx">All Brands</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="vegetables.aspx">Vegetables</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="vegetables.aspx">Fruits</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="drinks.aspx">Juices</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="pet.aspx">Pet Food</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="bread.aspx">Bread & Bakery</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="household.aspx">Cleaning</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="products.aspx">Spices</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="products.aspx">Dry Fruits</asp:HyperLink></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><asp:HyperLink runat="server" NavigateUrl="products.aspx">Dairy Products</asp:HyperLink></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="images/8.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
								<img src="images/7.jpg" alt=" " class="img-responsive" />
								<div class="w3l_fresh_vegetables_grid1_rel_pos">
									<div class="more m1">
										<asp:HyperLink runat="server" NavigateUrl="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</asp:HyperLink>
									</div>
								</div>
							</div>
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="images/10.jpg" alt=" " class="img-responsive" />
							<div class="w3l_fresh_vegetables_grid1_bottom_pos">
								<h5>Special Offers</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="images/9.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="images/11.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="agileinfo_move_text">
						<div class="agileinfo_marquee">
							<h4>get <asp:Label runat="server" class="blink_me">25% off</asp:Label> on first order and also get gift voucher</h4>
						</div>
						<div class="agileinfo_breaking_news">
							<asp:Label runat="server"> </asp:Label>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //fresh-vegetables -->


</asp:Content>
