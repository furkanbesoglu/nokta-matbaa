using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class QualityList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.QualityTableAdapter dt = new DataSet1TableAdapters.QualityTableAdapter();
            Repeater1.DataSource = dt.Quality();
            Repeater1.DataBind();
        }
    }
}