using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ReferansEkle : System.Web.UI.Page
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
            string[] parametreAdi = new string[] { "Event","@ReferansPhotoURL" };
            object[] parametreDegeri = new object[] { "INSERT",imgPicture.ImageUrl };
            string sonucYazisi = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Referans", parametreAdi, parametreDegeri);
            Response.Redirect("ReferansList.aspx");
        }
    }
}