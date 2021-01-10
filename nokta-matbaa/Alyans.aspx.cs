using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa
{
    public partial class Alyans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.HizmetlerTableAdapter ht = new DataSet1TableAdapters.HizmetlerTableAdapter();
            Repeater1.DataSource = ht.Alyans();
            Repeater1.DataBind();
        }
    }
}