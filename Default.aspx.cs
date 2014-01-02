using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSumbit_Click(object sender, EventArgs e)
    {
        //try the code to make sure everything goes
        //correctly
        try
        {
            //initialize the registered customer class and set its 
            //properties
            RegisteredCustomer rc = new RegisteredCustomer();
            rc.LastName = txtLastName.Text;
            rc.FirstName = txtFirstName.Text;
            rc.Email = txtEmail.Text;
            rc.Password = txtPassword.Text;

            //save the RegisteredCustomer object to a session variable
            //so you can recall it on default2

            Session["customer"] = rc;

            //now redirect to the next page
            Response.Redirect("Default2.aspx");
        }
        catch (Exception ex) 
        {
            //if there is an error show the error message
            lblError.Text=ex.Message;
        }

    }
}