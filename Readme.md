<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548497/12.2.11%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E958)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [TreeListExportForm.aspx](./CS/WebSite/TreeListExportForm.aspx) (VB: [TreeListExportForm.aspx](./VB/WebSite/TreeListExportForm.aspx))
* [TreeListExportForm.aspx.cs](./CS/WebSite/TreeListExportForm.aspx.cs) (VB: [TreeListExportForm.aspx.vb](./VB/WebSite/TreeListExportForm.aspx.vb))
<!-- default file list end -->
# How to create a toolbar to print and export the ASPxTreeList control


<p>This example illustrates how to implement printing/exporting of the ASPxTreeList control via the custom toolbar. The toolbar in this example is represented by the ASPxMenu control. ASPxTreeListExporter control provides all necessary methods to export ASPxTreeList to supported formats.</p><p>Printing and exporting to another window is handled on the client side in the ASPxClientMenuBase.ItemClick event handler.<br />
Exporting to the current window is handled through the corresponding server-side event handler.</p>

<br/>


