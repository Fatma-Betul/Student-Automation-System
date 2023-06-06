using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon {
    public partial class OgrenciGelenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            //Repeater1.DataSource = dt.OgrencigelenKutusu1();
            //Repeater1.DataBind();
            Repeater1.DataSource = dt.OgrencigelenKutusu1();
            Repeater1.DataBind();
        }
    }
}
 