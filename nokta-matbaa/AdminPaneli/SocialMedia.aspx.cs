using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class SocialMedia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.SocialMediaTableAdapter dt = new DataSet1TableAdapters.SocialMediaTableAdapter();
            Repeater1.DataSource = dt.SocialMedia();
            Repeater1.DataBind();
        }
    }
}