using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ContactGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            string[] parametreAdi = new string[] { "Event", "@id" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_contact", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {
                txtBaslik.Text = sonuc.Rows[0]["Adress"].ToString();
                txtOnyazi.Text = sonuc.Rows[0]["Mail"].ToString();
                txtphone.Text = sonuc.Rows[0]["Phone"].ToString();

            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@adress", "@mail", "@phone" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text, txtOnyazi.Text, txtphone.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_contact", parametreAdi, parametreDeğeri);
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

            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 300))
            {
                mesaj += "0 İLA 300 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(txtOnyazi.Text.Length >= 0 && txtOnyazi.Text.Length <= 30))
            {
                mesaj += "0 İLA 30 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(txtphone.Text.Length >= 0 && txtphone.Text.Length <= 14))
            {
                mesaj += "0 İLA 14 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }

            return mesaj;
        }
    }
}