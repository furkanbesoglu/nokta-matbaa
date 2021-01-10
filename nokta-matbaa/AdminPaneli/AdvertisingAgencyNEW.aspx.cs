using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AdvertisingAgencyNEW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                UpLoadAndDisplay();
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

        protected void btnNEW_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "Event", "@Tittle", "@Subtittle", "@Detail", "@AdvertisingPhotoURL" };
                object[] parametreDegeri = new object[] { "INSERT", txtBaslik.Text, txtsubtitle.Text, textareaIcerik.Value, imgPicture.ImageUrl };
                string sonucYazisi = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_advertisingAgency", parametreAdi, parametreDegeri);
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

            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 25))
            {
                mesaj += "0 İLA 25 KARAKTER ARASINDA GİREBİLİRİSNİZ";
            }
            if (!(txtsubtitle.Text.Length >= 0 && txtsubtitle.Text.Length <= 25))
            {
                mesaj += "0 İLA 25 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(textareaIcerik.Value.Length >= 0 && textareaIcerik.Value.Length <= 1500))
            {
                mesaj += "0 İLA 1500 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }

            return mesaj;
        }
    }
}