using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BUS;

namespace SOURCE
{
    public partial class login : System.Web.UI.Page
    {

        BUS_LOGIN login1 = new BUS_LOGIN();
        BUS_Nhanvien NV = new BUS_Nhanvien();
        BUS_QL_Khachhang _KH = new BUS_QL_Khachhang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Loai"] = null;
                Session["infoTK"] = null;
            }
                
            if (Request.QueryString["ID"] != null)
            {
                if (int.Parse(Request.QueryString["ID"]) == 0)
                {
                    fromRegister.Visible = false;
                }
                else
                    fromLogin.Visible = false;
            }
            else
                Response.Redirect("index.aspx");
        }

        protected void register_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text == "Admin")
            {
                lbUserTrung.Text = "Username chứa những từ khóa không cho phép";

                return;
            }
            if (_KH.LayThongTinKhachHang_email(txtEmail.Text).Rows.Count == 1)
            {
                lbThongbaotrungemail.Text = "Email này đã có người sửa dụng";
                return;
            }

            int kttrung = login1.kiemtratrung(txtUsername.Text);
            if (kttrung > 0)
            {
                lbUserTrung.Text = "Username này đã tồn tại";
                fromLogin.Visible = false;
                return;
            }

            int kq = login1.Dangki_TK(txtUsername.Text, txtPassword.Text, 2);
            int kq1 = login1.Dangki_TTKH(txtName.Text, txtUsername.Text, txtEmail.Text, txtAddress.Text, Convert.ToInt32(txtphonenumber.Text));

            if(kq > 0 && kq1 > 0)
            {
                Response.Redirect("login.aspx?ID=0");
                txtUsernameLogin.Text = txtUsername.Text;
                xoamanhinh();
            }

            
        }
        void xoamanhinh()
        {
            txtName.Text = "";
            txtUsername.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPasswordrepeat.Text = "";
            txtphonenumber.Text = "";
        }

        protected void Login_Click1(object sender, EventArgs e)
        {

            //int kttrung = login1.kiemtratrung(txtUsernameLogin.Text);
            //if (kttrung == 0)
            //{
            //    lbUserTontai.Text = "Username này không tồn tại";
            //    return;
            //}
            DataTable kq = login1.Login(txtUsernameLogin.Text, PasswordLogin.Text);

            if (kq.Rows.Count > 0)
            {
                Session["Loai"] = kq.Rows[0]["LoaiTK"].ToString();
                Session["infoTK"] = kq;
                if (int.Parse(kq.Rows[0]["LoaiTK"].ToString()) == 1 || int.Parse(kq.Rows[0][3].ToString()) == 3)
                {
                    Session["info"] = NV.get_info_NV(txtUsernameLogin.Text);
                    Response.Redirect("Admin.aspx");
                }
                if (int.Parse(kq.Rows[0]["LoaiTK"].ToString()) == 2)
                {
                    Session["info"] = login1.Get_infoKH_Tentk(txtUsernameLogin.Text);
                    Response.Redirect("index.aspx");
                }
                else
                {
                    return;
                }
            }
            else
            {
                //lbUserTontai.Text = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
        }

        protected void Unnamed_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
        }

        //protected void Unnamed_ServerValidate(object source, ServerValidateEventArgs args)
        //{
        //    args.IsValid = _KH.LayThongTinKhachHang_email(txtEmail.Text).Rows.Count == 0;
        //}
    }
}