using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RidersConnectionConnectionString"].ConnectionString);
 

    
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    
    protected void SignIn_Click(object sender, EventArgs e)
            {
                 //   if (Page.IsValid)
                  //  {
                        
                        string username=txtUserName.Text.Trim();
                        string  typedpassword=txtPassword.Text.Trim();
                       // successstatus=QueryUserInfo(username,password);
                   //     if (successstatus==1)
                    //    {
                        //    LoginMessage.Text = "UserInfo / Password does not match. Please try again.";

                      //  }


                        con.Open();
                      //  con1.Open();
                        int userid = 0;
                        string userrole = "";
                        string FirstName = "";
                        LoginMessage.Text = "";
                        string passwordfromdatabase = "";

                        string selectstatement = "select User_ID from dbo.User_Information where Email='" + username + "';";
                        SqlCommand selectcommand = new SqlCommand(selectstatement, con);

                        SqlDataReader reader = selectcommand.ExecuteReader();

                      
                            while (reader.Read())
                            {
                                userid = Convert.ToInt32(reader["User_ID"].ToString());
                            }
                           

                            if (userid == 0)
                            {
                                LoginMessage.Text = "UserName Does Not Exist";
                            //    successstatus = 1;
                               // return 1; // return failure message that it was not succesful

                            }

                            else if (userid != 0)
                            {
                                //LoginMessage.Text = userid.ToString();
                                LoginMessage.Text = "";
                                string passwordcheck = "select   a.User_ID Userid, a.Password Pass, a.FirstName FirstName ,c.User_TypeDetails Usertype from User_Information a,UserInformation_UserType b,User_Type c where a.User_ID=b.User_ID and b.User_TypeID=c.User_TypeID and a.User_ID=" + userid + ";";
                               // LoginMessage.Text = passwordcheck;
                              //  con.Close();
                               
                                SqlCommand passwordcommand = new SqlCommand(passwordcheck, con);

                                SqlDataReader passwordcommandreader = passwordcommand.ExecuteReader();

                                if (passwordcommandreader.HasRows)
                                {
                                    while (passwordcommandreader.Read())
                                    {
                                        //check password and userrole and authorize 
                                        passwordfromdatabase = passwordcommandreader[1].ToString();
                                        LoginMessage.Text = passwordfromdatabase;
                                        userrole = passwordcommandreader[3].ToString();
                                        FirstName = passwordcommandreader[2].ToString();
                                    }
                                }
                               // LoginMessage.Text = password;
                                if (typedpassword == passwordfromdatabase && userrole == "Administrator")
                                {
                                    Session["FirstName"] = FirstName;
                                    Session["Userid"] = userid;
                                   // successstatus = 0;
                                   // con1.Close();
                                    Response.Redirect("~/MyProfile_Admin.aspx");
                                 //   return 0;


                                }

                                else if (typedpassword == passwordfromdatabase && userrole != "Administrator")
                                {
                                    Session["FirstName"] = FirstName;
                                    Session["Userid"] = userid;
                                  //  successstatus = 0;
                                  //  con1.Close();
                                    Response.Redirect("~/MyProfile_User.aspx");
                                   // return 0;

                                }


                                else
                                {
                                   LoginMessage.Text = "UserInfo / Password does not match. Please try again.";
                                 //   successstatus = 1;

                                }




                            }

                        



                     /*   catch (Exception ex)
                        {
                            userid = 0;
                            successstatus = 1;
                            LoginMessage.Text = ex.Message.ToString();
                            
                        } 
           */
                        con.Close();
                      //  con1.Close();


                //    }
            }




  /*  private int QueryUserInfo(string username, string password)
    {

        con.Open();
        int userid = 0;
        string userrole="";
        string FirstName = "";
        LoginMessage.Text = "";


        string selectstatement = "select User_ID from dbo.User_Information where Email='"+username+"';";
        SqlCommand selectcommand = new SqlCommand(selectstatement, con);

        SqlDataReader reader = selectcommand.ExecuteReader();

                try
                {
                        while (reader.Read())
                        {
                            userid = Convert.ToInt32(reader["User_ID"].ToString());
                        }
            
                        if (userid ==0)
                        {
                            LoginMessage.Text="UserName Does Not Exist";
                            successstatus=1;
                           return 1; // return failure message that it was not succesful
                
                        }

                        else if (userid !=0)

                


                                {
                                    string passwordcheck = "select   a.User_ID Userid, a.Password Pass, a.FirstName FirstName a.c.User_TypeDetails Usertype from User_Information a,UserInformation_UserType b,User_Type c where a.User_ID=b.User_ID and b.User_TypeID=c.User_TypeID and a.User_ID=" + userid+ ";";

                                    SqlCommand passwordcommand= new SqlCommand(passwordcheck, con);

                                   SqlDataReader passwordcommandreader = selectcommand.ExecuteReader();

                                     while (passwordcommandreader.Read())
                                            {
                                         //check password and userrole and authorize 
                                                password = reader["Pass"].ToString();
                                                userrole= reader["Usertype"].ToString();
                                                FirstName=reader["FirstName"].ToString();
                                            }

                                            if (passwordcheck==password && userrole=="Administrator")
                                            {
                                                Session["FirstName"] = FirstName;
                                                successstatus = 0;
                                                con.Close();
                                                Response.Redirect("~/MyProfile_User.aspx");
                                               return 0;
                 

                                            }

                                            else if (passwordcheck==password && userrole!="Administrator")
                                            {
                                                Session["FirstName"] = FirstName;
                                                successstatus = 0;
                                                con.Close();
                                                Response.Redirect("~/MyProfile_Admin.aspx");
                                             return 0;

                                            }

                    
                                            else
                                            {
                                                LoginMessage.Text="UserInfo / Password does not match. Please try again.";
                                                successstatus=1;
                                                
                                            }




                                }
        
                    }



                catch
                {
                    userid = 0;
                    successstatus = 1;
                }

             con.Close();

         return successstatus;
    }
   */
}


    



   
