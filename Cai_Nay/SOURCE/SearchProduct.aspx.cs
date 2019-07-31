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
    public partial class SearchProduct : System.Web.UI.Page
    {
        BUS_QLSP _SP = new BUS_QLSP();
        ProductsDTO _product = new ProductsDTO();
        List<CartDTO> carts = new List<CartDTO>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["productidd"] != null)
            {
                string masp = Request.QueryString["productidd"].ToString().Trim();
                _product = _SP.getProductById(masp);
                Add_Cart();
            }
          
            if (Session["Search"] != null)
            {
                if(_SP.SearchProductByName(Session["Search"].ToString()) != null)
                {
                    rp_products.DataSource = _SP.SearchProductByName(Session["Search"].ToString());
                    rp_products.DataBind();
                    lbKetqua.Text = "Kết quả tìm kiểm cho: " + Session["Search"].ToString();
                }
                else
                    lbKetqua.Text = "Không tìm thấy kết quả cho: " + Session["Search"].ToString();
            }
            else
                Response.Redirect("index.aspx");
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
                });
            }
            Session["SL"] = carts.Sum(u => u.Soluong);
            Session["Carts"] = carts;
        }
    }
}