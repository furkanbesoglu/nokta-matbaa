using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class logoGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                UpLoadAndDisplay();

            if (fluPicture1.PostedFile != null && fluPicture1.PostedFile.ContentLength > 0)
                UpLoadAndDisplay1();

            string[] parametreAdi = new string[] { "Event", "@ID" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_Logo", parametreAdi, parametreDeğeri);
            if (IsPostBack == false)
            {
                imgPicture.ImageUrl = sonuc.Rows[0]["logoPhotoURL"].ToString();
                imgPicture1.ImageUrl = sonuc.Rows[0]["logoPhotoURL1"].ToString();

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

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@ID", "@logoPhotoURL", "@logoPhotoURL1" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, imgPicture.ImageUrl, imgPicture1.ImageUrl };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Logo", parametreAdi, parametreDeğeri);
                Response.Redirect("logoList.aspx");
            }
            else
            {
                Label1.Text = Kontroller();
            }
        }

        string Kontroller()
        {
            string mesaj = "";
            if (!(imgPicture.ImageUrl.Length >= 0 && imgPicture.ImageUrl.Length <= 50))
            {
                mesaj += "0 İla 50 Arası Karakter Girebilirsiniz";
            }
            if (!(imgPicture1.ImageUrl.Length >=0 && imgPicture1.ImageUrl.Length<=50))
            {
                mesaj += "0 İla 50 Arası Karakter Girebilirsiniz";
            }
            return mesaj;
        }
    }
}