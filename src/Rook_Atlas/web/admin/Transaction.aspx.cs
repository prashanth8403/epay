using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace Rook_Atlas.web.admin
{
    public partial class Transaction : System.Web.UI.Page
    {
       
        StringBuilder Transcationtable = new StringBuilder();
        MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State != ConnectionState.Open)
            {
                connect.Open();
            }

            /**/
            if (Session["OscarDeltaMikerKilo"] == null)
            {
                Response.Redirect("~/Login");
            }
            //USN = (string)Session["OscarDeltaMikerKilo"];
            string ReferenceCheck = "select count(*) from transaction;";
            MySqlCommand refprocess = new MySqlCommand(ReferenceCheck, connect);
            string check1 = refprocess.ExecuteScalar().ToString();
            int check = Convert.ToInt32(check1);
            if (check >= 1)
            {
                string Query = "select ReferenceNo,TransID,Particulars,Amount,Status,Date,UserUsn from transaction;";
                MySqlCommand process = new MySqlCommand(Query, connect);
                MySqlDataReader rd = process.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Transcationtable.Append("<tr style=\"text-align: center; \">");
                        Transcationtable.Append("<td>" + rd[6] + "</td>");
                        Transcationtable.Append("<td>" + rd[0] + "</td>");
                        Transcationtable.Append("<td>" + rd[1] + "</td>");
                        Transcationtable.Append("<td>" + rd[2] + "</td>");
                        Transcationtable.Append("<td> ₹ " + rd[3] + "</td>");
                        if ((int)rd[4] == 0)
                        {
                            Transcationtable.Append("<td>Failed</td>");
                        }
                        else
                        {
                            Transcationtable.Append("<td>Sucessful</td>");
                        }
                        Transcationtable.Append("<td>" + ((DateTime)rd[5]).ToString("dd-MMMM-yyyy") + "</td>");
                        Transcationtable.Append("</tr>");
                    }
                }
                rd.Close();
            }
            else
            {
                Transcationtable.Append("<tr>" +
                "<td></td>" +
                "<td></td>" +
                "<td> No Record Found</td>" +
                "<td></td>" +
                "<td></td>" +
                "</tr>");
            }
            TranscaionPlaceHolder.Controls.Add(new Literal { Text = Transcationtable.ToString() });
        }
    }
}