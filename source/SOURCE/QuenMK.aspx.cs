using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SOURCE
{
    public partial class QuenMK : System.Web.UI.Page
    {
        BUS_DOIMK _DOIMK = new BUS_DOIMK();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if(_DOIMK.DoiMK(Session["Taikhoan"].ToString() , txtpassnew.Text) == 1)
             {
                 Response.Write("<script>  alert('Đổi mật khẩu thành công'); </script>");
                 Response.Redirect("login.aspx?ID=0");
             }

        }

    }
}