using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegisteredCustomer
/// this class simply stores the values for a
/// registered customer. It uses a short hand
/// for creating fields and properties
/// the underlying private field is generated
/// automatically.
/// </summary>
public class RegisteredCustomer
{
    public string LastName { set; get; }
    public string FirstName { set; get; }
    public string Email { set; get; }
    public string Password { set; get; }
}