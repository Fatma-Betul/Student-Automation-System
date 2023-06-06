using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteOgrenciOtomasyon
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TxtBox1.Text ="Toplam Öğrenci Sayısı: " + dt.İstatistik1().ToString();

            TxtBox2.Text = "Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();

            TxtBox3.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();

            TxtBox4.Text = "Python Programlama Vize'sinde En Başarılı Öğrenci:  " + dt.İstatistik4().ToString();

            TxtBox5.Text = "Profesyonel Sunum Teknikleri Vize'sinde En Başarılı Öğrenci:  " + dt.İstatistik5().ToString();
        }
    }
}