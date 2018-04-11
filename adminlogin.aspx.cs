using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WebService wb = new WebService();
        bool test = wb.checkadmindb(TextBox3.Text, TextBox2.Text);
        if (test == true)
        {
            Response.Redirect("loginsuccess.aspx");
        }
        else
        {
            Label5.Visible = true;
        }
    }
}