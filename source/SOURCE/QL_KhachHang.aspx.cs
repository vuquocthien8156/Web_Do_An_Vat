using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SOURCE
{
    public partial class QL_KhachHang : System.Web.UI.Page
    {
        BUS_QL_Khachhang _QLKH = new BUS_QL_Khachhang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;       
            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());
                if (Loai == 1)
                {
                    gvKhachhang.AutoGenerateColumns = false;
                    gvKhachhang.DataSource = _QLKH.Get_info_KH();
                    gvKhachhang.DataBind();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
                Response.Redirect("login.aspx");

        }

        protected void gvKhachhang_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string Makh = gvKhachhang.DataKeys[e.RowIndex].Value.ToString();

            _QLKH.DeleteKH(Makh);

            gvKhachhang.DataSource = _QLKH.Get_info_KH();
            gvKhachhang.DataBind();
        }
    }
}