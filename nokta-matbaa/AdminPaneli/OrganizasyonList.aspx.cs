using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class OrganizasyonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OrganizationTableAdapter dt = new DataSet1TableAdapters.OrganizationTableAdapter();
            repeater1.DataSource = dt.Organizasyon();
            repeater1.DataBind();
        }
    }
}