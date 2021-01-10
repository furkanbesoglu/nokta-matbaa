using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nokta_matbaa.Login
{
    public partial class adminLogin : System.Web.UI.Page
    {
        SqlConnection Connnokta_matbaa = new SqlConnection("Data Source=94.73.146.5; DataBase=u9646108_db363; User ID=u9646108_user363; Password=AByl91R9PXxk66G;  Integrated Security=False");
        //SqlConnection Connnokta_matbaa = new SqlConnection("Data Source=DESKTOP-1MAAJ30\\SQLEXPRESS;Initial Catalog=noktamatbaa2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Admin Where Username='" + txtUsername.Text + "' and password='" + txtSifre.Text + "'", Connnokta_matbaa);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")
            {
                Session["Username"] = txtUsername.Text;
                //HttpCookie musteriCookie = new HttpCookie("userName");
                //musteriCookie["userName"] = dt.Rows[0]["userName"].ToString();
                //musteriCookie.Expires = DateTime.Now.AddDays(1d);
                //Response.Cookies.Add(musteriCookie);
                Response.Redirect("~/AdminPaneli/AboutList.aspx");
            }
            else
            {
                lblHatalar.Text = "Hatalı Giriş Yaptınız Lütfen Mail Adresinizi Ve Şifrenizi Kontrol Ediniz";
            }
        }
    }
}