using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class File : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));
        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Uploads")))
        {
            FileInfo fi = new FileInfo(strfile);

            dt.Rows.Add(fi.Name, fi.Length, getfileextensionbytype(fi.Extension));
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private string getfileextensionbytype(string extensions)
    {
        switch (extensions.ToLower())
        {
            case ".doc":
            case ".docx":
                return "Microsoft Word Document";
            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".txt":
                return "text Document";
            case ".png":
            case ".jpg":
                return "image";
            case ".pdf":
                return "Portable Document Format";
            default:
                return "unknown";


        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename="
                + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Uploads/"+ e.CommandArgument));
            Response.End();
        }
    }
}

       

    
