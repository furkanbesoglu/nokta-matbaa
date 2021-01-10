using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class AdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AdminTableAdapter dt = new DataSet1TableAdapters.AdminTableAdapter();
            Repeater1.DataSource = dt.Admin();
            Repeater1.DataBind();
        }
    }
}