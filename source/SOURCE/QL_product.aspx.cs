using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;

namespace SOURCE
{
    public partial class QL_product : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());

                if (Loai == 1)
                {
                    GV_Sanpham.AutoGenerateColumns = false;
                    if (IsPostBack == false)
                    {
                        load();
                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
                Response.Redirect("login.aspx");

        }

        void load()
        {
            GV_Sanpham.DataSource = _QLSP.Getsp();
            GV_Sanpham.DataBind();
        }


        public string gettrangthai(Object tt)
        {
            bool trangthai = Convert.ToBoolean(tt);
            if (trangthai)
                return "Còn";

            return "Hết";
        }

        protected void GV_Sanpham_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string Masp = Convert.ToString(GV_Sanpham.DataKeys[e.RowIndex].Value);
                _QLSP.Deletesp(Masp);

            GV_Sanpham.DataSource = _QLSP.Getsp();
            GV_Sanpham.DataBind();
        }

        protected void GV_Sanpham_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Masp"] = Convert.ToString(GV_Sanpham.DataKeys[e.NewSelectedIndex].Value).Trim();
            
            Response.Redirect("Edit_Products.aspx");
        }

        protected void GV_Sanpham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Sanpham.PageIndex = e.NewPageIndex;
            load();
        }

        //protected void Unnamed_Click(object sender, EventArgs e)
        //{
        //    if(tbSearch != null)
        //    {
        //        GV_Sanpham.DataSource = _QLSP.getProductById(tbSearch.Text);
        //        GV_Sanpham.DataBind();
        //    }

        //}


        //protected void GV_Sanpham_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    //GV_Sanpham.EditIndex = e.NewEditIndex;
        //    int i = e.NewEditIndex;
        //    //GV_Sanpham.DataSource = _QLSP.Getsp();
        //    //GV_Sanpham.DataBind();
        //}

        //protected void GV_Sanpham_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    //string masp = Convert.ToString(GV_Sanpham.DataKeys[e.RowIndex].Value);

        //    //string tensp = (GV_Sanpham.Rows[e.RowIndex].Cells[1].Controls[1] as TextBox).Text;
        //    //string mota = (GV_Sanpham.Rows[e.RowIndex].Cells[2].Controls[1] as TextBox).Text;
        //    //int Donvi = Convert.ToInt32((GV_Sanpham.Rows[e.RowIndex].Cells[3].Controls[1] as TextBox).Text);
        //    //int Giasp = Convert.ToInt16((GV_Sanpham.Rows[e.RowIndex].Cells[4].Controls[1] as TextBox).Text);
        //    //bool trangthai = Convert.ToBoolean(((DropDownList)GV_Sanpham.Rows[e.RowIndex].Cells[5].FindControl("DropDownList1")).SelectedValue);
        //    //int Solandat = Convert.ToInt32((GV_Sanpham.Rows[e.RowIndex].Cells[6].Controls[1] as TextBox).Text);
        //    //string Url = (GV_Sanpham.Rows[e.RowIndex].Cells[7].Controls[1] as TextBox).Text;
        //    //string NCC = ((DropDownList)GV_Sanpham.Rows[e.RowIndex].Cells[8].FindControl("DropDownList3")).SelectedItem.Value;
        //    //int Loaisp = Convert.ToInt32(((DropDownList)GV_Sanpham.Rows[e.RowIndex].Cells[9].FindControl("DropDownList2")).SelectedItem.Value);

        //    //_QLSP.updating(masp, tensp, mota, Donvi, Giasp, trangthai == true ? 1 : 0, Solandat, Url, NCC, Loaisp);

        //    //GV_Sanpham.EditIndex = -1;

        //    //GV_Sanpham.DataSource = _QLSP.Getsp();
        //    //GV_Sanpham.DataBind();
        //}

        //protected void GV_Sanpham_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GV_Sanpham.EditIndex = -1;

        //    GV_Sanpham.DataSource = _QLSP.Getsp();
        //    GV_Sanpham.DataBind();
        //}

    }
}