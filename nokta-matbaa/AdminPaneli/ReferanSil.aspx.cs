using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ReferanSil : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        }

        protected void btnsil_Click(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "@Event", "@ReferansID" };
            object[] parametreDeğeri = new object[] { "DELETE", id };
            string sonuc = methodlar.EkleGuncelleSil("Connnokta_matbaa", "sp_Referans", parametreAdi, parametreDeğeri);
            Response.Redirect("ReferansList.aspx");
        }
    }
}