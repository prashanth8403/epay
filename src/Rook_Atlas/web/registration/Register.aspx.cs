using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;

namespace Rook_Atlas.web.registration
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if ((string)Session["Comptroller"] == null)
            {
                UserPersonal.Visible = true;
                UserAcademic.Visible = false;
                UserAuthentication.Visible = false;
                UserSet.Visible = false;
               
            }

            else if ((string)Session["Comptroller"] == "1")
            {
                UserPersonal.Visible = false;
                UserAcademic.Visible = true;
                UserAuthentication.Visible = false;
                UserSet.Visible = false;
              
            }
            else if((string)Session["Comptroller"] == "2")
            {
                UserPersonal.Visible = false;
                UserAcademic.Visible = false;
                UserAuthentication.Visible = true;
                UserSet.Visible = false;
                
            }
            else if(((string)Session["Comptroller"] == "3") && (bool)Session["SecureAuthorizeWhiskey"])
            {
                UserPersonal.Visible = false;
                UserAcademic.Visible = false;
                UserAuthentication.Visible = false;
                UserSet.Visible = true;
               
            }

            if (Session["DropControl"] == null)
            {
                
                /*Style Operation*/
                UserAcademicYear.CssClass = "text-box-drop-dis";
                UserCategory.CssClass = "text-box-drop-dis";
                UserSection.CssClass = "text-box-drop-dis";
                UserBranch.CssClass = "text-box-drop-dis";
                /*Validator control*/
                UserCategoryRequired.Enabled = false;
                UserSectionRequired.Enabled = false;
                UserAcademicYearRequired.Enabled = false;
                UserBranchRequired.Enabled = false;
                /*Field Box*/
                UserCategory.Enabled = false;
                UserBranch.Enabled = false;
                UserSection.Enabled = false;
                UserAcademicYear.Enabled = false;
            }
           
        }
        protected void next1_Click(object sender, EventArgs e)
        {
            /**/
            Session["Comptroller"] = "1";
            UserPersonal.Visible = false;
            UserAcademic.Visible = true;
            UserAuthentication.Visible = false;
            UserSet.Visible = false;
        }
        protected void next2_Click(object sender, EventArgs e)
        {
            /**/
            Session["Comptroller"] = "2";
            UserPersonal.Visible = false;
            UserAcademic.Visible = false;
            UserAuthentication.Visible = true;
            UserSet.Visible = false;
            /**/
            MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
            connect.Open(); 
            MySqlCommand Query1 = new MySqlCommand("select count(*) from UserProfile where UserUsn = '" + UserUsn.Text + "' ", connect);
            string Out1 = Query1.ExecuteScalar().ToString();
            MySqlCommand Query2 = new MySqlCommand("select count(*) from UserProfile where StudentName = '" + UserName.Text + "' and FatherName = '" + FatherName.Text + "'", connect);
            string Out2 = Query2.ExecuteScalar().ToString();
            connect.Close();
            /**/
            if (Out1 == "1" || Out2 == "1")
            {
                Session["Comptroller"] = null;
                ScriptManager.RegisterStartupScript(Page, GetType(), "Alert", "<script>alert('User Already Registered')</script>", false);
                UserPersonal.Visible = true;
                UserAcademic.Visible = false;
                UserAuthentication.Visible = false;
                UserSet.Visible = false;
            }
            else
            {
                SendMail();
                UserPersonal.Visible = false;
                UserAcademic.Visible = false;
                UserSet.Visible = false;
                UserAuthentication.Visible = true;
            }
        }
        protected void next3_Click(object sender, EventArgs e)
        {
            if ((int)Session["yankeexray"] == Convert.ToInt32(Kader.Text))
            {
                Session["Comptroller"] = "3";
                UserPersonal.Visible = false;
                UserAcademic.Visible = false;
                UserAuthentication.Visible = false;
                UserSet.Visible = true;
                Session["SecureAuthorizeWhiskey"] = true;
            }
            else
            {
                OtpMsg.Text = "* Incorrect OTP";
            }
            /**/
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            Session["Case"] = Convert.ToInt32(UserCategory.Text);
            MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["asvdvsdvurepsdf8"].ConnectionString);
            connect.Open();
            double netamount = 0;
            if (UserCourse.SelectedValue == "1" && (int)Session["Case"] == 1)
            {
                netamount = 21390;
            }
            else if (UserCourse.SelectedValue == "1" && (int)Session["Case"] == 2)
            {
                netamount = 43740;
            }
            else if (UserCourse.SelectedValue == "1" && (int)Session["Case"] == 3)
            {
                netamount = 78810;
            }
            else if (UserCourse.SelectedValue == "1" && (int)Session["Case"] == 4)
            {
                netamount = 198540;
            }
            else if (UserCourse.SelectedValue == "5" && (int)Session["Case"] == 4)
            {
                netamount = 198540;
            }
            else if (UserCourse.SelectedValue == "5" && (int)Session["Case"] == 3)
            {
                netamount = 78810;
            }
            else if (UserCourse.SelectedValue == "2")
            {
                netamount = 77315;
            }
            else if (UserCourse.SelectedValue == "3")
            {
                netamount = 57650;
            }
            else if (UserCourse.SelectedValue == "4")
            {
                netamount = 65180;
            }
            DateTime DueDate = new DateTime(2020,7,15);
            try
            {
                MySqlCommand insert = new MySqlCommand("Register", connect);
                insert.CommandType = CommandType.StoredProcedure;
                insert.Parameters.AddWithValue("UserUSN", UserUsn.Text.ToUpper());
                insert.Parameters.AddWithValue("STUDENTName", UserName.Text.ToUpper());
                insert.Parameters.AddWithValue("BIRTHDate", Convert.ToDateTime(UserDOB.Text));
                insert.Parameters.AddWithValue("FATHERName", FatherName.Text.ToUpper());
                insert.Parameters.AddWithValue("MOTHERName", MotherName.Text.ToUpper());
                insert.Parameters.AddWithValue("EMAIL", UserEmail.Text);
                insert.Parameters.AddWithValue("PHONENo", UserPhone.Text.ToUpper());
                insert.Parameters.AddWithValue("ADDress", UserAddress.Text.ToUpper() + " " + UserCity.Text.ToUpper());
                insert.Parameters.AddWithValue("STATE", UserState.Text.ToUpper());
                insert.Parameters.AddWithValue("PINcode", Convert.ToInt32(UserZip.Text));
                insert.Parameters.AddWithValue("STUDENTCourse", Convert.ToInt32(UserCourse.Text));
                insert.Parameters.AddWithValue("STUDENTSection", Convert.ToInt32(UserSection.Text));
                insert.Parameters.AddWithValue("ACADEMICYear", Convert.ToInt32(UserAcademicYear.Text));
                insert.Parameters.AddWithValue("ADMISSIONCategory", Convert.ToInt32(UserCategory.Text));
                insert.Parameters.AddWithValue("BRANCH", Convert.ToInt32(UserBranch.Text));
                insert.Parameters.AddWithValue("HASH", Hash(Romeo.Text));
                insert.Parameters.AddWithValue("SecurityQ", UserSecurity.Text.ToUpper());
                insert.Parameters.AddWithValue("SecurityA", Alpha.Text.ToUpper());
                insert.Parameters.AddWithValue("NetFEE", netamount);
                insert.Parameters.AddWithValue("PARTICULAR", "ANNUAL COLLEGE FEES");
                insert.Parameters.AddWithValue("DueDATE", DueDate);
                insert.ExecuteNonQuery();
            }
            catch(MySqlException ex)
            {
                if(ex.Message != "")
                {

                }
            }
            

            string query = "select Uid from UserCredn where UserUsn = '" + UserUsn.Text + "'";
            MySqlCommand process = new MySqlCommand(query, connect);
            string output = process.ExecuteScalar().ToString();
            connect.Close();
            SendMail_user(output);
            Session.Remove("Case");
            Session.Remove("Comptroller");
            Session.Remove("DropControl");
            Session.Remove("yankeexray");
            Response.Redirect("~/Confirm?Email="+ UserEmail.Text);
        }

        protected void UserCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DropControl"] = 0;
            /*Field Box*/
            UserCategory.Enabled = true;
            UserSection.Enabled = true;
            UserBranch.Enabled = true;
            UserAcademicYear.Enabled = true;
            /*Validator*/
            UserCategoryRequired.Enabled = true;
            UserSectionRequired.Enabled = true;
            UserBranchRequired.Enabled = true;
            UserAcademicYearRequired.Enabled = true;
            /*Styling*/
            UserCourse.CssClass = "text-box-drop-active";
            UserCategory.CssClass = "text-box-drop";
            UserSection.CssClass = "text-box-drop";
            UserBranch.CssClass = "text-box-drop";
            UserAcademicYear.CssClass = "text-box-drop";
            UserCategory.Items.Clear();
            UserBranch.Items.Clear();
            UserSection.Items.Clear();
            UserAcademicYear.Items.Clear();
            ListItem Default1 = new ListItem("Select Admission Category", "0");
            UserCategory.Items.Add(Default1);
            ListItem Default2 = new ListItem("Select Section", "0");
            UserSection.Items.Add(Default2);
            ListItem Default3 = new ListItem("Select Academic Year", "0");
            UserAcademicYear.Items.Add(Default3);
            ListItem Default4 = new ListItem("Select Branch", "0");
            UserBranch.Items.Add(Default4);
            if (UserCourse.SelectedIndex == 1)
            {
                ListItem C1 = new ListItem("KEA CET GM/2A/3A/3B/SC/ST", "3");
                ListItem C2 = new ListItem("ComedK", "4");
                ListItem C3 = new ListItem("KEA CET - 1A", "2");
                ListItem C4 = new ListItem("KEA CET - SNQ", "1");
                ListItem C5 = new ListItem("KEA DCET", "3");
                ListItem S1 = new ListItem("A", "1");
                ListItem S2 = new ListItem("B", "2");
                ListItem S3 = new ListItem("C", "3");
                ListItem S4 = new ListItem("D", "4");
                ListItem S5 = new ListItem("E", "5");
                ListItem S6 = new ListItem("F", "6");
                ListItem S7 = new ListItem("G", "7");
                ListItem S8 = new ListItem("H", "8");
                ListItem S9 = new ListItem("I", "9");
                ListItem S10 = new ListItem("J", "10");
                ListItem A1 = new ListItem("I", "1");
                ListItem A2 = new ListItem("II", "2");
                ListItem A3 = new ListItem("III", "3");
                ListItem A4 = new ListItem("IV", "4");
                ListItem B1 = new ListItem("Computer Science", "1");
                ListItem B2 = new ListItem("Information Science", "2");
                ListItem B3 = new ListItem("Electronics and Communication", "3");
                ListItem B4 = new ListItem("Electrical and Electronics", "4");
                ListItem B5 = new ListItem("Mechanical", "5");
                ListItem B6 = new ListItem("Civil", "6");
                ListItem B7 = new ListItem("Telecommunication", "7");
                UserCategory.Items.Add(C1);
                UserCategory.Items.Add(C2);
                UserCategory.Items.Add(C3);
                UserCategory.Items.Add(C4);
                UserCategory.Items.Add(C5);
                UserSection.Items.Add(S1);
                UserSection.Items.Add(S2);
                UserSection.Items.Add(S3);
                UserSection.Items.Add(S4);
                UserSection.Items.Add(S5);
                UserSection.Items.Add(S6);
                UserSection.Items.Add(S7);
                UserSection.Items.Add(S8);
                UserSection.Items.Add(S9);
                UserSection.Items.Add(S10);
                UserAcademicYear.Items.Add(A1);
                UserAcademicYear.Items.Add(A2);
                UserAcademicYear.Items.Add(A3);
                UserAcademicYear.Items.Add(A4);
                UserBranch.Items.Add(B1);
                UserBranch.Items.Add(B2);
                UserBranch.Items.Add(B3);
                UserBranch.Items.Add(B4);
                UserBranch.Items.Add(B5);
                UserBranch.Items.Add(B6);
                UserBranch.Items.Add(B7);
            }
            else if (UserCourse.SelectedIndex == 2)
            {
                ListItem A = new ListItem("KEA PG-CET", "3");
                ListItem S1 = new ListItem("A", "1");
                ListItem A1 = new ListItem("I", "1");
                ListItem A2 = new ListItem("II", "1");
                ListItem B1 = new ListItem("Computer Science", "1");
                UserSection.Items.Add(S1);
                UserCategory.Items.Add(A);
                UserAcademicYear.Items.Add(A1);
                UserAcademicYear.Items.Add(A2);
                UserBranch.Items.Add(B1);
            }
            else if (UserCourse.SelectedIndex == 3 || UserCourse.SelectedIndex == 4)
            {
                ListItem A = new ListItem("Not Applicable", "2");
                ListItem S1 = new ListItem("A", "1");
                ListItem S2 = new ListItem("B", "2");
                ListItem S3 = new ListItem("C", "3");
                ListItem A1 = new ListItem("I", "1");
                ListItem A2 = new ListItem("II", "2");
                ListItem A3 = new ListItem("III", "3");
                ListItem B1 = new ListItem("Not Applicable", "1");
                UserCategory.Items.Add(A);
                UserSection.Items.Add(S1);
                UserSection.Items.Add(S2);
                UserSection.Items.Add(S3);
                UserAcademicYear.Items.Add(A1);
                UserAcademicYear.Items.Add(A2);
                UserAcademicYear.Items.Add(A3);
                UserBranch.Items.Add(B1);
            }
            else if (UserCourse.SelectedIndex == 5)
            {
                ListItem A = new ListItem("KEA CET", "3");
                ListItem B = new ListItem("ComedK", "4");
                ListItem S1 = new ListItem("A", "1");
                ListItem S2 = new ListItem("B", "2");
                ListItem S3 = new ListItem("C", "3");
                ListItem S4 = new ListItem("D", "4");
                ListItem S5 = new ListItem("E", "5");
                ListItem A1 = new ListItem("I", "1");
                ListItem A2 = new ListItem("II", "2");
                ListItem A3 = new ListItem("III", "3");
                ListItem A4 = new ListItem("IV", "4");
                ListItem A5 = new ListItem("V", "5");
                UserCategory.Items.Add(A);
                UserCategory.Items.Add(B);
                UserSection.Items.Add(S1);
                UserSection.Items.Add(S2);
                UserSection.Items.Add(S3);
                UserSection.Items.Add(S4);
                UserSection.Items.Add(S5);
                UserAcademicYear.Items.Add(A1);
                UserAcademicYear.Items.Add(A2);
                UserAcademicYear.Items.Add(A3);
                UserAcademicYear.Items.Add(A4);
                UserAcademicYear.Items.Add(A5);
                ListItem B1 = new ListItem("Infrastructure design", "1");
                ListItem B2 = new ListItem("Interior Design", "2");
                UserBranch.Items.Add(B1);
                UserBranch.Items.Add(B2);
            }
            else
            {
                UserCategory.Enabled = false;
                UserBranch.Enabled = false;
                UserAcademicYear.Enabled = false;
                UserSection.Enabled = false;
                /*Validator Control*/
                UserCategoryRequired.Enabled = false;
                UserSectionRequired.Enabled = false;
                UserAcademicYearRequired.Enabled = false;
                UserBranch.Enabled = false;
                /**/
                UserAcademicYear.CssClass = "text-box-drop-dis";
                UserCategory.CssClass = "text-box-drop-dis";
                UserBranch.CssClass = "text-box-drop-dis";
                UserSection.CssClass = "text-box-drop-dis";
                UserCourse.CssClass = "text-box-drop";
            }
        }

        protected void UserSection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(!(UserSection.SelectedIndex == 0))
            {
                UserSection.CssClass = "text-box-drop-active";
            }
            else
            {
                UserSection.CssClass = "text-box-drop";
            }
        }

        protected void UserCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!(UserCategory.SelectedIndex == 0))
            {
                UserCategory.CssClass = "text-box-drop-active";
            }
            else
            {
                UserCategory.CssClass = "text-box-drop";
            }
        }

        protected void UserBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!(UserBranch.SelectedIndex == 0))
            {
                UserBranch.CssClass = "text-box-drop-active";
            }
            else
            {
                UserBranch.CssClass = "text-box-drop";
            }
        }

        protected void UserAcademicYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!(UserAcademicYear.SelectedIndex == 0))
            {
                UserAcademicYear.CssClass = "text-box-drop-active";
            }
            else
            {
                UserAcademicYear.CssClass = "text-box-drop";
            }
        }

        protected void UserState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!(UserState.SelectedIndex == 0))
            {
                UserState.CssClass = "text-box-drop-active";
            }
            else
            {
                UserState.CssClass = "text-box-drop";
            }
        }
        public void SendMail()
        {
            Random text = new Random();
            int x = text.Next(111111, 999999);
            Session["yankeexray"] = x;
            MailMessage mail = new MailMessage();
            mail.To.Add(UserEmail.Text);
            mail.From = new MailAddress("prashanth7514@gmail.com");
            mail.Subject = "OTP - BMSIT E-PAY";
            string Body = "Dear User,\r\n\r\n Your One Time Password for Account Registration is " + Convert.ToString(x) + ".\r\nThis OTP is usable only once.\r\n\r\nWarm Regards,\r\nBMSIT Express Payment";
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            string u = "prashanth7514@gmail.com", v = "Hunter21#";
            smtp.Credentials = new System.Net.NetworkCredential(u, v);
            smtp.EnableSsl = true;
            smtp.Send(mail);
            EmailLableOTP.Text = UserEmail.Text;
        }

        public void SendMail_user(string UID)
        {

            MailMessage mail = new MailMessage();
            mail.To.Add(UserEmail.Text);
            mail.From = new MailAddress("prashanth7514@gmail.com");
            mail.Subject = "Notification - BMSIT E-PAY";
            string Body = "Dear User,\r\n\r\n Your Account has been sucessfully created, your Login User ID is " + UID + ".\r\nKeep your User ID confidential.\r\n\r\nWarm Regards,\r\nBMSIT E-PAY";
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            string u = "prashanth7514@gmail.com", v = "Hunter21#";
            smtp.Credentials = new System.Net.NetworkCredential(u, v);
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }

        public static string Hash(string text)
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