using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSite : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //this gets exposed for later on
    public string PageH1Text
    {
        set { lblLoggedInUser.Text= value;}
    }

  /*  protected void SignOut_Click(object sender, EventArgs e)
    {
        //First we need to remove the session variable 
        if (Session["FirstName"] != null)
        {
            Session.Remove("FirstName");
            Response.Redirect("~/index.aspx");
        }

        else
        {
            Response.Redirect("~/index.aspx");
        }
    }
   * */
}
