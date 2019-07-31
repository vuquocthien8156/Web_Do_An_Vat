<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="SOURCE.household" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

   
		<div class="w3l_banner_nav_right">
			<div class="w3l_banner_nav_right_banner4">
				<h3>Best Deals For New Products<asp:Label runat="server" class="blink_me"></asp:Label></h3>
			</div>
			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_sub">
				<h3>Household Products</h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					<h6>cleaning</h6>



                    <asp:Repeater ID="rp_products" runat="server" >
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
											<a href="single.aspx?productid=<%# Eval("Masp") %>&nccId=<%# Eval("NCC") %>"> <img src=" <%# Eval("URL") %> " alt=" " class="img-responsive" /></a>
											<p> <%# Eval("Tensp") %> </p>
                                            <p> <%# Eval("Diachi") %> </p>
											<h4> <%# Eval("GiaSP") %>  <asp:Label runat="server">Giảm Giá</asp:Label></h4>
										</div>
                            <div class="snipcart-details"> 
                        <a href="products.aspx?productidd=<%#Eval("Masp")%>&catalogy=<%#Eval("Loaisp")%>" style="border:4px dotted black;padding:5px;background:red;color:white">Add to cart</a>
                            </div>

										<%--<div class="snipcart-details">
											<%--<form method="post">--%>
												<%--<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="dishwash gel, lemon" />
													<input type="hidden" name="amount" value= " <%# Eval("GiaSP") %>" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="VND" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<asp:Button OnClick="Unnamed_Click" runat="server" name="submit" Text="Add to cart" class="button" CommandName="abc"/>
												</fieldset>--%>
											<%--</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
						</div>
			
                        </ItemTemplate>
                    </asp:Repeater>           

					
					<div class="clearfix"> </div>
                    <div style="margin-top:20px;margin-left:300px">
                         <asp:Button ID="btnDau" runat="server" Text="Về Đầu" OnClick="btnDau_Click" style="color:white;background:red;border-radius:2px" />
                        <asp:Button ID="btnVe" runat="server" Text="Về" OnClick="btnVe_Click" style="color:white;background:red;border-radius:2px" />
                        <asp:TextBox ID="tbHienthi" runat="server" style="width:50px"></asp:TextBox>
                        <asp:Button ID="btnQua" runat="server" Text="Qua" OnClick="btnQua_Click" style="color:white;background:red;border-radius:2px" />
                        <asp:Button ID="btnCuoi" runat="server" Text="Tới Cuối" OnClick="btnCuoi_Click" style="color:white;background:red;border-radius:2px" />
                    </div>
                    
				</div>

			</div>
		</div>
		<div class="clearfix"></div>
	<%--</div>--%>
<!-- //banner -->


</asp:Content>
