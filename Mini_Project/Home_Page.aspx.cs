using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheckin_Click(object sender, EventArgs e)
        {
            
        }

        protected void btncheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Check_Out.aspx");
        }

        protected void btncheckin_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Check_In.aspx");
        }
    }
}