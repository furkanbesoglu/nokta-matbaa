using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AdvertisingAgencyLİst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AdvertisingAgencyTableAdapter dt = new DataSet1TableAdapters.AdvertisingAgencyTableAdapter();
            repeater1.DataSource = dt.ReklamAjansi();
            repeater1.DataBind();
        }
    }
}