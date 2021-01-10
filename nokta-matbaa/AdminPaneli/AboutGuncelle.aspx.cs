using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AboutGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());

            string[] parametreAdi = new string[] { "Event", "@id" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_about", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {

                btnGüncelle.Visible = false;
            }
            else
            {
                if (IsPostBack == false)
                {
                    btnGüncelle.Visible = true;
                    imgPicture.ImageUrl = sonuc.Rows[0]["VideoURL"].ToString();
                    imgPicture1.ImageUrl = sonuc.Rows[0]["FotografURL"].ToString();
                    txtBaslik.Text = sonuc.Rows[0]["Baslik"].ToString();
                    txtOnyazi.Text = sonuc.Rows[0]["ÖnYazi"].ToString();
                    textareaIcerik.Value = sonuc.Rows[0]["Hakkimizda"].ToString();
                }
            }

            if (IsPostBack == true)
            {
                if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay();

                if (fluPicture1.PostedFile != null && fluPicture1.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay1();
            }
        }


        private void UpLoadAndDisplay()
        {
            string imgName = fluPicture.FileName;
            string imgPath = "images/" + imgName;
            int imgSize = fluPicture.PostedFile.ContentLength;
            if (fluPicture.PostedFile != null && fluPicture.PostedFile.FileName != "")
            {

                fluPicture.SaveAs(Server.MapPath(imgPath));
                imgPicture.ImageUrl = "../AdminPaneli/" + imgPath;
            }
        }

        private void UpLoadAndDisplay1()
        {
            string imgName = fluPicture1.FileName;
            string imgPath = "images/" + imgName;
            int imgSize = fluPicture1.PostedFile.ContentLength;
            if (fluPicture1.PostedFile != null && fluPicture1.PostedFile.FileName != "")
            {

                fluPicture1.SaveAs(Server.MapPath(imgPath));
                imgPicture1.ImageUrl = "../AdminPaneli/" + imgPath;
            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@Baslik", "@OnYazi", "@Hakkimizda", "@FotografURL", "VideoURL" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text, txtOnyazi.Text, textareaIcerik.Value, imgPicture1.ImageUrl, imgPicture.ImageUrl };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_about", parametreAdi, parametreDeğeri);
                Response.Redirect("AboutList.aspx");
            }
            else
            {
                lblhatalar.Text = Kontroller();
            }
            
        }

        string Kontroller()
        {
            string mesaj = "";

            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 30))
            {
                mesaj += "0 İLA 30 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(txtOnyazi.Text.Length >= 0 && txtOnyazi.Text.Length <= 600))
            {
                mesaj += "0 İLA 600 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(textareaIcerik.Value.Length>=0 && textareaIcerik.Value.Length<=2000))
            {
                mesaj += "0 İLA 2000 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }

            return mesaj;
        }
    }
}