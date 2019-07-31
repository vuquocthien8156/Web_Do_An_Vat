using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SOURCE
{
    public partial class Admin : System.Web.UI.Page
    {
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
    }
}