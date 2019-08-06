using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SOURCE
{
    public partial class Create_Nhanvien : System.Web.UI.Page
    {
        BUS_LOGIN _login = new BUS_LOGIN();
        BUS_Nhanvien _nv = new BUS_Nhanvien();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int kq1 = _login.Dangki_TK(tbUsername.Text , tbpass.Text , 3);
            int kq2 = _nv.Insert_NhanVien(tbName.Text, 
                cbNam.Checked == true ? 0 : 1, 
                Convert.ToDateTime(tbNgaysinh.Text), 
                tbAddress.Text, Convert.ToDateTime(tbNVlam.Text), 
                int.Parse(ddlCatalogyStaff.SelectedValue) , 
                tbUsername.Text , 
                tbEmail.Text , 
                tbMaThanhToan.Text);
            if (kq1 > 0 && kq2 > 0)
            {
                lbThongbao.Text = "Thêm thành công";
                Server.Transfer("Create_Nhanvien.aspx", false);
            }
            else
                lbThongbao.Text = "Thêm thất bại";
        }
    }
}