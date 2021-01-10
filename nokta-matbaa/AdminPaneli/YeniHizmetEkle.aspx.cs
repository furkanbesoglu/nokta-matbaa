using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class YeniHizmetEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //IList<HttpPostedFile> SecilenDosyalar = fluPicture.PostedFiles;
            //for (int i = 0; i < SecilenDosyalar.Count; i++)
            //{
            //    fluPicture.PostedFiles[i].SaveAs(Server.MapPath("~/AdminPaneli/images/") + fluPicture.PostedFiles[i].FileName);
            //}
            if (IsPostBack==true)
            {
                if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay();

                if (fluPicture1.PostedFile != null && fluPicture1.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay1();

                if (fluPicture2.PostedFile != null && fluPicture2.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay2();

                if (fluPicture3.PostedFile != null && fluPicture3.PostedFile.ContentLength > 0)
                    UpLoadAndDisplay3();
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
        private void UpLoadAndDisplay2()
        {
            string imgName = fluPicture2.FileName;
            string imgPath = "images/" + imgName;
            int imgSize = fluPicture2.PostedFile.ContentLength;
            if (fluPicture2.PostedFile != null && fluPicture2.PostedFile.FileName != "")
            {

                fluPicture2.SaveAs(Server.MapPath(imgPath));
                imgPicture2.ImageUrl = "../AdminPaneli/" + imgPath;
            }
        }
        private void UpLoadAndDisplay3()
        {
            string imgName = fluPicture3.FileName;
            string imgPath = "images/" + imgName;
            int imgSize = fluPicture3.PostedFile.ContentLength;
            if (fluPicture3.PostedFile != null && fluPicture3.PostedFile.FileName != "")
            {

                fluPicture3.SaveAs(Server.MapPath(imgPath));
                imgPicture3.ImageUrl = "../AdminPaneli/" + imgPath;
            }
        }

        protected void btnNEW_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "Event", "@CategoryID", "@Tittle", "@Detail", "@UrunCodu", "@Fiyat", "@PhotoURL", "@PhotoURL1", "@PhotoURL2", "@PhotoURL3" };
                object[] parametreDegeri = new object[] { "INSERT", xcmbKategori.SelectedItem.Value, txtbaslik.Text, textareaIcerik.Value, txturunCodu.Text, txtFiyat.Text, imgPicture.ImageUrl, imgPicture1.ImageUrl, imgPicture2.ImageUrl, imgPicture3.ImageUrl };
                string sonucYazisi = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Hizmetler", parametreAdi, parametreDegeri);
                Response.Redirect("Hizmetlerimiz.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
            
        }

        string Kontroller()
        {
            string mesaj = "";
            if (!(txtbaslik.Text.Length > 0 && txtbaslik.Text.Length < 30))
            {
                mesaj += "EN AZ 0 İLA 30 KARAKTER ARASI GİREBİLİRSİNİZ";
            }
          

            return mesaj;
        }
    }
}