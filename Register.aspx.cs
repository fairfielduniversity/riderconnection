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
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string insertstatement = "insert into dbo.User_Information values('" + txtFname.Text+"','"+txtMname.Text+"','"+txtLname.Text+"','"+txtPhonenumber.Text+"','"+txtStreetaddress1.Text+"','"+txtStreetaddress2.Text+"','"+txtCity.Text+"','"+ddlState.SelectedValue+"','"+txtZipcode.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"','"+txtquestion.Text+"','"+txtAnswer.Text+"')";
       
     

        SqlCommand cmd = new SqlCommand(insertstatement,con);
     cmd.ExecuteNonQuery();
       con.Close();
        //GridView1.DataBind();
      //  Label1.Visible= true;
    //    Label1.Text = "Your data stored successfully!";
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