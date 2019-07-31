<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="SOURCE.single" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

		<div class="w3l_banner_nav_right">
			<div class="w3l_banner_nav_right_banner3" style="background:url(<%=_NCC.Url %>)">
				<h3><%= _NCC.TenNCC %><asp:Label runat="server" class="blink_me"></asp:Label></h3>
			</div>
			<div class="agileinfo_single">
				<h5><%= _product.Tensp %></h5>
				<div class="col-md-4 agileinfo_single_left">
					<img id="example" src="<%= _product.Url %>" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-8 agileinfo_single_right">
					<div class="rating1">
						<asp:Label runat="server" class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</asp:Label>
					</div>
					<div class="w3agile_description">
						<h4>Description :</h4>
						<p><%= _product.Mota %></p>
					</div>
					<div class="snipcart-item block">
                        <div class="snipcart-thumb agileinfo_single_right_snipcart">
                              <p><%= _NCC.Diachi %></p>
                         </div>
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4><%= _product.Gia %> <asp:Label runat="server">Giảm giá</asp:Label></h4>
						</div>

          				<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4>Số lượng</h4>
                              <asp:TextBox ID="tbSL" runat="server" TextMode="Number" Width="50px" />
						</div>
                    
						<div class="snipcart-details agileinfo_single_right_details">
                          <asp:LinkButton runat="server" style="border:4px dotted black;padding:5px;background:red;color:white" OnClick="Unnamed_Click" Text="Add to cart"></asp:LinkButton>
<%--							<form action="#" method="post">
								<fieldset>
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" />
									<input type="hidden" name="business" value=" " />
									<input type="hidden" name="item_name" value="<%= _product.Tensp %>" />
									<input type="hidden" name="amount" value="<%= _product.Gia %>" />
									<input type="hidden" name="discount_amount" value="1.00" />
									<input type="hidden" name="currency_code" value="USD" />
									<input type="hidden" name="return" value=" " />
									<input type="hidden" name="cancel_return" value=" " />
									<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
								</fieldset>
							</form>--%>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"></div>
<%--	</div>--%>
<!-- //banner -->
<!-- brands -->
	<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_popular">
		<div class="container">
			<h3><%= _NCC.TenNCC %></h3>
            <h3 style="font-size:22px"> <span class="glyphicon glyphicon-map-marker"></span> <%= _NCC.Diachi %> <br /><asp:Label runat="server" style="color:green"><span class="glyphicon glyphicon-ok-sign"></span> Đang mở cửa</asp:Label> <br /><span class="glyphicon glyphicon-time"></span> <%= _NCC.Giohoatdong %> </h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					<h6></h6>

                    <asp:Repeater runat="server" ID="RptProuct_NCC" >
                        <ItemTemplate>
                        <div class="col-md-3 w3ls_w3l_banner_left">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="single.aspx"><img src="<%# Eval("URL") %>" alt=" " class="img-responsive" /></a>
											<p><%# Eval("Tensp") %></p>
											<h4><%# Eval("GiaSP") %> <asp:Label runat="server">$5.00</asp:Label></h4>
										</div>
										<div class="snipcart-details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="knorr instant soup" />
													<input type="hidden" name="amount" value="3.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button runat="server" name="submit" Text="Add to cart" class="button" />
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
						</div>
					</div>
                      </ItemTemplate>
                    </asp:Repeater>
				
					<div class="clearfix"> </div>
				</div>
   
		</div>
	</div>
<!-- //brands -->

</asp:Content>
