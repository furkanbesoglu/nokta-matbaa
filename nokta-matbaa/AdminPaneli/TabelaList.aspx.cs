using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class TabelaList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TabelaTableAdapter dt = new DataSet1TableAdapters.TabelaTableAdapter();
            repeater1.DataSource = dt.TabelaGetir();
            repeater1.DataBind();
        }
    }
}