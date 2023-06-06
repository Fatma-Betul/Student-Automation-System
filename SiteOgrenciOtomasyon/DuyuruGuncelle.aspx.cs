using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            TxtDuyuruId.Text = id.ToString();
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new
                DataSet1TableAdapters.TBL_DUYURULARTableAdapter();

            TxtDuyuruBaslık.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
            AreaDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new
               DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            
            //dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, Textarea1.Value,
            //    Convert.ToInt32(TxtDuyuruID.Text));
            
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}