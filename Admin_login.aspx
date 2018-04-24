<%@ Page Title="" Language="C#" MasterPageFile="~/Sharing.master" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 195px;
    }
    .style13
    {
        width: 188px;
    }
    .style14
    {
        width: 195px;
        height: 23px;
    }
    .style15
    {
        height: 23px;
        width: 188px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style12">
            USERNAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="217px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style12">
            PASSWORD</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
        </td>
        <td class="style14">
            &nbsp;</td>
        <td class="style5">
        </td>
        <td class="style5">
        </td>
        <td class="style5">
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style12">
            <asp:Button ID="Button1" runat="server" Height="22px" 
                style="margin-left: 35px; margin-top: 0px" Text="LOGIN" Width="151px" 
                PostBackUrl="~/pvt_files.aspx" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" style="margin-left: 82px" Text="CANCEL" 
                Width="130px" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

