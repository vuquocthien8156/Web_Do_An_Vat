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
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        BUS_DOIMK _DOIMK = new BUS_DOIMK();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["infoTK"] != null)
            {

            }
            else
                Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable tb = Session["infoTK"] as DataTable;
            //string[] mk = tb.Rows[0]["Matkhau"].ToString().Split(' ');
            string mk = tb.Rows[0]["Matkhau"].ToString().Trim();
            string mahoa = _DOIMK.Mahoa(txtpassold.Text);
            if (mahoa != mk)
            {
                lbkiemtraMK.Text = "Mật khẩu chưa chính xác";
                return;
            }

            if(_DOIMK.DoiMK(tb.Rows[0]["TenTK"].ToString() , txtpassnew.Text ) == 1)
            {
                lbThongbao.Text = " Đổi mật khẩu thành công ";
            }
        }
    }
}