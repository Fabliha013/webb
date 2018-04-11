using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using localhost;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            WebService wb = new WebService();
            bool test = wb.insertdb(nametxt.Text, emailtxt.Text, passtxt.Text);
            if (test == true)
            {
                Label3.Visible = true;
            }

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("fablihahaque21992@gmail.com", "notunkisukorauchit");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + nametxt.Text + " Thanks Ror Registration";
            msg.Body = "Hi,Thanks For Registration at Movie Portal";
            string toaddress = emailtxt.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Movie Portal <fablihahaque21992@gmail.com > ";
            msg.From = new MailAddress(fromaddress);


            
                smtp.Send(msg);
                Label3.Text = "Your Registration is Successful You can Check your mail too";
                nametxt.Text = "";
                emailtxt.Text = "";
            
        
        

    }
}