using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using CKFinder;
using DTO;

namespace SOURCE
{
    public partial class Edit_NCC : System.Web.UI.Page
    {
        BUS_QL_NCC _QLNCC = new BUS_QL_NCC();
        BUS_IMG _IMG = new BUS_IMG();
        NCCDTO _ncc = new NCCDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());

                if (Loai == 1)
                {
                    if (Session["MaNCC"] != null)
                    {
                        string Ma = Session["MaNCC"].ToString();
                        _ncc = _QLNCC.GeNCCbyiD(Ma);
                        txtProducerName.Text = _ncc.TenNCC;
                        txtAddress.Text = _ncc.Diachi;
                        txtActiveTime.Text = _ncc.Giohoatdong;
                        if (_ncc.Dvship == true)
                            cbShip.Checked = true;
                        else
                            cbShip.Checked = false;
                        txtMail.Text = _ncc.Mail;
                        URL.ImageUrl = _ncc.Url;
                        URL.Visible = true;

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

                URL.ImageUrl = filename;
                URL.Visible = true;
                LvImg.Visible = true;
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            URL.ImageUrl = e.CommandArgument.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int kq = _QLNCC.Insert_Ncc(txtProducerName.Text, txtAddress.Text, txtActiveTime.Text, cbShip.Checked ? 1 : 0, txtMail.Text, URL.ImageUrl);
            _IMG.insert_imgNCC((List<string>)ViewState["img"]);
            if (kq > 0)
            {
                lbThongbao.Text = "Sửa thành công";
            }
            else
            {
                lbThongbao.Text = "Sửa thất bại";
            }
        }
    }
}