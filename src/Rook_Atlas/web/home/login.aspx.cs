using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Web.UI;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Data;
using System.Web.UI.WebControls;

namespace Rook_Atlas.web.home
{
    public partial class nlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void usernamebox_TextChanged(object sender, EventArgs e)
        {
            Error_msg.Text = "";
        }

        protected void passwordbox_TextChanged(object sender, EventArgs e)
        {
            Error_msg.Text = "";
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
            connect.Open();

            string query1 = "select count(*) from UserCredn where Uid = " + Convert.ToInt32(usernamebox.Text) + " and Hash = '" + encrypt(passwordbox.Text) + "'";
            MySqlCommand process = new MySqlCommand(query1, connect);
            string output = process.ExecuteScalar().ToString();
            if (output == "1")
            {
                string query2 = "select UserUsn from UserCredn where Uid = " + Convert.ToInt32(usernamebox.Text) + "";
                MySqlCommand process2 = new MySqlCommand(query2, connect);
                using (MySqlDataReader rdr = process2.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        //string code = "1";
                        Session["OscarDeltaMikerKilo"] = (string)rdr["UserUsn"];
                        Session["trans"] = 0;
                    }
                }
                /*if((string)Session["OscarDeltaMikerKilo"] == "1BY17CS119")
                Response.Redirect("~/web/dashboard/access/mypage?Type=♥♥☺+Silicon="+ encrypt(usernamebox.Text));
                else
                Response.Redirect("~/web/dashboard/access/mypage?Silicon=" + encrypt(usernamebox.Text));
                */
                Response.Redirect("~/web/dashboard/access/mypage");
                connect.Close();
            }
            else
            {
                Error_msg.Text = "Incorrect Username or Password";
                passwordbox.Text = "";
                usernamebox.Text = "";
            }
            connect.Close();
        }

        public static string encrypt(string text)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(text);
            SHA256Managed hashstring = new SHA256Managed();
            byte[] hash = hashstring.ComputeHash(bytes);
            string hashString = string.Empty;
            foreach (byte x in hash)
            {
                hashString += String.Format("{0:x2}", x);
            }
            return hashString;
        }

    }
}