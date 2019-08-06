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
    public partial class Template : System.Web.UI.MasterPage
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        protected void Page_Load(object sender, EventArgs e)
        {
                rp_catalogy.DataSource = _QLSP.getcatalogy();
                rp_catalogy.DataBind();


            if (Session["Loai"] != null)
            {
                DDICON.Visible = false;
                DDINFO.Visible = true;
                hlLogin.Visible = false;
                hlSignin.Visible = false;
                hlLogout.Visible = true;
                hlDoiMk.Visible = true;

                if (int.Parse(Session["Loai"].ToString()) == 1 || int.Parse(Session["Loai"].ToString()) == 3)
                {
                    hlAdmin.Visible = true;
                    lbTEN.Text = (Session["info"] as System.Data.DataRow)["TenNV"].ToString();
                }
                else
                {
                    hl_update_info.Visible = true;
                    lbTEN.Text = (Session["info"] as System.Data.DataRow)[1].ToString();
                }
                    
            }
            else
            {
                hlLogin.Visible = true;
                hlSignin.Visible = true;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(tbsearch.Text == "")
            {
                Response.Redirect("allProducts.aspx");
            }
            Session["Search"] = tbsearch.Text;
            Response.Redirect("SearchProduct.aspx");
        }

        //protected void ImageButton1_Command(object sender, CommandEventArgs e)
        //{
        //    string filename = "~/image" + FileUpload1.FileName;
        //    string fullname = Server.MapPath(filename);
        //    FileUpload1.SaveAs(filename);

        //    ImageButton1.ImageUrl = filename;
        //    FileUpload1.Visible = false;
        //}
    }
}