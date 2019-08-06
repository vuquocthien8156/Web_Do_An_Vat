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
    public partial class Xacnhan : System.Web.UI.Page
    {
        BUS_QL_Khachhang _KH = new BUS_QL_Khachhang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                DataTable tb = _KH.LayThongTinKhachHang_email(Session["Email"].ToString());
                lbChao.Text = "Chào " + tb.Rows[0]["TenKH"] + " vui lòng nhập mã";
                Session["Taikhoan"] = tb.Rows[0]["TenTK"];
            }
            else
                Response.Redirect("index.aspx");

        }
        protected void btnXacnhan_Click(object sender, EventArgs e)
        {
            if(txtMaxacnhan.Text == Session["MaXacNhan"].ToString())
            {
                Response.Redirect("QuenMK.aspx");
            }
        }
    }
}