Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxTreeList.Export
Imports System.IO
Imports DevExpress.Web.ASPxTreeList

Partial Public Class TreeListExportForm
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		Dim format As String = Request("format")
		Dim ms As MemoryStream = Nothing

		If format = "pdf" Then
			Response.ContentType = "application/pdf"
			Response.AppendHeader("Content-Disposition", "inline; filename=treeList.pdf")
			ms = CType(Session("pdfTreeListExport"), MemoryStream)
		ElseIf format = "xls" Then
			Response.ContentType = "application/vnd.ms-excel"
			Response.AppendHeader("Content-Disposition", "inline; filename=treeList.xls")
			ms = CType(Session("xlsTreeListExport"), MemoryStream)
		ElseIf format = "rtf" Then
			Response.ContentType = "application/rtf"
			Response.AppendHeader("Content-Disposition", "inline; filename=treeList.rtf")
			ms = CType(Session("rtfTreeListExport"), MemoryStream)
		End If

		ms.Seek(0, SeekOrigin.Begin)
		Response.BinaryWrite(ms.ToArray())

		Response.End()
	End Sub

End Class
