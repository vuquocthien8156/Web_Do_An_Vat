<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="SOURCE.checkout" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

		<div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
			<h3>Chec<asp:Label runat="server">kout</asp:Label></h3>
			
	      <div class="checkout-right">
					<h4>Your shopping cart contains: <asp:Label runat="server"> <%= (int)Session["SL"] %>  Products</asp:Label></h4>
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>Product</th>
							<th>Quality</th>
							<th>Product Name</th>
						    
							<th>Price</th>
                            <th>Thành tiền</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody>
                        <asp:Repeater runat="server" ID="rptforCheckout" >
                            <ItemTemplate>
                             <tr class="rem1">

                                         <td class="invert"> <%# Container.ItemIndex + 1 %></td>

						            
						        <td class="invert-image"><a href="single.aspx"><img src="<%# Eval("Urlproduct") %>" style="width:50px;height:50px" alt=" " class="img-responsive"></a></td>
						        <td class="invert">
							         <div class="quantity"> 
								        <div class="quantity-select">                           
                                            <asp:TextBox ID="tbSL" runat="server" Text='<%# Eval("Soluong") %>' style="width:50px" TextMode="Number" />
                                            <a href="checkout.aspx?MaspSL=<%# Eval("Masp") %>" style="border:4px dotted black;padding:3px;background:red;color:white">Cập nhập</a>
								        </div>
							        </div>
						        </td>
						        <td class="invert"><%# Eval("Tensp") %></td>
						
						        <td class="invert"><%# Eval("Price") %></td>
                                <td class="invert"><%# Eval("Thanhtien") %></td>
						        <td class="invert">
							        <div class="rem">
                                        <a href="checkout.aspx?Masp=<%# Eval("Masp") %>" style="border:4px dotted black;padding:3px;background:red;color:white">Xóa</a>   							        </div>

						        </td>
					        </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                       
				</tbody></table>
			</div>
			<div class="checkout-left">	
				<div class="col-md-4 checkout-left-basket">
					<h4><a href="allProducts.aspx">Continue to basket</a></h4>
					<ul>
						<li style="font-weight:700">Total <i>-</i> <asp:Label runat="server"><%=ViewState["Total"] %></asp:Label></li>
					</ul>
				</div>
				<div class="col-md-8 address_form_agile">
					  <h4>Add a new Details</h4>
<%--				<form action="payment.aspx" method="post" class="creditly-card-form agileinfo_form">--%>
									<section class="creditly-wrapper wthree, w3_agileits_wrapper">
										<div class="information-wrapper">
											<div class="first-row form-group">
												<div class="controls">
													<label class="control-label">Full name: </label>
													<asp:TextBox ID="tbName" runat="server" class="billing-address-name form-control" type="text" name="name" placeholder="Full name" />
                                                    <asp:RequiredFieldValidator  Display="Dynamic" ErrorMessage="Bạn chưa nhập" style="color:red;font-size:12px" ControlToValidate="tbName" runat="server" />
                                                </div>
												<div class="w3_agileits_card_number_grids">
													<div class="w3_agileits_card_number_grid_left">
														<div class="controls">
															<label class="control-label">Mobile number:</label>
														    <asp:TextBox ID="tbSDT" runat="server" class="form-control" type="text" placeholder="Mobile number"  />
                                                            <asp:RequiredFieldValidator  Display="Dynamic" ErrorMessage="Bạn chưa nhập" style="color:red;font-size:12px" ControlToValidate="tbSDT" runat="server" />
                                                        </div>
													</div>
													<div class="w3_agileits_card_number_grid_right">
														<div class="controls">
															<label class="control-label">Email:</label>
														 <asp:TextBox ID="tbEmail" runat="server" class="form-control" type="text" placeholder="Email" style="margin-bottom:0" />
                                                            <asp:RequiredFieldValidator  Display="Dynamic" ErrorMessage="Không được bỏ trống" style="color:red;font-size:12px" ControlToValidate="tbEmail" runat="server" /><br />
                                                             <asp:RegularExpressionValidator Display="Dynamic" runat="server"  style="color:red;font-size:12px"  ControlToValidate="tbEmail" ErrorMessage="Email khong hop le" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ></asp:RegularExpressionValidator>
														</div>
													</div>
													<div class="clear"> </div>
												</div>
												<div class="controls">
													<label class="control-label">Address:</label>
												 <asp:TextBox ID="tbAddress" runat="server" class="form-control" type="text" placeholder="Address"  />
                                                    <asp:RequiredFieldValidator  Display="Dynamic" ErrorMessage="Không được bỏ trống" ControlToValidate="tbAddress" style="color:red;font-size:12px" runat="server" />
												</div>
													<div class="controls">
															<label class="control-label">Note: </label><br />
                                                        <asp:TextBox ID="tbGhichu" TextMode="MultiLine" runat="server" placeholder="Note" Height="200px" Width="100%" style="padding:15px 10px; font-size:14px;display:block;border:1px solid #e7e7e7;" /> 
                                                           
													</div>
											</div>
											<asp:Button runat="server" class="submit check_out" Text="Delivery to this Address" style="color:white;background:#84c639;font-size:1.2em;font-weight:600;border:none" Height="70px" OnClick="Unnamed_Click" />
										</div>
									</section>
						<%--		</form>--%>
									<div class="checkout-right-basket">
				        	<a href="payment.aspx">Make a Payment <asp:Label runat="server" class="glyphicon glyphicon-chevron-right" aria-hidden="true"></asp:Label></a>
			      	</div>
					</div>
			
				<div class="clearfix"> </div>
				
			</div>

		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
	<%--</div>--%>
<!-- //banner -->


</asp:Content>
