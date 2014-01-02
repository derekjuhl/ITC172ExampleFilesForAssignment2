using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //we use the page load so the fields will be filled 
        //when the user first sees the page
        //first we check that the session exists. If it doesn't we
        //redirect them to the default page, if it does
        //we populate the fields
        if (Session["customer"] != null)
        {
            //get the customer from the session and copy
            //it into a new registeredcustomer object
            //you have to cast the session object into
            //the correct type of object
            RegisteredCustomer rc = (RegisteredCustomer)Session["customer"];

            //just reverse what you did when you wrote the fields to the object
            //take the fields and write them to the textboxes
            txtLastName.Text = rc.LastName;
            txtFirstName.Text = rc.FirstName;
            txtEmail.Text = rc.Email;

        }
        else
        {
            Response.Redirect("Default2.aspx");
        }
    }
    protected void btnSumbit_Click(object sender, EventArgs e)
    {
        string last = txtLastName.Text;
        //this uses the http Get. It is not unique to asp. It is a 
        //part of the basic http protocol
        Response.Redirect("Default3.aspx?name=" + last);
    }
}