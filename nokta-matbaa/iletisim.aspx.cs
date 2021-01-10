using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ContactTableAdapter dt = new DataSet1TableAdapters.ContactTableAdapter();
            Repeater1.DataSource = dt.İletisim();
            Repeater1.DataBind();
        }
    }
}