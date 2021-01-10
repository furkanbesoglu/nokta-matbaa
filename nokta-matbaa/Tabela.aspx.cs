using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class Tabela : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TabelaTableAdapter dt = new DataSet1TableAdapters.TabelaTableAdapter();
            Repeater1.DataSource = dt.TabelaGetir();
            Repeater1.DataBind();
        }
    }
}