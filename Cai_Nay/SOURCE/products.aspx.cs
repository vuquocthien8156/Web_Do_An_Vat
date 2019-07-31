using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace SOURCE
{
    public partial class household : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        static PagedDataSource page = new PagedDataSource();
        static int Pageindex = 0;
        int id;
        List<CartDTO> carts = new List<CartDTO>();
        ProductsDTO _product = new ProductsDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["catalogy"] != null)
            {
                id = int.Parse(Request.QueryString["catalogy"]);
                Pageindex = 0;
                load_data();
                //rp_products.DataSource = _QLSP.GetProductByIDCatalogy(id);
                //rp_products.DataBind();
            }
            else
            {
                // Response.Redirect("allProducts.aspx");
            }
            if (Request.QueryString["productidd"] != null)
            {
                string masp = Request.QueryString["productidd"].ToString().Trim();
                _product = _QLSP.getProductById(masp);
                Add_Cart();
                id = int.Parse(Request.QueryString["catalogy"]);
                load_data();
            }
          

          }

        protected void btnDau_Click(object sender, EventArgs e)
        {
            Pageindex = 0;
            load_data();
        }

        protected void btnVe_Click(object sender, EventArgs e)
        {
            Pageindex--;
            load_data();
        }

        protected void btnQua_Click(object sender, EventArgs e)
        {
            Pageindex++;
            load_data();
        }

        protected void btnCuoi_Click(object sender, EventArgs e)
        {
            Pageindex = page.PageCount - 1;
            load_data();
        }

        public void load_data()
        {
            page.DataSource = _QLSP.GetProductByIDCatalogy(id).DefaultView;
            page.PageSize = 4; 
            page.CurrentPageIndex = Pageindex;
            page.AllowPaging = true;

            btnDau.Enabled = true; btnVe.Enabled = true; btnQua.Enabled = true; btnCuoi.Enabled = true;

            if (page.IsFirstPage)
            {
                btnDau.Enabled = false;
                btnVe.Enabled = false;
                btnQua.Enabled = true;
                btnCuoi.Enabled = true;
            }

            if (page.IsLastPage)
            {
                btnDau.Enabled = true;
                btnVe.Enabled = true;
                btnQua.Enabled = false;
                btnCuoi.Enabled = false;
            }

            tbHienthi.Text = (Pageindex + 1) + "/" + page.PageCount;

            rp_products.DataSource = page;
            rp_products.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
        }

        protected void Add_Cart()
        {
            if (Session["Carts"] != null)
            {
                carts = (List<CartDTO>)Session["Carts"];
            }

            CartDTO cart = carts.SingleOrDefault(u => u.Masp == _product.Masp.Trim());

            if (cart != null)
            {
                carts[carts.IndexOf(cart)].Soluong += 1;
                carts[carts.IndexOf(cart)].Thanhtien = carts[carts.IndexOf(cart)].Soluong * carts[carts.IndexOf(cart)].Price;
            }
            else
            {
                carts.Add(new CartDTO()
                {
                    Masp = _product.Masp.Trim(),
                    Tensp = _product.Tensp,
                    Soluong = 1,
                    Urlproduct = _product.Url,
                    Price = _product.Gia,
                    Thanhtien = _product.Gia,
                    NCC = _product.Ncc.Trim(),
                });
            }
            Session["SL"] = carts.Sum(u => u.Soluong);
            Session["Carts"] = carts;
        }
     
    }
}