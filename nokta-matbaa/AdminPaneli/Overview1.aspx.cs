using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class Overview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OverviewTableAdapter dt = new DataSet1TableAdapters.OverviewTableAdapter();
            Repeater1.DataSource = dt.GenelBakis();
            Repeater1.DataBind();
        }
    }
}