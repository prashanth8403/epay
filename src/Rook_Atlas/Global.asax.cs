using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;


namespace Rook_Atlas
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Home", "Default", "~/Default.aspx");
            routes.MapPageRoute("Login", "Login", "~/web/home/login.aspx");
            routes.MapPageRoute("errorlogin", "error/errorlogin", "~/web/home/error/errorlogin.aspx");
            routes.MapPageRoute("Register", "Register", "~/web/registration/Register.aspx");
            routes.MapPageRoute("Confirm", "Confirm", "~/web/registration/Userconfirm.aspx");
            routes.MapPageRoute("Dashboard", "web/dashboard/access/mypage",  "~/web/dashboard/access/mypage.aspx");
            routes.MapPageRoute("Settings", "web/dashboard/access/settings", "~/web/dashboard/access/settings.aspx");
            routes.MapPageRoute("Profile", "web/dashboard/access/profile", "~/web/dashboard/access/profile.aspx");
            routes.MapPageRoute("Transaction", "web/dashboard/access/transactions", "~/web/dashboard/access/transaction.aspx");
            routes.MapPageRoute("Payments", "web/dashboard/access/payments", "~/web/dashboard/access/payment.aspx");

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}