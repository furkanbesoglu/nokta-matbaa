using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class MaliyeileAnlasmali : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.HizmetlerTableAdapter dt = new DataSet1TableAdapters.HizmetlerTableAdapter();
            Repeater1.DataSource = dt.MaliyeileAnlaşmalı();
            Repeater1.DataBind();
        }
    }
}