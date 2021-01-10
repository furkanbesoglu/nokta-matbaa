using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ReferansList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ReferansTableAdapter rf = new DataSet1TableAdapters.ReferansTableAdapter();
            Repeater1.DataSource = rf.Referanss();
            Repeater1.DataBind();
        }
    }
}