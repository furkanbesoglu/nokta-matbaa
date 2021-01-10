using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class Organizasyon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OrganizationTableAdapter dt = new DataSet1TableAdapters.OrganizationTableAdapter();
            Repeater1.DataSource = dt.Organizasyon();
            Repeater1.DataBind();
        }
    }
}