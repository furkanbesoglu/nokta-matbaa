using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ana : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null) //sayfa yüklendiği anda session kontrolü yapılıyor.
            {
                lblsession.Text = (Session["userName"].ToString());
                //sessionu ekrana yazdırıyoruz.

            }
            else
            {

                Response.Redirect("/Login/adminLogin.aspx");
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Login/adminLogin");
        }
    }
}