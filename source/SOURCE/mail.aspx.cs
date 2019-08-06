using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SOURCE
{
    public partial class mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string to = "Doanvat.1No2@gmail.com"; //To address    
            string from = "Doanvat.1No2@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            message.Subject = tbSub.Text;
            message.Body = BodyMail();
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true; //Nhận hoặc đặt giá trị cho biết nội dung thư có trong Html hay không.
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Cho phép ứng dụng gửi e-mail bằng cách sử dụng Giao thức truyền thư đơn giản (SMTP). 
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("Doanvat.1No2@gmail.com", "Doanvat102"); //Cung cấp thông tin đăng nhập cho các lược đồ xác thực dựa trên mật khẩu, chẳng hạn như xác thực cơ bản, thông báo, NTLM và Kerberos.
            client.EnableSsl = true; //Chỉ định xem SmtpClient có sử dụng Lớp cổng bảo mật (SSL) để mã hóa kết nối hay không.
            client.UseDefaultCredentials = false; // Gets hoặc đặt một giá trị Boolean kiểm soát xem các DefaultCredentials có được gửi đi với các yêu cầu hay không.
            client.Credentials = basicCredential1; //Gets hoặc thiết lập các thông tin được sử dụng để xác thực người gửi.
            try
            {
                client.Send(message); // Gửi tin nhắn được chỉ định đến máy chủ SMTP để gửi.
            }

            catch (Exception ex)
            {
                throw ex;
            }
            lbThongbao.Text = "Gửi thành công";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Server.Transfer("mail.aspx" , false);
        }

        public string BodyMail()
        {
            string bodymail = "";
            bodymail += "Name: " + tbName.Text + "<br>";
            bodymail += "Email: " + tbEmail.Text + "<br>";
            bodymail += "Số điện thoại: " + tbTelephone.Text + "<br>";
            bodymail += "Đã liên hệ với thông điệp: <br>";
            bodymail += "/t" + tbMess.Text + "<br>";
            return bodymail;
        }
    }
}