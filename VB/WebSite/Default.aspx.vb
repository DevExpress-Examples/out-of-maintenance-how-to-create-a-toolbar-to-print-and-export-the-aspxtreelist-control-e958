Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxEditors
Imports System.IO

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private pdfTreeListExport As New MemoryStream()
	Private xlsTreeListExport As New MemoryStream()
	Private rtfTreeListExport As New MemoryStream()

	Protected Sub mnuToolbar_ItemClick(ByVal source As Object, ByVal e As DevExpress.Web.ASPxMenu.MenuItemEventArgs)
		Dim format As String = hdnFormat.Value ' or (mnuToolbar.Items[3].FindControl("cbFormat") as ASPxComboBox).Text;

		If e.Item.Name = "mnuSaveToDisk" Then
			If format = "pdf" Then
				ASPxTreeListExporter1.WritePdfToResponse(True)
			ElseIf format = "xls" Then
				ASPxTreeListExporter1.WriteXlsToResponse(True)
			ElseIf format = "rtf" Then
				ASPxTreeListExporter1.WriteRtfToResponse(True)
			End If
		End If

	End Sub

	Protected Overrides Sub OnUnload(ByVal e As EventArgs)
		MyBase.OnUnload(e)

		If (Not IsPostBack) Then
			ASPxTreeListExporter1.WritePdf(pdfTreeListExport)
			ASPxTreeListExporter1.WriteXls(xlsTreeListExport)
			ASPxTreeListExporter1.WriteRtf(rtfTreeListExport)

			Session("pdfTreeListExport") = pdfTreeListExport
			Session("xlsTreeListExport") = xlsTreeListExport
			Session("rtfTreeListExport") = rtfTreeListExport
		End If
	End Sub

End Class
