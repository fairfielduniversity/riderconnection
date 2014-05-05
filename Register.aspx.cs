using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RidersConnectionConnectionString"].ConnectionString);

    int successstatus;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid)  // if validation was successful
        {
            User newuser;newuser = new User();
            newuser.Firstname = txtFname.Text;
            newuser.Middlename = txtMname.Text;
            newuser.Lastname = txtLname.Text;
            newuser.Email = txtEmail.Text;
            newuser.Pasword = txtPassword.Text;
            newuser.SecurityQuestion = txtquestion.Text;
            newuser.SecurityAnswer = txtAnswer.Text;
            newuser.StreetAddress1 = txtStreetaddress1.Text;
            newuser.StreetAddress2 = txtStreetaddress2.Text;
            newuser.State = ddlState.SelectedValue;
            newuser.ZipCode = txtZipcode.Text;
            newuser.PhoneNumber = txtPhonenumber.Text;
            newuser.UserTypePassenger = CheckBoxList1.Items[1].Selected;
            newuser.UserTypeOfferer = CheckBoxList1.Items[0].Selected;

            try
            {
                int userid = InsertUserBasicInfo(newuser);

                con.Open();
                // If userid not equal to zero means user was registered and that is the userid 
                if (userid != 0)
                {

                    if (newuser.UserTypePassenger == true)
                    {

                        string insertusertype1 = "insert into dbo.UserInformation_UserType values(" + userid + ",'" + CheckBoxList1.Items[1].Value.Trim() + "')";

                        SqlCommand cmd1 = new SqlCommand(insertusertype1, con);
                        cmd1.ExecuteNonQuery();




                    }

                    if (newuser.UserTypeOfferer == true)
                    {

                        string insertusertype2 = "insert into dbo.UserInformation_UserType values(" + userid + ",'" + CheckBoxList1.Items[0].Value.Trim() + "')";
                        SqlCommand cmd2 = new SqlCommand(insertusertype2, con);
                        cmd2.ExecuteNonQuery();


                    }

                }
                successstatus = 0;
                con.Close();
            }

            catch
            {
                successstatus = 1;
                con.Close();
            }

            if (successstatus == 0)
            {
                Session["Message"] = "Successful ! ";
                Response.Redirect("~/MessagePage.aspx");
            }

            else if (successstatus == 0)
            {
                Session["Message"] = "OOPs Pleas try again ! ";
                Response.Redirect("~/MessagePage.aspx");
            }

           


        }
     


    }

    private int InsertUserBasicInfo(User newuser)
    {
        con.Open();
        int userid=0;
        string insertstatement = "insert into dbo.User_Information values('" + newuser.Firstname + "','" + newuser.Middlename + "','" + newuser.Lastname + "','" + newuser.PhoneNumber + "','" + newuser.StreetAddress1 + "','" + newuser.StreetAddress2 + "','" + newuser.City + "','" + newuser.State + "','" + newuser.ZipCode + "','" + newuser.Email + "','" + newuser.Pasword + "','" + newuser.SecurityQuestion + "','" + newuser.SecurityAnswer + "')";

        SqlCommand cmd = new SqlCommand(insertstatement, con);
        cmd.ExecuteNonQuery();
      

        string selectstatement = "select User_ID from dbo.User_Information where Email='" + newuser.Email+ "';";
        SqlCommand selectcommand = new SqlCommand(selectstatement, con);

        SqlDataReader reader = selectcommand.ExecuteReader();
       
            try
            {
                while (reader.Read())
                {
                    userid=Convert.ToInt32(reader["User_ID"].ToString());
                }
            }
            catch
            {
                userid=0;
                successstatus = 1;
            }

            con.Close();

        //returns the just entered userid
       
        return userid;
    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFname.Text = "";
        txtMname.Text = "";
        txtLname.Text = "";
        txtPhonenumber.Text = "";
        txtStreetaddress1.Text = "";
        txtStreetaddress2.Text = "";
        txtCity.Text = "";
        //txtState.Text = "";
        txtZipcode.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtquestion.Text = "";
        txtAnswer.Text = "";
    }
}