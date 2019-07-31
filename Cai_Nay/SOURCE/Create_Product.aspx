<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="Create_Product.aspx.cs" Inherits="SOURCE.Create_Product" EnableEventValidation="false" %>
<%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Namespace="CKFinder" Assembly="CKFinder" TagPrefix="CKFinder" %>
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
                        <h3>NEW PRODUCT</h3>
					</div>

                    <div style="margin-top:8px">
						<span>[ProductName]</span>
                        <asp:TextBox runat="server" ID="txtProductName" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" required=""></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>[Description]</span>
						<CKFinder:FileBrowser ID="CKEditorControl1" runat="server" Visible="false" OnLoad="CKEditorControl1_Load"></CKFinder:FileBrowser>
                    <CKEditor:CKEditorControl ID="txtDescription" runat="server"  required=""></CKEditor:CKEditorControl>
					</div>

                    <div style="margin-top:8px">
						<span>[Price]</span>
						<asp:TextBox ID="txtPrice" runat="server"  TextMode="Number" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;"  required=""></asp:TextBox>
					</div>

                    <div style="margin-top:8px">
						<span>[Vailuable]<br />
                        </span>&nbsp;<asp:CheckBox ID="cbVailuable" Text="Vailuable" runat="server" />
					</div>
                    
					<div style="margin-top:8px">
						<span>[Producer]<br />
                        </span><asp:DropDownList ID="ddlProducer" runat="server" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" DataSourceID="SqlDataSource2" DataTextField="TenNCC" DataValueField="MaNCC"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CSDL_Web_Do_an_vatConnectionString %>" SelectCommand="SELECT [MaNCC], [TenNCC] FROM [NhaCungCap]"></asp:SqlDataSource>
					</div>
                    <div style="margin-top:8px">
						<span>[Gotagy]</span>
                        <asp:DropDownList ID="ddlGotagy" runat="server" style="font-size:14px;width:100%;padding:10px 10px;border:1px solid #242424;outline:none;font-family:'Lato', sans-serif;" DataSourceID="SqlDataSource1" DataTextField="Tenloaisp" DataValueField="Maloaisp"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSDL_Web_Do_an_vatConnectionString %>" SelectCommand="SELECT [Maloaisp], [Tenloaisp] FROM [LoaiSanPham]"></asp:SqlDataSource>
					</div>
                    <div style="margin-top:8px">
                        <span>[IMAGE]<br />
                        </span>
                        <asp:Image ID="Image1" runat="server" Height="100px" Visible="False" Width="100px" />                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:ListView ID="LvImg" runat="server" Visible ="false">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" Height="100px" Width="100px" OnCommand="ImageButton1_Command" runat="server" ImageUrl='<%# DataBinder.Eval(Container , "DataItem") %>' CommandArgument='<%# DataBinder.Eval(Container , "DataItem") %>' />
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:Button ID="Button1" runat="server" Text="LOADIMAGE" style="background:red;color:white;border:1px solid #242424;border-radius:3px" OnClick="Button1_Click" />
                    </div> <br />
                    <asp:Label ID="lbthongbao" runat="server" style="color:red;font-size:14px" />	<br />		
					<div>
						<asp:Button runat="server" ID="btnSubmit" Text="ADD"  style ="margin-top:10px;width:50px;height:50px;background:red;color:white;border:1px solid #242424;border-radius:3px" OnClick="btnSubmit_Click"></asp:Button>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-account------------------------------------------------------------------------------------------>

</asp:Content>
