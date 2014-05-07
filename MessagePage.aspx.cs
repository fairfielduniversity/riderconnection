using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MessagePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Message"] != null)
        {
            string message = Session["Message"].ToString();
            MessageLabel.Text = message;
            Session.Remove("Message");
         
        }

        else
        {
            MessageLabel.Text = "I have no idea how you ended up in this page ! Please go back !";
        }

    }
}