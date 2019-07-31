using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SOURCE
{
    public partial class TemplateAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loai"] != null)
            {
                DDICON.Visible = false;
                DDINFO.Visible = true;
                if (int.Parse(Session["Loai"].ToString()) == 1 || int.Parse(Session["Loai"].ToString()) == 3)
                    lbTEN.Text = (Session["info"] as System.Data.DataRow)["TenNV"].ToString();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int i = 0;
        }
    }
}