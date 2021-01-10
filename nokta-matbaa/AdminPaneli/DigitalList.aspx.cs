using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class DigitalList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DigitalPrintingTableAdapter dt = new DataSet1TableAdapters.DigitalPrintingTableAdapter();
            repeater1.DataSource = dt.DijitalBaski();
            repeater1.DataBind();
        }
    }
}