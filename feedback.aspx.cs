using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using localhost;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("/Data/dep/XMLFile.XML"));
        DropDownList1.DataTextField = "servicename";
        DropDownList1.DataValueField = "servicename";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WebService wb = new WebService();
        bool test = wb.feeddb(nametxt.Text, emailtxt.Text, subtxt.Text,DropDownList1.Text,msgtxt.Text);
        if (test == true)
        {
            ensure.Visible = true;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void review_Click(object sender, EventArgs e)
    {
        Response.Redirect("review.aspx");
    }
}