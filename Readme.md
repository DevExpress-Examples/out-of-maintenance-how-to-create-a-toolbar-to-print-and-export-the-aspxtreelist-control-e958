<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [TreeListExportForm.aspx](./CS/WebSite/TreeListExportForm.aspx) (VB: [TreeListExportForm.aspx.vb](./VB/WebSite/TreeListExportForm.aspx.vb))
* [TreeListExportForm.aspx.cs](./CS/WebSite/TreeListExportForm.aspx.cs) (VB: [TreeListExportForm.aspx.vb](./VB/WebSite/TreeListExportForm.aspx.vb))
<!-- default file list end -->
# How to create a toolbar to print and export the ASPxTreeList control


<p>This example illustrates how to implement printing/exporting of the ASPxTreeList control via the custom toolbar. The toolbar in this example is represented by the ASPxMenu control. ASPxTreeListExporter control provides all necessary methods to export ASPxTreeList to supported formats.</p><p>Printing and exporting to another window is handled on the client side in the ASPxClientMenuBase.ItemClick event handler.<br />
Exporting to the current window is handled through the corresponding server-side event handler.</p>

<br/>


