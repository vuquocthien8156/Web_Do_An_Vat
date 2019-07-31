using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SOURCE
{
    public partial class QL_NCC : System.Web.UI.Page
    {

        BUS_QL_NCC _QLNCC = new BUS_QL_NCC();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Loai"] != null)
            {
                int Loai = int.Parse(Session["Loai"].ToString());

                if (Loai == 1)
                {
                    GvProducer.AutoGenerateColumns = false;
                    if (IsPostBack == false)
                    {
                        GvProducer.DataSource = _QLNCC.Get_producer();
                        GvProducer.DataBind();
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

        public bool Get_Active(Object oj)
        {
            bool kq = Convert.ToBoolean(oj.ToString());
            return kq;
        }

        public bool Get_DVShip(Object oj)
        {
            bool kq = Convert.ToBoolean(oj.ToString());
            return kq;
        }


        protected void GvProducer_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maNcc = Convert.ToString(GvProducer.DataKeys[e.RowIndex].Value);
            _QLNCC.DeleteNcc(maNcc);

            GvProducer.DataSource = _QLNCC.Get_producer();
            GvProducer.DataBind();
        }

        protected void GvProducer_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string i = Convert.ToString(GvProducer.DataKeys[e.NewSelectedIndex].Value).Trim();
            Session["MaNCC"] = i;
            Response.Redirect("Edit_NCC.aspx");
        }


    }
}