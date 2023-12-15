using System;
using System.Text;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;


namespace Rook_Atlas.web.dashboard.access
{
    public partial class mypage1 : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
            if (Session["OscarDeltaMikerKilo"] == null)
            {
                Response.Redirect("~/Login");
            }
            else
            {
                if (UserName.Text == "name" && (int)Session["trans"] != 1)
                {
                    string ID = (string)Session["OscarDeltaMikerKilo"];
                    int curs = 0, cate = 0;

                    connect.Open();
                    string query1 = "SELECT StudentName FROM UserProfile WHERE UserUsn = '" + ID + "'";
                    MySqlCommand process = new MySqlCommand(query1, connect);
                    UserUsn.Text = ID;
                    using (MySqlDataReader rdr = process.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            UserName.Text = (string)rdr["StudentName"];
                        }
                    }
                    string query2 = "SELECT * FROM UserAcademic WHERE UserUsn = '" + ID + "'";
                    MySqlCommand process2 = new MySqlCommand(query2, connect);
                    using (MySqlDataReader rdr1 = process2.ExecuteReader())
                    {
                        while (rdr1.Read())
                        {
                            UserAdcYear.Text = ((int)rdr1["AcademicYear"]).ToString();
                            curs = (int)rdr1["StudentCourse"];
                            cate = (int)rdr1["AdmissionCategory"];
                        }
                    }
                    //string feeQuery = "SELECT CAST (SUM(NetAmount) AS FLOAT),CAST (SUM(PaidAmount) AS FLOAT) from user_payments WHERE UserUsn = '" + ID + "'";
                    string feeQuery = "SELECT SUM(NetAmount),SUM(PaidAmount) from user_payments WHERE UserUsn = '" + ID + "'";
                    MySqlCommand feeprocess = new MySqlCommand(feeQuery, connect);
                    using (MySqlDataReader rdr1 = feeprocess.ExecuteReader())
                    {
                        while (rdr1.Read())
                        {
                            Session["trans"] = 0;
                            NetFee.Text = ((double)rdr1[0]- (double)rdr1[1] + ".00").ToString();
                            fee_paid.Text = ((double)rdr1[1] + ".00").ToString();
                        }
                    }

                    if (curs == 1)
                    {
                        UserCourse.Text = "ENGINEERING (B.TECH)";
                    }
                    else if (curs == 2)
                    {
                        UserCourse.Text = "ENGINEERING (M.TECH)";
                    }
                    else if (curs == 3)
                    {
                        UserCourse.Text = "Bachlor of Comp. App.";
                    }
                    else if (curs == 4)
                    {
                        UserCourse.Text = "Master of Comp. App.";
                    }
                    else if (curs == 5)
                    {
                        UserCourse.Text = "Architecture (B.Arch)";
                    }
                    if (cate == 1)
                    {
                        UserAdmCat.Text = "KEA CET-SNQ";
                    }
                    else if (cate == 2)
                    {
                        UserAdmCat.Text = "KEA CET-1A";
                    }
                    else if (cate == 3)
                    {
                        UserAdmCat.Text = "KEA CET - GM";
                    }
                    else if (cate == 4)
                    {
                        UserAdmCat.Text = "Comedk";
                    }
                    else if (cate == 7 || cate == 8)
                    {
                        UserAdmCat.Text = "BMSIT - Management";
                    }
                    else if (cate == 9)
                    {
                        UserAdmCat.Text = "OPEN(MCA/BCA)";
                    }
                    string query3 = "SELECT ReferenceNo,Particulars,NetAmount,PaidAmount,DueDate,Status FROM user_payments WHERE UserUsn = '" + ID + "'";
                    MySqlCommand process3 = new MySqlCommand(query3, connect);
                    MySqlDataReader rd = process3.ExecuteReader();
                    if (rd.HasRows)
                    {
                        while (rd.Read())
                        {
                            table.Append("<tr style=\"text-align: center; \">");
                            table.Append("<td>" + rd[0] + "</td>");
                            table.Append("<td>" + rd[1] + "</td>");
                            table.Append("<td> ₹ " + rd[2] + "</td>");
                            table.Append("<td> ₹ " + rd[3] + "</td>");
                            table.Append("<td>" + ((DateTime)rd[4]).ToString("dd-MMMM-yyyy") + "</td>");
                            if ((int)rd[5] == 0)
                            {
                                table.Append("<td>Due</td>");
                                table.Append("<td>" + "<a style=\"text-align:center; color:#4facfe;\"onMouseOut=\"this.style.color = '#4facfe'\"  onMouseOver=\"this.style.color = '#fff'\" Type=\"button\" class=\"pay-button\" href=\"payments?reference="+rd[0]+"\"> Pay </a>" + "</td>");
                            }
                            else
                            {
                                table.Append("<td>Paid</td>");
                            }

                            //table.Append("<td>" + "<a class=\"pay-button\"  href=\"Test.aspx?Record=" + rd[0] + "\"style=\"width:100px;height:50px;\">Pay</a>" + "</td>");
                            table.Append("<td></td>");
                            table.Append("</tr>");
                        }
                    }
                    table.Append("</table>");
                    paymentsContent.Controls.Add(new Literal { Text = table.ToString() });
                    rd.Close();
                }


            }//
        }
    }
}