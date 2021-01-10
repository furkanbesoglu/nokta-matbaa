using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class WebSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.WebSiteTableAdapter dt = new DataSet1TableAdapters.WebSiteTableAdapter();
            Repeater1.DataSource = dt.WebSite();
            Repeater1.DataBind();
        }
    }
}