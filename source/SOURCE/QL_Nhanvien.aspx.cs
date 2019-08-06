using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Globalization;

namespace SOURCE
{
    public partial class QL_Nhanvien : System.Web.UI.Page
    {
        BUS_Nhanvien _NhanvienBUS = new BUS_Nhanvien();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            gvNhanvien.DataSource = _NhanvienBUS.GetStaff(); ;
            gvNhanvien.DataBind();
        }

        public string CheckGioiTinh(object obj)
        {
            bool b = Convert.ToBoolean(obj);
            if (b == false)
                return "Nam";
            else
                return "Nữ";
        }

        public string HienThiNgaySinh(object obj)
        {
            return Convert.ToDateTime(obj.ToString()).ToString("dd/MM/yyyy");
        }

        public string HienNgaySinh(object obj)
        {
            return Convert.ToDateTime(obj.ToString()).ToString("yyy-MM-dd", CultureInfo.InvariantCulture);
        }

        protected void gvCustomers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvNhanvien.EditIndex = e.NewEditIndex;

            LoadData();
        }

        protected void gvCustomers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = gvNhanvien.DataKeys[e.RowIndex].Value.ToString();
            string Ten = (gvNhanvien.Rows[e.RowIndex].Cells[1].Controls[1] as TextBox).Text;
            bool Phai = Convert.ToBoolean(((DropDownList)gvNhanvien.Rows[e.RowIndex].FindControl("ddlGender")).SelectedValue);
            DateTime Ngaysinh = Convert.ToDateTime((gvNhanvien.Rows[e.RowIndex].Cells[3].Controls[1] as TextBox).Text);
            string Diachi = (gvNhanvien.Rows[e.RowIndex].Cells[4].Controls[1] as TextBox).Text;
            DateTime Ngayvaolam = Convert.ToDateTime((gvNhanvien.Rows[e.RowIndex].Cells[5].Controls[1] as TextBox).Text);
            int LoaiNV = int.Parse(((DropDownList)gvNhanvien.Rows[e.RowIndex].FindControl("ddlLoaiNV")).SelectedValue);
            string Mail = (gvNhanvien.Rows[e.RowIndex].Cells[8].Controls[1] as TextBox).Text;
            string Mathanhtoan = (gvNhanvien.Rows[e.RowIndex].Cells[9].Controls[1] as TextBox).Text;

            _NhanvienBUS.UpdateStaff(id, Ten, Phai == false ? 0 : 1, Ngaysinh, Diachi, Ngayvaolam, LoaiNV , Mail , Mathanhtoan);
            gvNhanvien.EditIndex = -1;
            LoadData();
        }

        protected void gvCustomers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = gvNhanvien.DataKeys[e.RowIndex].Value.ToString();
            string loai = (gvNhanvien.Rows[e.RowIndex].Cells[6].FindControl("lbLoai") as Label).Text;
            int SL = _NhanvienBUS.Count_Admin();
            if (loai == "Admin" && SL  == 1)
            {
                Response.Write("<script> alert('Bạn Không Được Xóa Admin Cuối Cùng');  </script>");
                return;    
            }

            _NhanvienBUS.DeleteStaff(id);
            LoadData();
        }

        protected void gvCustomers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvNhanvien.EditIndex = -1;
            LoadData();
        }
    }
 }
