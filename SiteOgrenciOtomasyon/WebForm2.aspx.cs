using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            Txtbox1.Text = "Numara : " + dt.BetulNumara().ToString();
            Txtbox2.Text = "Ad Soyad : " + dt.BetulAdSoyad().ToString();
            Txtbox3.Text = "Mail Adresi : " + dt.BetulMail().ToString();
            Txtbox4.Text = "Telefon Numarası : " + dt.BetulTel().ToString();

            //            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new
            //DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            //            Txtbox1.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir()[0].OGRAD + " " +
            //            dt.OgrenciPaneliGetir()[0].OGRSOYAD;
            //            Txtbox2.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir()[0].OGRMAIL;
            //            Txtbox3.Text = "Password: " + dt.OgrenciPaneliGetir()[0].OGRSIFRE;
            //            Txtbox4.Text = "Phone: " + dt.OgrenciPaneliGetir()[0].OGRTELEFON;
        }
    }
}