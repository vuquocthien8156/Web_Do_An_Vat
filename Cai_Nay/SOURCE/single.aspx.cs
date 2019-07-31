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
    public partial class single : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        BUS_QL_NCC _QLNCC = new BUS_QL_NCC();
        public ProductsDTO _product = new ProductsDTO();
        public NCCDTO _NCC = new NCCDTO();
        List<CartDTO> carts = new List<CartDTO>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["productid"] != null)
            {
                string id = Request.QueryString["productid"].ToString();
                _product = _QLSP.getProductById(id);
                _NCC = _QLNCC.GeNCCbyiD(_product.Ncc);
                string idNCC = Request.QueryString["nccId"].ToString();
                RptProuct_NCC.DataSource = _QLSP.GetProductByNCC(idNCC);
                RptProuct_NCC.DataBind();
            }
            else
                Response.Redirect("products.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["Carts"] != null)
            {
                carts = (List<CartDTO>)Session["Carts"];
            }

            CartDTO cart = carts.SingleOrDefault(u => u.Masp == _product.Masp.Trim());

            if (cart != null)
            {
                carts[carts.IndexOf(cart)].Soluong += int.Parse(tbSL.Text);
                carts[carts.IndexOf(cart)].Thanhtien = carts[carts.IndexOf(cart)].Soluong * carts[carts.IndexOf(cart)].Price;
            }
            else
            {
                carts.Add(new CartDTO()
                {
                    Masp = _product.Masp.Trim(),
                    Tensp = _product.Tensp,
                    Soluong = int.Parse(tbSL.Text),
                    Urlproduct = _product.Url,
                    Price = _product.Gia,
                    Thanhtien = _product.Gia,
                    NCC = _product.Ncc.Trim() ,
                });
            }
            Session["SL"] = carts.Sum(u => u.Soluong);
            Session["Carts"] = carts;
        }

    }
}