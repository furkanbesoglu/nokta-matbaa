using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class YeniQualityEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "Event", "@Subtittle" };
                object[] parametreDegeri = new object[] { "INSERT", txtBaslik.Text };
                string sonucYazisi = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Quality", parametreAdi, parametreDegeri);
                Response.Redirect("AdvertisingAgencyLİst.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
        }

        string Kontroller()
        {
            string mesaj = "";

            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 30))
            {
                mesaj += "0 İla 30 Karakter Arasında Girebilirsiniz";
            }

            return mesaj;
        }
    }
}