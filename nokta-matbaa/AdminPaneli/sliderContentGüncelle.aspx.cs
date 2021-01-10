using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class sliderContentGüncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            string[] parametreAdi = new string[] { "Event", "@ID" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_SliderContent", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {
                txtBaslik.Text = sonuc.Rows[0]["Title"].ToString();
                txtDetail.Text = sonuc.Rows[0]["Detail"].ToString();
                imgPicture.ImageUrl = sonuc.Rows[0]["SliderPhotoURL"].ToString();
            }

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

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@ID", "@Title", "@Detail","@SliderPhotoURL"};
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text,txtDetail.Text,imgPicture.ImageUrl};
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_SliderContent", parametreAdi, parametreDeğeri);
                Response.Redirect("sliderContentList.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
        }

        string Kontroller()
        {
            string mesaj = "";

            if (!(txtBaslik.Text.Length >= 0 && txtBaslik.Text.Length <= 50))
            {
                mesaj += "0 İLA 50 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(txtDetail.Text.Length >= 0 && txtDetail.Text.Length <= 300))
            {
                mesaj += "0 İLA 300 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }

            return mesaj;
        }
    }
}