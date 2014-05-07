using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
	public User()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Firstname { get; set; }
    public string Middlename { get; set; }
    public string Lastname { get; set; }
    public string Email { get; set; }
    public string Pasword { get; set; }
    public string SecurityQuestion { get; set; }
    public string SecurityAnswer { get; set; }
    public string StreetAddress1 { get; set; }
    public string StreetAddress2 { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public string ZipCode{ get; set; }
    public string PhoneNumber { get; set; }
    public bool UserTypePassenger { get; set; }
    public bool UserTypeOfferer { get; set; }
    public bool UserTypeAdmin { get; set; }
   
}