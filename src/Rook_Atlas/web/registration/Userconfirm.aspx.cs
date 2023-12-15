using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rook_Atlas.web.registration
{
    public partial class Userconfirm : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
          if (Session["SecureAuthorizeWhiskey"] != null)
            {
                Email.Text = Request.QueryString["Email"];
                Session.Remove("SecureAuthorizeWhiskey");
            }
            else
            {
                Response.Redirect("~/Login");
            }
        }
    }
}