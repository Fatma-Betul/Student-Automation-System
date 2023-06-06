using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            //DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new
            //    DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            //dt.OgrenciSil(id);
            //Response.Redirect("WebForm1.Aspx");

            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("WebForm1.Aspx");
        }
    }
}