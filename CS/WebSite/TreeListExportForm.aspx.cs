using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxTreeList;
using System.IO;

public partial class TreeListExportForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string format = Request["format"];
        MemoryStream ms = null;

        if(format == "pdf") {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "inline; filename=treeList.pdf");
            ms = (MemoryStream)Session["pdfTreeListExport"];
        }
        else if(format == "xls") {
            Response.ContentType = "application/vnd.ms-excel";
            Response.AppendHeader("Content-Disposition", "inline; filename=treeList.xls");
            ms = (MemoryStream)Session["xlsTreeListExport"];
        }
        else if(format == "rtf") {
            Response.ContentType = "application/rtf";
            Response.AppendHeader("Content-Disposition", "inline; filename=treeList.rtf");
            ms = (MemoryStream)Session["rtfTreeListExport"];
        }

        ms.Seek(0, SeekOrigin.Begin);
        Response.BinaryWrite(ms.ToArray());

        Response.End();
    }

}
