using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using System.Data.SqlClient;

namespace SiteOgrenciOtomasyon
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        //SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-B1P0435\SQLEXPRESS; Initial Catalog=UdemySiteDB;Integrated
        //Security=True");
        //SqlConnection baglanti = new SqlConnection("server =DESKTOP-15ER1HS\\hp; Initial Catalog = SiteDB; Integrated Security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("server =.; Initial Catalog = SiteDB; Integrated Security=SSPI");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where NUMARA=@p1 and OGRSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                //Session.Add("numara", TxtNumara.Text);
                Response.Redirect("WebForm2.Aspx?NUMARA=" + TxtNumara.Text);
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }

    }
}