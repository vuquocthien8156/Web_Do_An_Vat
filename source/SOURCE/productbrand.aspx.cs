using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SOURCE
{
    public partial class products : System.Web.UI.Page
    {
        BUS_QLSP _QLSP = new BUS_QLSP();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptforProductBuyMax.DataSource = _QLSP.GetProduct_BuyMax();
            rptforProductBuyMax.DataBind();
        }
    }
}