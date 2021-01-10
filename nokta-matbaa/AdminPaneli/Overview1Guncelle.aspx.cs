using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class Overview1Guncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());


            string[] parametreAdi = new string[] { "Event", "@id" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_Overview", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {


                txtBaslik.Text = sonuc.Rows[0]["Tittle"].ToString();
                txtOnyazi.Text = sonuc.Rows[0]["Detail"].ToString();

            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@tittle", "@detail" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text, txtOnyazi.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Overview", parametreAdi, parametreDeğeri);
                Response.Redirect("Overview1.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
          
        }


        string Kontroller()
        {
            string mesaj = "";
            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 25))
            {
                mesaj += "0 İLA 25 KARAKTER ARASINDA GİREBİLRİSİNİZ";
            }
            if (!(txtOnyazi.Text.Length >= 0 && txtOnyazi.Text.Length <= 60))
            {
                mesaj += "0 İLA 60 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            return mesaj;
        }
    }
}