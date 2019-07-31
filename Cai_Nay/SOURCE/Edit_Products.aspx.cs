using CKFinder;
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
    public partial class Edit_Products : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
                return;

            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());

                if (Loai == 1)
                {
                    if(Session["Masp"] != null)
                    {
                        string Ma = Session["Masp"].ToString();

                            DataTable tb = _QLSP.GetspByID(Ma);

                            txtProductName.Text = tb.Rows[0]["Tensp"].ToString();
                            txtDescription.Text = tb.Rows[0]["Mota"].ToString();
                            txtPrice.Text = tb.Rows[0]["GiaSP"].ToString();
                            if (tb.Rows[0]["Trangthai_con_het"].ToString() == "true")
                                cbVailuable.Checked = true;
                            else
                                cbVailuable.Checked = false;
                            Image1.ImageUrl = tb.Rows[0]["URL"].ToString();
                            Image1.Visible = true;
                            ddlGotagy.SelectedValue = tb.Rows[0]["Loaisp"].ToString();
                            ddlProducer.SelectedValue = tb.Rows[0]["NCC"].ToString();
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
        protected void CKEditorControl1_Load(object sender, EventArgs e)
        {
            FileBrowser _FB = new FileBrowser();
            _FB.BasePath = "/ckfinder/";
            _FB.SetupCKEditor(txtDescription);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = "img/" + FileUpload1.FileName;
                string fullnameserver = Server.MapPath(filename);
                FileUpload1.SaveAs(fullnameserver);

                if (ViewState["img"] != null)
                {
                    List<string> img = (List<string>)ViewState["img"];
                    img.Add(filename);

                    LvImg.DataSource = img;
                    LvImg.DataBind();
                }
                else
                {
                    ViewState["img"] = new List<string>() { filename };

                    LvImg.DataSource = ViewState["img"];
                    LvImg.DataBind();
                }

                Image1.ImageUrl = filename;
                Image1.Visible = true;
                LvImg.Visible = true;
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Image1.ImageUrl = e.CommandArgument.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int kq = _QLSP.updating( Session["Masp"].ToString() , txtProductName.Text, txtDescription.Text , int.Parse(txtPrice.Text) , cbVailuable.Checked ? 1 : 0, 0 , Image1.ImageUrl, ddlProducer.SelectedValue , int.Parse(ddlGotagy.SelectedValue));
            if (kq == 1)
            {
                lbThongbao.Text = "Sửa thông tin thành công";
            }
            else
                lbThongbao.Text = "Sửa thông tin thất bại";
        }


    }
}