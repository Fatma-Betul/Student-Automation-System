﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new
                DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TxtNumara.Text,TxtOgrAd.Text, TxtOgrSoyAd.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text);
            Response.Redirect("WebForm1.aspx");
        }
    }
}