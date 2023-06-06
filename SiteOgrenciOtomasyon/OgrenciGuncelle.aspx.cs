using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            TxtOgrId.Text = id.ToString();
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new 
                DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
            TxtOgrSoyAd.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
            TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
            TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
            TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new
               DataSet1TableAdapters.TBL_OGRENCITableAdapter();

           // dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyAd.Text, TxtOgrTelefon.Text, TxtOgrMail.Text,
             //    TxtOgrSifre.Text, Convert.ToInt32(TxtOgrId.Text));
            
            Response.Redirect("WebForm1.aspx");


        }
    }
}