using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class NotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OGR_NOTLARTableAdapter dt = new
                DataSet1TableAdapters.OGR_NOTLARTableAdapter();
            Repeater1.DataSource = dt.NotlarıGetir();
            Repeater1.DataBind();

        }
    }
}