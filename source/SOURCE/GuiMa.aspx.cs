using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SOURCE
{
    public partial class Xacnhan1 : System.Web.UI.Page
    {
        BUS_QL_Khachhang _KH = new BUS_QL_Khachhang();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (_KH.LayThongTinKhachHang_email(tbEMail.Text).Rows.Count == 0)
            {
                lbThongbao.Text = "Email không tồn tại";
                return;
            }
            string to = tbEMail.Text; //To address    
            string from = "Doanvat.1No2@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            Random random = new Random();
            int Ran = random.Next(1000, 9999);
            Session["MaXacNhan"] = Ran;
            Session["Email"] = tbEMail.Text;
            string mailbody = "Mã của bạn là : " + Ran;
            message.Subject = "Sending ID By Email";
            message.Body = mailbody;
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

            Response.Redirect("Xacnhan.aspx");
        }

        //protected void Unnamed_ServerValidate(object source, ServerValidateEventArgs args)
        //{
        //    args.IsValid = _KH.LayThongTinKhachHang_email(args.Value).Rows.Count == 1;
        //}

    }
}