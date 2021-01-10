using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class WebSiteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.WebSiteTableAdapter dt = new DataSet1TableAdapters.WebSiteTableAdapter();
            repeater1.DataSource = dt.WebSite();
            repeater1.DataBind();
        }
    }
}