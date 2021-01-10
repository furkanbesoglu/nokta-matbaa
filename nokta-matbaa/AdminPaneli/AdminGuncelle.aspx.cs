using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AdminGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
           
            string[] parametreAdi = new string[] { "Event", "@id" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_Admin", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {

                btnguncelle.Visible = false;
            }
            else
            {
                if (IsPostBack == false)
                {
                    btnguncelle.Visible = true;
                    txtUsername.Text = sonuc.Rows[0]["Username"].ToString();
                    txtpassword.Text = sonuc.Rows[0]["password"].ToString();
                }
            }
            
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@id", "@Username", "@password" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtUsername.Text, txtpassword.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Admin", parametreAdi, parametreDeğeri);
                if (sonuc == "1")
                {
                    Response.Redirect("AdminList.aspx");
                }
                else
                {
                    lblhatalar.Text = "Lütfen Bilgileri Kontrol Edip Tekrar Deneyiniz";
                }
            }
            else
            {
                lblhatalar.Text = Kontroller();
            }
           
        }

        string Kontroller()
        {
            string mesaj = "";
            if (!(txtUsername.Text.Length>=0 && txtUsername.Text.Length<=30))
            {
                mesaj += "0 İLA 30 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            if (!(txtpassword.Text.Length>=0 && txtpassword.Text.Length<=30))
            {
                mesaj += "0 İLA 30 KARAKTER ARASINDA GİREBİLİRSİNİZ";
            }
            return mesaj;
        }
    }
}