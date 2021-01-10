using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class SosyalMediaGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());


            string[] parametreAdi = new string[] { "Event", "@ID" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_SocialMedia", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {
                btnGüncelle.Visible = false;
            }
            else
            {
                if (IsPostBack == false)
                {
                    btnGüncelle.Visible = true;
                    txtinstagram.Text = sonuc.Rows[0]["instagram"].ToString();
                    txtfacebook.Text = sonuc.Rows[0]["Facebook"].ToString();
                    txtTwitter.Text = sonuc.Rows[0]["Twitter"].ToString();
                    txtinstagramTwo.Text = sonuc.Rows[0]["instagramTwo"].ToString();

                }
            }

        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() =="")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@instagram", "@Facebokk", "@Twitter", "@instagramTwo" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtinstagram.Text, txtfacebook.Text, txtTwitter.Text, txtinstagramTwo.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_SocialMedia", parametreAdi, parametreDeğeri);
                Response.Redirect("SocialMedia.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
            
        }

        string Kontroller()
        {
            string mesaj = "";
            if (!(txtinstagram.Text.Length > 0 && txtinstagram.Text.Length < 100))
            {
                mesaj += "EN AZ 0 İLA 100 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(txtfacebook.Text.Length > 0 && txtfacebook.Text.Length <100))
            {
                mesaj += "EN AZ 0 İLA 100 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(txtTwitter.Text.Length > 0 && txtTwitter.Text.Length < 100))
            {
                mesaj += "EN AZ 0 İLA 100 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(txtinstagramTwo.Text.Length > 0 && txtinstagramTwo.Text.Length < 100))
            {
                mesaj += "EN AZ 0 İLA 100 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            return mesaj;
        }
    }
}