using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class OpenClosedGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            string[] parametreAdi = new string[] { "Event", "@id" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_OpenClose", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {
                txtBaslik.Text = sonuc.Rows[0]["DayRange"].ToString();
                txtOnyazi.Text = sonuc.Rows[0]["Clock"].ToString();
                txtphone.Text = sonuc.Rows[0]["EmergencyText"].ToString();

            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@DayRange", "@Clock", "@EmergencyText" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text, txtOnyazi.Text, txtphone.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_OpenClose", parametreAdi, parametreDeğeri);
                Response.Redirect("ContactList.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
           
        }

        string Kontroller()
        {
            string mesaj = "";

            if (!(txtBaslik.Text.Length>=0 && txtBaslik.Text.Length<=25))
            {
                mesaj += "0 İLA 25 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(txtOnyazi.Text.Length >= 0 && txtOnyazi.Text.Length <= 12))
            {
                mesaj += "0 İLA 12 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(txtphone.Text.Length >= 0 && txtphone.Text.Length <= 60))
            {
                mesaj += "0 İLA 60 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            return mesaj;
        }
    }
}