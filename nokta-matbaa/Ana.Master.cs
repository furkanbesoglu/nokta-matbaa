using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class Ana : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OpenCloseTableAdapter dt = new DataSet1TableAdapters.OpenCloseTableAdapter();
            RepeaterOpenClose.DataSource = dt.AcilisKapanis();
            RepeaterOpenClose.DataBind();

            DataSet1TableAdapters.SocialMediaTableAdapter td = new DataSet1TableAdapters.SocialMediaTableAdapter();
            RepeaterSocial.DataSource = td.SocialMedia();
            RepeaterSocial.DataBind();

            DataSet1TableAdapters.SocialMediaTableAdapter sc = new DataSet1TableAdapters.SocialMediaTableAdapter();
            RepeaterSocialMedia.DataSource = sc.SocialMedia();
            RepeaterSocialMedia.DataBind();


            DataSet1TableAdapters.ContactTableAdapter ct = new DataSet1TableAdapters.ContactTableAdapter();
            Repeaterİletisim.DataSource = ct.İletisim();
            Repeaterİletisim.DataBind();

            DataSet1TableAdapters.ContactTableAdapter tc = new DataSet1TableAdapters.ContactTableAdapter();
            Repeater1.DataSource = tc.İletisim();
            Repeater1.DataBind();

            DataSet1TableAdapters.LogoTableAdapter lg = new DataSet1TableAdapters.LogoTableAdapter();
            RepeaterNavbar.DataSource = lg.LogoGetir();
            RepeaterNavbar.DataBind();

            DataSet1TableAdapters.LogoTableAdapter lgg = new DataSet1TableAdapters.LogoTableAdapter();
            RepeaterFooter.DataSource = lgg.LogoGetir();
            RepeaterFooter.DataBind();
        }
    }
}