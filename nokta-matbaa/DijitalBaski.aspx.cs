using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class DijitalBaski : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DigitalPrintingTableAdapter dt = new DataSet1TableAdapters.DigitalPrintingTableAdapter();
            Repeater1.DataSource = dt.DijitalBaski();
            Repeater1.DataBind();
        }
    }
}