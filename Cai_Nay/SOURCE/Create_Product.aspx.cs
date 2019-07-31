using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CKFinder;
using CKEditor;
using BUS;

namespace SOURCE
{
    public partial class Create_Product : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        BUS_IMG _IMG = new BUS_IMG();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());

                if (Loai == 1 || Loai == 3)
                {
                    return;
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
                Response.Redirect("login.aspx");
        }

        protected void CKEditorControl1_Load(object sender, EventArgs e)
        {
            FileBrowser _FB = new FileBrowser();
            _FB.BasePath = "/ckfinder/";
            _FB.SetupCKEditor(txtDescription);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string filename = "img/" + FileUpload1.FileName;
                string fullnameserver = Server.MapPath(filename);
                FileUpload1.SaveAs(fullnameserver);

                if(ViewState["img"] != null)
                {
                    List<string> img = (List<string>)ViewState["img"];
                    img.Add(filename);
                    ViewState["img"] = img;

                    LvImg.DataSource = img;
                    LvImg.DataBind();
                }
                else{
                    ViewState["img"] = new List<string>() {filename};

                    LvImg.DataSource = ViewState["img"];
                    LvImg.DataBind();
                }

                Image1.ImageUrl = filename;
                Image1.Visible = true;
                LvImg.Visible = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int kq = _QLSP.insert_product(txtProductName.Text, txtDescription.Text, Convert.ToInt32(txtPrice.Text), cbVailuable.Checked ? 1 : 0, Image1.ImageUrl, ddlProducer.SelectedItem.Value , int.Parse(ddlGotagy.SelectedItem.Value));
            _IMG.insert_img((List<string>)ViewState["img"]);
            if (kq > 0)
            {
                lbthongbao.Text = "Thêm thành công";
                // clear toàn bộ dữ liệu
                Server.Transfer("Create_Product.aspx", false);
            }
            else
            {
                lbthongbao.Text = "Thêm thất bại";
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Image1.ImageUrl = e.CommandArgument.ToString();
        }

    }
}