using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileExtension=System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".txt" && fileExtension.ToLower() != ".pdf")
            {
                message.Text = "only upload the files of extension as .txt or .doc or .pdf";
                message.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                int filesize = FileUpload1.PostedFile.ContentLength;
                if (filesize > 2097152)
                {
                    message.Text = "please select a file of size in 2MB";
                    message.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                    message.Text = "File Uploaded";
                    message.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
        else
        {
            message.Text="please select a file for upload";
            message.ForeColor=System.Drawing.Color.Red;

        }
    }
}