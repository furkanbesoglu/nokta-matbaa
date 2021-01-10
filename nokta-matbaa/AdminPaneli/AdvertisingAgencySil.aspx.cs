using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AdvertisingAgencySil : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        }

        protected void btnsil_Click(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "@Event", "@ID" };
            object[] parametreDeğeri = new object[] { "DELETE", id };
            string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_advertisingAgency", parametreAdi, parametreDeğeri);
            Response.Redirect("AdvertisingAgencyLİst.aspx");
        }
    }
}