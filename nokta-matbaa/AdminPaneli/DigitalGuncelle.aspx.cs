using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class DigitalGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                UpLoadAndDisplay();

            string[] parametreAdi = new string[] { "Event", "@ID" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_digital", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {
                imgPicture.ImageUrl = sonuc.Rows[0]["PhotoURL"].ToString();
                txtBaslik.Text = sonuc.Rows[0]["Tittle"].ToString();
                textareaIcerik.Value = sonuc.Rows[0]["Detail"].ToString();
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

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@ID", "@Tittle", "@Detail", "@PhotoURL" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text, textareaIcerik.Value, imgPicture.ImageUrl };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_digital", parametreAdi, parametreDeğeri);
                Response.Redirect("DigitalList.aspx");
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
                mesaj += "0 İLA 30 ARASINDA KARAKTER GİREBİLİRSİNİZ";
            }
            if (!(textareaIcerik.Value.Length >= 0 && textareaIcerik.Value.Length <= 1400))
            {
                mesaj += "0 İLA 1400 ARASINDA KARAKTER GİRİNİZ";
            }

            return mesaj;
        }
    }
}