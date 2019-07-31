using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Net.Mail;
using System.Text;
namespace SOURCE
{
    public partial class checkout : System.Web.UI.Page
    {
        List<CartDTO> _tam;
        HD_NCCBUS _HDNCC = new HD_NCCBUS();
        BUS_LOGIN _Login = new BUS_LOGIN();
        BUS_QL_NCC _NCC = new BUS_QL_NCC();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["SL"] == null && Session["Carts"] == null)
            {
                Session["SL"] = 0;
            }
            _tam = (List<CartDTO>)Session["Carts"];


                if (Request.QueryString["MaspSL"] != null)
                {
                    string masp = Request.QueryString["MaspSL"].ToString();
                    foreach (CartDTO item in _tam)
                    {
                        if (item.Masp == masp)
                            rptforCheckout.FindControl("tbSL").ToString();
                    }

                }

            if (Request.QueryString["Masp"] != null)
            {
                    string masp = Request.QueryString["Masp"].ToString();

                    for (int i = 0; i < _tam.Count; i++ )
                    {
                        if (_tam[i].Masp == masp)
                        {
                            _tam.RemoveAt(i);
                        }
                    }
                    Session["Carts"] = _tam;
                    Session["SL"] = _tam.Sum(u=> u.Soluong);
            }
            if (Session["Carts"] != null)
            {
                ViewState["Total"] = _tam.Sum(u => u.Soluong * u.Price);
            }
            else
                ViewState["Total"] = 0;
        
            rptforCheckout.DataSource = Session["Carts"];
            rptforCheckout.DataBind();
        }

        
        protected void Unnamed_Click(object sender, EventArgs e)
        {

            List<HD_NCCDTO> _HD = new List<HD_NCCDTO>();
            
            var i  = _tam.GroupBy(u=> u.NCC);
            foreach (var item in i)
            {
                _HD.Add(new HD_NCCDTO() { Id = item.Key , Product = item.ToList() });
            }
            string Makh;
            if(_Login.TTKH(tbName.Text, tbEmail.Text, tbAddress.Text, Convert.ToInt32(tbSDT.Text)) == 1)
            {
                Makh = "KH_" + _Login.Dem_KH();
                //for (int j = 0; j < _HD.Count; j++)
                //{
                //    _HDNCC.ThemHD_Ncc(Makh, _HD[j].Id, tbGhichu.Text, DateTime.Today, 0, _HD[j].Product.Sum(u=>u.Soluong * u.Price) , _HD[j].Product);
                //}
                _HDNCC.ThemHD_Ncc(Makh, tbGhichu.Text, DateTime.Today, 0, (long)(ViewState["Total"]) , _tam);
            }
            foreach (HD_NCCDTO item in _HD)
            {
                Gui_ThongtinDatHang(_NCC.LatNCC_ID(item.Id).Mail.Trim() , item.Product);
            }
            _tam = null;
            Session["Carts"] = null;
            Server.Transfer("checkout.aspx" , false);
        }

        void Gui_ThongtinDatHang(string mail , List<CartDTO> carts)
        {
            string to = mail; //To address    
            string from = "Doanvat.1No2@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            message.Subject = "Đơn hàng được đặt";
            message.Body = bodymail(carts);
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("Doanvat.1No2@gmail.com", "Doanvat102");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string bodymail(List<CartDTO> carts)
        {
            string body = "";
            body +="Họ Tên: " + tbName.Text + "<br>";
            body += "Số điện thoại: " + tbSDT.Text + "<br>";
            body += "Địa chỉ: " + tbAddress.Text + "<br>";
            body += "Email: " + tbEmail.Text + "<br>";
            body += "Ghi chú: <br>" + tbGhichu.Text + "<br><br>";
            body += "Những sản phẩm đã đặt và số lượng: <br>";
            foreach (CartDTO item in carts)
            {
                body += item.Tensp + " : " + item.Soluong +"<br>";
            }
            body += "Tổng tiền: " + (long)ViewState["Total"] + "<br>";
            return body;
        }

    }

}