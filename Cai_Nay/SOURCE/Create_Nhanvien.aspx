<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="Create_Nhanvien.aspx.cs" Inherits="SOURCE.Create_Nhanvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       	<!--start-account------------------------------------------------------------------------------------------------>
	<div>
		<div class="container" > 
			<div class="account-bottom">
				<div class="col-md-6 account-left">
					<div style="margin-top:8px" class="account-top heading">
						<h3>
                            <asp:HyperLink ID="Label1" NavigateUrl="~/QL_product.aspx" runat="server" Text="<= Quay lại"></asp:HyperLink>
                        </h3>
                        <h3>NEW STAFF</h3>
					</div>

                    <div style="margin-top:8px">
						<span>[Name]</span>
                        <asp:TextBox runat="server" ID="tbName" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>[SEX]<br />
                        </span>&nbsp;<asp:RadioButton ID="cbNam" Text="Nam" runat="server" /> <asp:RadioButton ID="cbNu" Text="Nữ" runat="server" />
					</div>

                     <div style="margin-top:8px">
						<span>[Ngày Sinh]</span>
                        <asp:TextBox runat="server" TextMode="Date" ID="tbNgaysinh" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>[Address]</span>
						<asp:TextBox ID="tbAddress" runat="server" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"  required=""></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>[Ngày Vào Làm]</span>
                        <asp:TextBox runat="server" TextMode="Date" ID="tbNVlam" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
					</div>

					<div style="margin-top:8px">
						<span>[CatalogyStaff]<br /></span>
                        <asp:DropDownList runat="server" ID="ddlCatalogyStaff" DataSourceID="SqlDataSourceLoaiNV" DataTextField="TenLoainv" DataValueField="MaloaiNV" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSourceLoaiNV" runat="server" ConnectionString="<%$ ConnectionStrings:CSDL_Web_Do_an_vatConnectionString %>" SelectCommand="SELECT [MaloaiNV], [TenLoainv] FROM [LoaiNV]"></asp:SqlDataSource>
					</div>
                    <div style="margin-top:8px">
						<span>[Username]</span>
                        <asp:TextBox runat="server" ID="tbUsername" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
					</div>
                    <div style="margin-top:8px">
                        <span>[Password]</span>
                        <asp:TextBox runat="server" ID="tbpass" TextMode="Password" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
                    </div>	
                    
                    <div style="margin-top:8px">
                        <span>[Re_Enter_Password]</span>
                        <asp:TextBox runat="server" ID="tbRePass" TextMode="Password" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
                    </div>
                    
                   <div style="margin-top:8px">
                        <span>[Email]</span>
                        <asp:TextBox runat="server" ID="tbEmail" TextMode="Email" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
                    </div>
                    
                    <div style="margin-top:8px">
                        <span>[Mã thanh toán]</span>
                        <asp:TextBox runat="server" ID="tbMaThanhToan" TextMode="Password" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
                        <asp:Label ID="lbThongbao" runat="server" style="color:red" />
                    </div>
                    	
					<div>
						<asp:Button runat="server" OnClick="btnSubmit_Click" ID="btnSubmit" Text="ADD"  style ="margin-top:10px;width:50px;height:50px;background:red;color:white;border:1px solid #242424;border-radius:3px" ></asp:Button>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-account------------------------------------------------------------------------------------------>

</asp:Content>
