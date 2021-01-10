using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class DavetiyeDetay : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.HizmetlerTableAdapter dt = new DataSet1TableAdapters.HizmetlerTableAdapter();
            Repeater1.DataSource = dt.DavetiyeDetay(id);
            Repeater1.DataBind();

        }
    }
}