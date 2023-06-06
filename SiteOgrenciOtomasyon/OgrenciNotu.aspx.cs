using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class OgrenciNotu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OGR_NOTLARTableAdapter dt = new
DataSet1TableAdapters.OGR_NOTLARTableAdapter();
            Repeater1.DataSource = dt.OgrenciNotu();
            Repeater1.DataBind();
        }
    }
}