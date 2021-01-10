using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AboutTableAdapter dt = new DataSet1TableAdapters.AboutTableAdapter();
            Repeater1.DataSource = dt.Hakkimizda();
            Repeater1.DataBind();
        }
    }
}