using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RidersConnectionConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["FirstName"] != null)
        {
            this.Master.PageH1Text = Session["FirstName"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack) {
            string id = Request.QueryString["Id"];
            txtOfferLockId.Value = id;
        }          
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string offerlockId = txtOfferLockId.Value;

            con.Open();
            string accept = "update dbo.Offer_Lock set status = 3  where offerlock_id = " + offerlockId;
            SqlCommand cmd = new SqlCommand(accept, con);
            cmd.ExecuteNonQuery();

            string reject = " update dbo.Offer_Lock set status = 2 " + 
                            " where offer_id in (select offer_id from dbo.Offer_Lock where offerlock_id = " + offerlockId  + " ) "
                            + "and offerlock_id <> " + offerlockId;
            cmd = new SqlCommand(reject, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/myrequests.aspx");
        }

    }
}