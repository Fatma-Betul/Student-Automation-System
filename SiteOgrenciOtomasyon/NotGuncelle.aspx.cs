using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                // HttpRequest Request = HttpContext.Current.Request;
                // Bir sınıfın nesnesini oluşturacağız. 

                
                nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSet1TableAdapters.OGR_NOTLARTableAdapter dt = new
                    DataSet1TableAdapters.OGR_NOTLARTableAdapter();
                TxtOgrID.Text = dt.NotGetir2(nid)[0].OGRNID.ToString();
                TxtOgradSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD;
                TxtDersAd.Text = dt.NotGetir2(nid)[0].DERSAD;
                TxtVize.Text = dt.NotGetir2(nid)[0].VIZE.ToString();
                TxtFinal.Text = dt.NotGetir2(nid)[0].FINAL.ToString();
                TxtButunleme.Text = dt.NotGetir2(nid)[0].BUTUNLEME.ToString();
                TxtOrt.Text = dt.NotGetir2(nid)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.NotGetir2(nid)[0].DURUM.ToString();
            }
        }
        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            double VIZE, FINAL, BUTUNLEME;
            double ortalama;
            VIZE = Convert.ToInt32(TxtVize.Text);
            FINAL = Convert.ToInt32(TxtFinal.Text);
            BUTUNLEME = Convert.ToInt32(TxtButunleme.Text);
            ortalama = VIZE * (0.4) + FINAL * (0.6);
            
            TxtOrt.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                TxtDurum.Text = "Geçti";
            }

            else
            {
                TxtDurum.Text = "Kaldı";
                ortalama = VIZE * (0.4) + BUTUNLEME * (0.6);
                TxtOrt.Text = ortalama.ToString("0.00");
                if (ortalama >= 50)
                {
                    TxtDurum.Text = "Geçti";
                }

                else
                {
                    TxtDurum.Text = "Kaldı";
                }
            }

        }
        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OGR_NOTLARTableAdapter dt = new DataSet1TableAdapters.OGR_NOTLARTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtVize.Text), byte.Parse(TxtFinal.Text), byte.Parse(TxtButunleme.Text),
            decimal.Parse(TxtOrt.Text), bool.Parse(TxtDurum.Text), nid);
            Response.Redirect("NotListesi.Aspx");
        }
    }
}