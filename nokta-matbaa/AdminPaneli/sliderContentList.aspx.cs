using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.AdminPaneli
{
    public partial class sliderContentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.SliderContentTableAdapter sl = new DataSet1TableAdapters.SliderContentTableAdapter();
            Repeater1.DataSource = sl.SliderContent();
            Repeater1.DataBind();
        }
    }
}