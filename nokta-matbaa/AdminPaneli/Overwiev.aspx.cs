using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class Overwiev : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Overview1TableAdapter dt = new DataSet1TableAdapters.Overview1TableAdapter();
            Repeater1.DataSource = dt.GenelBakisss();
            Repeater1.DataBind();
        }
    }
}