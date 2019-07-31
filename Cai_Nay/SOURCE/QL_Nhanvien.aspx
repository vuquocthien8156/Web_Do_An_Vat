<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateAdmin.Master" AutoEventWireup="true" CodeBehind="QL_Nhanvien.aspx.cs" Inherits="SOURCE.QL_Nhanvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <div class="container">
        <asp:HyperLink runat="server" NavigateUrl="Create_Nhanvien.aspx" ID="Label2"  Text="THÊM NHÂN VIÊN" 
            Font-Bold="True" Font-Size="Medium"></asp:HyperLink><br />
        <asp:Label ID="Label5" runat="server" Text="DANH SÁCH NHÂN VIÊN" 
            Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF"></asp:Label>
        <asp:GridView ID="gvNhanvien" runat="server" AutoGenerateColumns="False"  
            Width="100%" DataKeyNames="Manv" 
            onrowcancelingedit="gvCustomers_RowCancelingEdit" 
            onrowdeleting="gvCustomers_RowDeleting" onrowediting="gvCustomers_RowEditing" 
            onrowupdating="gvCustomers_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Manv" ReadOnly="true" HeaderText="Ma NV" />
            <asp:TemplateField HeaderText="Firstname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenNV") %>' Width="104px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenNV") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlGender" runat="server" 
                            SelectedValue='<%# Eval("Phai") %>' >
                            <asp:ListItem Value="False">Nam</asp:ListItem>
                            <asp:ListItem Value="True">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" 
                            Text='<%# CheckGioiTinh(Eval("Phai")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Birthday">
                    <EditItemTemplate>
                        <asp:TextBox ID="calendarNS" runat="server" TextMode="Date"
                            Text='<%# HienNgaySinh(Eval("Ngaysinh")) %>' Width="160px" required="" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" 
                            Text='<%# HienThiNgaySinh(Eval("Ngaysinh")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Diachi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Diachi") %>' Width="104px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Diachi") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Ngayvaolam">
                    <EditItemTemplate>
                        <asp:TextBox ID="calendarNVL" runat="server" TextMode="Date"
                            Text='<%# HienNgaySinh(Eval("Ngayvaolam")) %>' Width="160px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbNgaysinh" runat="server" 
                            Text='<%# HienThiNgaySinh(Eval("Ngayvaolam")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Loai NV">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlLoaiNV" Width="80px" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLoainv" DataValueField="MaloaiNV">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSDL_Web_Do_an_vatConnectionString %>" SelectCommand="SELECT [TenLoainv], [MaloaiNV] FROM [LoaiNV]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbLoai" runat="server" Text='<%# Eval("TenLoainv") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="TenTK">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server" Text='<%# Bind("TenTK") %>' Width="104px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("TenTK") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mail">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mail") %>' Width="104px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Mail") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mathanhtoan">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Mathanhtoan") %>' Width="104px" required=""></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Mathanhtoan") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:CommandField HeaderText="Command" ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>


</asp:Content>
