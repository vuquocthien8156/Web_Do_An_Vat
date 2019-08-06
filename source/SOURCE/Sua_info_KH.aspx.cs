using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SOURCE
{
    
    public partial class Sua_info_KH : System.Web.UI.Page
    {
        BUS_QL_Khachhang _QLKH = new BUS_QL_Khachhang();
        BUS_LOGIN _Login = new BUS_LOGIN();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            if(Session["info"] != null)
            {
                DataRow row = Session["info"] as DataRow;
                txtTenKH.Text = row["TenKH"].ToString();
                txtDiachi.Text = row["Diachi"].ToString();
                txtSDT.Text = row["SDT"].ToString();
                txtEmail.Text = row["Email"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void btnXong_Click(object sender, EventArgs e)
        {
            //if (txtSDT.Text.Length < 0 || txtSDT.Text.Length > 11)
            //{
            //    lbSDT.Text = "Số điện thoại phải lớn hơn 0 bé hơn 12";
            //}
            int kq = _QLKH.update_info_KH( (Session["info"] as DataRow)["MaKH"].ToString() , txtTenKH.Text , txtDiachi.Text , int.Parse(txtSDT.Text) , txtEmail.Text );
            if (kq == 1)
            {
                Thongbao.Text= "Sửa thông tin thành công";
                Session["info"] = _Login.Get_infoKH_Tentk((Session["info"] as DataRow)["TenTK"].ToString());
            }
        }
    }
}