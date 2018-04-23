<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxm" %>

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxCallback" TagPrefix="dxcb" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dxwtl" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v8.3.Export, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTreeList.Export" TagPrefix="dxwtl" %>

<%@ Register Assembly="DevExpress.XtraCharts.v8.3.Web, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
    <dxm:ASPxMenu ID="mnuToolbar" runat="server" ClientInstanceName="mnuToolbar" ApplyItemStyleToTemplates="True" OnItemClick="mnuToolbar_ItemClick">
        <Items>
            <dxm:MenuItem Name="mnuPrint" Text="" ToolTip="Print the tree list">
                <Image Url="~/Images/Toolbar/BtnPrint.png" />
            </dxm:MenuItem>
            <dxm:MenuItem Name="mnuSaveToDisk" Text="" ToolTip="Export a tree list and save it to the disk" BeginGroup="True">
                <Image Url="~/Images/Toolbar/BtnSave.png" />
            </dxm:MenuItem>
            <dxm:MenuItem Name="mnuSaveToWindow" Text="" ToolTip="Export a tree list and show it in a new window">
                <Image Url="~/Images/Toolbar/BtnSaveWindow.png" />
            </dxm:MenuItem>
            <dxm:MenuItem Name="mnuFormat"><Template>
                <dxe:ASPxComboBox runat="server" Width="60px" ValueType="System.String" ID="cbFormat" SelectedIndex="0" ClientInstanceName="cbFormat">
                    <Items>
                        <dxe:ListEditItem Value="pdf" Text="pdf" />
                        <dxe:ListEditItem Value="xls" Text="xls" />
                        <dxe:ListEditItem Value="rtf" Text="rtf" />
                    </Items>

                    <ClientSideEvents SelectedIndexChanged = "function(s, e) {
    form1.hdnFormat.value = s.GetText();
}" 

        Init =  "function(s, e) {
    if (form1.hdnFormat.value + &quot;&quot; == &quot;&quot; || typeof(form1.hdnFormat.value) == &quot;undefined&quot;) 
        form1.hdnFormat.value = s.GetText();

}" 

/>
                    
                </dxe:ASPxComboBox>
            </Template></dxm:MenuItem>
        </Items>
        <ClientSideEvents ItemClick="function(s, e) {
    if (e.item.name == 'mnuPrint')
	    window.print();
	else if (e.item.name == 'mnuSaveToWindow')
	    window.open(&quot;TreeListExportForm.aspx?format=&quot; + form1.hdnFormat.value, &quot;_blank&quot;);

}" />
    </dxm:ASPxMenu>

        <dxe:LISTEDITITEM Text="pdf" Value="pdf"></dxe:LISTEDITITEM><dxe:LISTEDITITEM Text="xls" Value="xls"></dxe:LISTEDITITEM><dxe:LISTEDITITEM Text="pdf" Value="pdf"></dxe:LISTEDITITEM><dxe:LISTEDITITEM Text="xls" Value="xls"></dxe:LISTEDITITEM>&nbsp;<dxwtl:ASPxTreeList ID="ASPxTreeList1" runat="server" AutoGenerateColumns="False"
            CssFilePath="~/App_Themes/Red Wine/{0}/styles.css" CssPostfix="RedWine" DataSourceID="SqlDataSource1"
            KeyFieldName="CategoryID" Width="347px">
            <Styles CssFilePath="~/App_Themes/Red Wine/{0}/styles.css" CssPostfix="RedWine">
                <CustomizationWindowContent VerticalAlign="Top">
                </CustomizationWindowContent>
            </Styles>
            <Images ImageFolder="~/App_Themes/Red Wine/{0}/">
                <CollapsedButton Height="15px" Url="~/App_Themes/Red Wine/TreeList/CollapsedButton.png"
                    Width="15px" />
                <ExpandedButton Height="15px" Url="~/App_Themes/Red Wine/TreeList/ExpandedButton.png"
                    Width="15px" />
                <SortAscending Height="13px" Url="~/App_Themes/Red Wine/TreeList/SortAsc.png" Width="11px" />
                <SortDescending Height="13px" Url="~/App_Themes/Red Wine/TreeList/SortDesc.png" Width="11px" />
                <CustomizationWindowClose Height="19px" Width="19px" />
            </Images>
            <SettingsText LoadingPanelText="" />
            <SettingsLoadingPanel Text="" />
            <SettingsPager>
                <AllButton>
                    <Image Height="19px" Width="24px" />
                </AllButton>
                <FirstPageButton>
                    <Image Height="19px" Width="23px" />
                </FirstPageButton>
                <LastPageButton>
                    <Image Height="19px" Width="23px" />
                </LastPageButton>
                <NextPageButton>
                    <Image Height="19px" Width="19px" />
                </NextPageButton>
                <PrevPageButton>
                    <Image Height="19px" Width="19px" />
                </PrevPageButton>
            </SettingsPager>
            <Columns>
                <dxwtl:TreeListTextColumn FieldName="CategoryName" VisibleIndex="0">
                </dxwtl:TreeListTextColumn>
                <dxwtl:TreeListTextColumn FieldName="Description" VisibleIndex="1">
                </dxwtl:TreeListTextColumn>
            </Columns>
        </dxwtl:ASPxTreeList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
        </asp:SqlDataSource>
    
    </div>
        <dxwtl:ASPxTreeListExporter ID="ASPxTreeListExporter1" runat="server" TreeListID="ASPxTreeList1">
        </dxwtl:ASPxTreeListExporter>
        &nbsp;
        <input id="hdnFormat" runat="server" type="hidden" />
    </form>
</body>
</html>
