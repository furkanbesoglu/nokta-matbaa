using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class ContactList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ContactTableAdapter ab = new DataSet1TableAdapters.ContactTableAdapter();
            DataSet1TableAdapters.OpenCloseTableAdapter op = new DataSet1TableAdapters.OpenCloseTableAdapter();
            Repeater1.DataSource = ab.İletisim();
            Repeater1.DataBind();
            Repeater2.DataSource = op.AcilisKapanis();
            Repeater2.DataBind();
        }
    }
}