<%@ Page Title="" Language="C#" MasterPageFile="~/Sharing.master" AutoEventWireup="true" CodeFile="Add_User.aspx.cs" Inherits="Add_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 330px;
    }
    .style13
    {
        width: 330px;
        height: 23px;
    }
    .style14
    {
        width: 286px;
    }
    .style15
    {
        height: 23px;
        width: 286px;
    }
        .style17
        {
            width: 330px;
            text-align: center;
            height: 23px;
        }
        .style18
        {
            width: 286px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style5" colspan="5" style="text-align: center">
            USER REGISTERATION</td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style18">
            </td>
        <td class="style5">
            </td>
        <td class="style5">
            </td>
        <td class="style5">
            </td>
    </tr>
    <tr>
        <td class="style13">
        </td>
        <td class="style15">
            NOT A MEMEBER YET?</td>
        <td class="style5">
        </td>
        <td class="style5">
        </td>
        <td class="style5">
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user_regis.aspx">Be member</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

