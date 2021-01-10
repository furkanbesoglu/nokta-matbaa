using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ServicesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ServicesTableAdapter dt = new DataSet1TableAdapters.ServicesTableAdapter();
            Repeater1.DataSource = dt.Servisler();
            Repeater1.DataBind();
        }
    }
}