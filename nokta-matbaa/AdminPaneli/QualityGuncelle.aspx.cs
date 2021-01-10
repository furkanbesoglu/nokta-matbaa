using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class QualityGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());


            string[] parametreAdi = new string[] { "Event", "@ID" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", id };
            DataTable sonuc = methodlar.gosterDataTablosu("Connnokta_matbaa", "sp_Quality", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {
                btnGüncelle.Visible = false;
            }
            else
            {
                if (IsPostBack == false)
                {
                    btnGüncelle.Visible = true;
                    txtBaslik.Text = sonuc.Rows[0]["Subtittle"].ToString();


                }
            }

        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@ID", "@Subtittle" };
                object[] parametreDeğeri = new object[] { "UPDATE", id, txtBaslik.Text };
                string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Quality", parametreAdi, parametreDeğeri);
                Response.Redirect("QualityList.aspx");
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
                mesaj += "0 İla 30 Karakter Arasında Girebilirsiniz";
            }

            return mesaj;
        }
    }
}