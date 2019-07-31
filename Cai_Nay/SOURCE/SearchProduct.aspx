<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="SOURCE.SearchProduct" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="container-fluid ">
    		<div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_sub">
                 <asp:Label ID="lbKetqua" runat="server" /><br />
				<div class="w3ls_w3l_banner_nav_right_grid1">
                   
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
											<h4> <%# Eval("GiaSP") %>  <asp:Label runat="server">Giảm giá</asp:Label></h4>
										                </div>
                                            <div class="snipcart-details"> 
                                                  <a href="SearchProduct.aspx?productidd=<%#Eval("Masp")%>" style="border:4px dotted black;padding:5px;background:red;color:white">Add to cart</a>
                                            </div>

										</div>
									</div>
								</figure>
							</div>
						</div>
						</div>

                        </ItemTemplate>
                    </asp:Repeater>           
                    
				</div>
                
					
					<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"></div>
        </div>
</asp:Content>
