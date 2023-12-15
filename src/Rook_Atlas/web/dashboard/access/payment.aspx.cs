using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Rook_Atlas.web.dashboard.access
{

    public partial class payment : System.Web.UI.Page
    {
        string ReferenceNo = "";
        string Particular="";
        double NetAmount;
        string Usn;
        double PaidAmount;
        MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["OscarDeltaMikerKilo"] == null)
            {
                Response.Redirect("~/Login");
            }
            Usn = (string)Session["OscarDeltaMikerKilo"];
            if(connect.State != System.Data.ConnectionState.Open)
                connect.Open();
            ReferenceNo = HttpUtility.ParseQueryString(this.ClientQueryString).Get("reference");
            string ReferenceCheck = "select count(*) from user_payments where ReferenceNo=" + ReferenceNo + ";";
            MySqlCommand refprocess = new MySqlCommand(ReferenceCheck, connect);
            string check = refprocess.ExecuteScalar().ToString();
            if (check == "1")
            {
                String Query = "select NetAmount,PaidAmount,Particulars from user_payments where ReferenceNo=" + ReferenceNo + ";";
                MySqlCommand process = new MySqlCommand(Query, connect);
                using (MySqlDataReader Reader = process.ExecuteReader())
                {
                    while (Reader.Read())
                    {
                        NetAmount = (double)Reader["NetAmount"];
                        PaidAmount = (double)Reader["PaidAmount"];
                        Particular = (string)Reader["Particulars"];
                    }
                }
                if ((NetAmount - PaidAmount) != 0)
                {
                    RemAmount.Text = (NetAmount - PaidAmount).ToString() + ".00";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fee already paid')", true);
                    Response.Redirect("~/web/dashboard/access/mypage");
                    connect.Close();
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Reference No')", true);
                Response.Redirect("~/web/dashboard/access/mypage");
                connect.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            connect.Close();
            Response.Redirect("~/web/dashboard/access/mypage");
        }

        protected void Pay_Click(object sender, EventArgs e)
        {
            double FeeAmount = Convert.ToDouble(Amount.Text);
            if(!(FeeAmount <= 0))
            {
                if ((FeeAmount+PaidAmount) > NetAmount)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Current Amount excess of Fee')", true);
                    Amount.Text = "";
                }
                else
                {
                    /*
                    DateTime date = new DateTime();
                    date = DateTime.Now;
                    */
                    //string TranscationQuery = "insert into transaction (UserUsn,ReferenceNo,Particulars,Amount,Status,Date) values ('"+Usn+"',"+ReferenceNo+",'"+Particular+"',"+FeeAmount.ToString()+",1,'"+ DateTime.Now.ToString("yyyy-MM-dd") + "')";
                    string FeeUpdate = "update user_payments set PaidAmount =" + (PaidAmount + FeeAmount).ToString() + " where ReferenceNo='"+ ReferenceNo + "';";
                    //MySqlCommand process1 = new MySqlCommand(TranscationQuery, connect);
                    MySqlCommand process2 = new MySqlCommand(FeeUpdate, connect);
                    //process1.ExecuteNonQuery();
                    process2.ExecuteNonQuery();
                    string Query = "select NetAmount,PaidAmount from user_payments where ReferenceNo=" + ReferenceNo + ";";
                    MySqlCommand process = new MySqlCommand(Query, connect);
                    using (MySqlDataReader Reader = process.ExecuteReader())
                    {
                        while (Reader.Read())
                        {
                            NetAmount = (double)Reader["NetAmount"];
                            PaidAmount = (double)Reader["PaidAmount"];
                        }
                    }
                    if(NetAmount == PaidAmount)
                    {
                        string UpdateQuery = "update user_payments set Status=1 where ReferenceNo=" + ReferenceNo + ";";
                        MySqlCommand process3 = new MySqlCommand(UpdateQuery, connect);
                        process3.ExecuteNonQuery();
                    }
                    
                    Response.Redirect("~/web/dashboard/access/mypage");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Payment Sucessful')", true);
                    connect.Close();
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Amount')", true);
                Amount.Text = "";
            }
        }
    }
}