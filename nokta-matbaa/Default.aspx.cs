using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.User
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.SliderContentTableAdapter sl = new DataSet1TableAdapters.SliderContentTableAdapter();
            RepeaterSliderContent.DataSource = sl.SliderContent();
            RepeaterSliderContent.DataBind();

            DataSet1TableAdapters.ServicesTableAdapter dt = new DataSet1TableAdapters.ServicesTableAdapter();
            Repeater1.DataSource = dt.Servisler();
            Repeater1.DataBind();

            //DataSet1TableAdapters.AboutTableAdapter td = new DataSet1TableAdapters.AboutTableAdapter();
            //RepeaterAbout.DataSource = td.Hakkimizda();
            //RepeaterAbout.DataBind();

           //DataSet1TableAdapters.OverviewTableAdapter bt = new DataSet1TableAdapters.OverviewTableAdapter();
           //RepeaterOverview.DataSource = bt.GenelBakis();
           //RepeaterOverview.DataBind();
           //
           //DataSet1TableAdapters.Overview1TableAdapter tb = new DataSet1TableAdapters.Overview1TableAdapter();
           //RepeaterOverview1.DataSource = tb.GenelBakisss();
           //RepeaterOverview1.DataBind();

            DataSet1TableAdapters.QualityTableAdapter qt = new DataSet1TableAdapters.QualityTableAdapter();
            RepeaterQuality.DataSource = qt.Quality();
            RepeaterQuality.DataBind();

           
            DataSet1TableAdapters.ReferansTableAdapter rf = new DataSet1TableAdapters.ReferansTableAdapter();
            RepeaterRefernas.DataSource = rf.Referanss();
            RepeaterRefernas.DataBind();
        }
    }
}