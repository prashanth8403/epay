using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rook_Atlas.web.dashboard.access
{
    public partial class DashBoard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Remove("OscarDeltaMikerKilo");
            Session.Remove("trans");
            Response.Redirect("~/Login");
        }
        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login");
        }
        protected void Transaction_Click(object sender, EventArgs e)
        {
            Session.Remove("OscarDeltaMikerKilo");
            Response.Redirect("~/Login");
        }
    }
}