﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class logoList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.LogoTableAdapter dt = new DataSet1TableAdapters.LogoTableAdapter();
            repeater1.DataSource = dt.LogoGetir();
            repeater1.DataBind();
        }
    }
}