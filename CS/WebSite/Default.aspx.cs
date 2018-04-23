using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxEditors;
using System.IO;

public partial class _Default : System.Web.UI.Page 
{
    private MemoryStream pdfTreeListExport = new MemoryStream();
    private MemoryStream xlsTreeListExport = new MemoryStream();
    private MemoryStream rtfTreeListExport = new MemoryStream();

    protected void mnuToolbar_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e) {
        string format = hdnFormat.Value; // or (mnuToolbar.Items[3].FindControl("cbFormat") as ASPxComboBox).Text;

        if(e.Item.Name == "mnuSaveToDisk") {
            if(format == "pdf") {
                ASPxTreeListExporter1.WritePdfToResponse(true);
            }
            else if(format == "xls") {
                ASPxTreeListExporter1.WriteXlsToResponse(true);
            }
            else if(format == "rtf") {
                ASPxTreeListExporter1.WriteRtfToResponse(true);
            }
        }

    }

    protected override void OnUnload(EventArgs e) {
        base.OnUnload(e);

        if(!IsPostBack) {
            ASPxTreeListExporter1.WritePdf(pdfTreeListExport);
            ASPxTreeListExporter1.WriteXls(xlsTreeListExport);
            ASPxTreeListExporter1.WriteRtf(rtfTreeListExport);

            Session["pdfTreeListExport"] = pdfTreeListExport;
            Session["xlsTreeListExport"] = xlsTreeListExport;
            Session["rtfTreeListExport"] = rtfTreeListExport;
        }
    }

}
