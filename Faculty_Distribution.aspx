﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTimeTable.Master" AutoEventWireup="true"
    CodeFile="Faculty_Distribution.aspx.cs" Inherits="Faculty_Distribution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="breadcrumbs" class="position-relative">
        <ul class="breadcrumb">
            <li><i class="icon-home"></i><a href="UserDashboard.aspx">Home</a><span class="divider"><i
                class="icon-angle-right"></i></span></li>
            <li>
                <h5 class="smaller">
                    Faculty Distribution <span class="divider"></span>
                </h5>
            </li>
        </ul>
        <div id="nav-search">
            <!-- /btn-group -->
            <asp:Button class="btn  btn-app btn-primary btn-mini radius-4  " Visible="false"
                runat="server" ID="BtnShowSearchPanel" Text="Search" />
        </div>
        <!--#nav-search-->
    </div>
    <div id="page-content" class="clearfix">
        <!--/page-header-->
        <div class="row-fluid">
            <!-- -->
            <!-- PAGE CONTENT BEGINS HERE -->
            <asp:UpdatePanel ID="UpdatePanelMsgBox" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="alert alert-block alert-success" id="Msg_Success" visible="false" runat="server">
                        <button type="button" class="close" data-dismiss="alert">
                            <i class="icon-remove"></i>
                        </button>
                        <p>
                            <strong><i class="icon-ok"></i></strong>
                            <asp:Label ID="lblSuccess" runat="server" Text="Label"></asp:Label>
                        </p>
                    </div>
                    <div class="alert alert-error" id="Msg_Error" visible="false" runat="server">
                        <button type="button" class="close" data-dismiss="alert">
                            <i class="icon-remove"></i>
                        </button>
                        <p>
                            <strong><i class="icon-remove"></i>Error!</strong>
                            <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
                        </p>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div id="DivSearchPanel" runat="server">
                <div class="widget-box">
                    <div class="widget-header widget-header-small header-color-dark">
                        <h5>
                            Search Options
                        </h5>
                    </div>
                    <div class="widget-body">
                        <div class="widget-body-inner">
                            <div class="widget-main">
                                <asp:UpdatePanel ID="UpdatePanelSearch" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <table cellpadding="3" class="table table-striped table-bordered table-condensed">
                                            <tr>
                                                <td class="span4" style="text-align: left; width: 283px;">
                                                    <table cellpadding="0" style="border-style: none;" class="table-hover" width="100%">
                                                        <tr>
                                                            <td style="border-style: none; text-align: left; width: 40%;">
                                                                <asp:Label runat="server" ID="Label15" CssClass="red">Division</asp:Label>
                                                            </td>
                                                            <td style="border-style: none; text-align: left; width: 60%;">
                                                                <asp:DropDownList runat="server" ID="ddlDivision" Width="215px" ToolTip="Division"
                                                                    data-placeholder="Select Division" CssClass="chzn-select" AutoPostBack="True" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="span4" style="text-align: left">
                                                    <table cellpadding="0" style="border-style: none;" class="table-hover" width="100%">
                                                        <tr>
                                                            <td style="border-style: none; text-align: left; width: 40%;">
                                                                <asp:Label runat="server" ID="Label6" CssClass="red">Academic Year</asp:Label>
                                                            </td>
                                                            <td style="border-style: none; text-align: left; width: 60%;">
                                                                <asp:DropDownList runat="server" ID="ddlAcademicYear" Width="215px" ToolTip="Course"
                                                                    data-placeholder="Academic Year" CssClass="chzn-select" AutoPostBack="True" OnSelectedIndexChanged="ddlAcademicYear_SelectedIndexChanged" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="span4" style="text-align: left">
                                                    <table cellpadding="0" style="border-style: none;" class="table-hover" width="100%">
                                                        <tr>
                                                            <td style="border-style: none; text-align: left; width: 40%;">
                                                                <asp:Label runat="server" ID="Label17" CssClass="red">Course</asp:Label>
                                                            </td>
                                                            <td style="border-style: none; text-align: left; width: 60%;">
                                                                <asp:ListBox runat="server" ID="ddlStandard" Width="215px" ToolTip="Standard" data-placeholder="Select Standard"
                                                                    SelectionMode="Multiple" CssClass="chzn-select" AutoPostBack="true" OnSelectedIndexChanged="ddlStandard_SelectedIndexChanged" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="span4" style="text-align: left; width: 283px;">
                                                    <table cellpadding="0" style="border-style: none;" class="table-hover" width="100%">
                                                        <tr>
                                                            <td style="border-style: none; text-align: left; width: 40%;">
                                                                <asp:Label runat="server" ID="Label18" CssClass="red">Center</asp:Label>
                                                            </td>
                                                            <td style="border-style: none; text-align: left; width: 60%;">
                                                                <asp:ListBox runat="server" ID="ddlCentre" Width="215px" ToolTip="Standard" data-placeholder="Select Center"
                                                                    SelectionMode="Multiple" CssClass="chzn-select" AutoPostBack="true" OnSelectedIndexChanged="ddlCentre_SelectedIndexChanged" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="span4" style="text-align: left">
                                                    <table cellpadding="0" style="border-style: none;" class="table-hover" width="100%">
                                                        <tr>
                                                            <td style="border-style: none; text-align: left; width: 40%;">
                                                                <asp:Label runat="server" ID="Label12" CssClass="red">Subject</asp:Label>
                                                            </td>
                                                            <td style="border-style: none; text-align: left; width: 60%;">
                                                                <asp:DropDownList runat="server" ID="ddlSubject" Width="215px" data-placeholder="Select Subject"
                                                                    CssClass="chzn-select" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="span4" style="text-align: left">
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="well" style="text-align: center; background-color: #F0F0F0">
                                <!--Button Area -->
                                <asp:Button class="btn btn-app btn-primary  btn-mini radius-4" runat="server" ID="BtnSearch"
                                    Text="Search" ToolTip="Search" ValidationGroup="UcValidateSearch" OnClick="BtnSearch_Click" />
                                <asp:Button class="btn btn-app btn-grey btn-mini radius-4" ID="BtnClearSearch" Visible="true"
                                    runat="server" Text="Clear" OnClick="BtnClearSearch_Click" />
                                <asp:ValidationSummary ID="ValidationSummary2" ShowSummary="false" DisplayMode="List"
                                    ShowMessageBox="true" ValidationGroup="UcValidateSearch" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="DivResultPanel" runat="server" visible="false" class="dataTables_wrapper">
                <div class="widget-box">
                    <div class="table-header">
                        <table width="100%">
                            <tr>
                                <td class="span10">
                                    Total No of Records:
                                    <asp:Label runat="server" ID="lbltotalcount" Text="0" />
                                </td>
                                <td style="text-align: right" class="span2">
                                    <asp:LinkButton runat="server" ID="btnExport" ToolTip="Export" class="btn-small btn-danger icon-2x icon-download-alt"
                                        Height="25px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="firstds" runat="server">
                    <asp:DataList ID="dlGridDisplay" CssClass="table table-striped table-bordered table-hover"
                        runat="server" Width="100%">
                        <HeaderTemplate>
                            <b>No </b></th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                Topics
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                Lecture
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                VR
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                BO
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                ML
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                AW
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                AE
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                VP
                            </th>
                            <th style="width: 15%; text-align: left; vertical-align: left;">
                                KA
                            </th>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDLChapterName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            <asp:Label ID="lblDlChapterCode" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>'
                                Visible="false" />
                            </td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"")%>' />
                            </td>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div id="div_savecancel" runat="server" class="well" style="text-align: center; background-color: #F0F0F0">
                    <!--Button Area -->
                    <asp:Button class="btn btn-app btn-grey btn-mini radius-4" ID="btnClose" Visible="true"
                        runat="server" Text="Close" OnClick="btnClose_Click" />
                    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="false" DisplayMode="List"
                        ShowMessageBox="true" ValidationGroup="UcValidateSearch" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
