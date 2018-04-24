<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="reportuser.aspx.cs" Inherits="reportuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="5">
                REPORT USER</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                From</td>
            <td>
                <asp:TextBox ID="from" runat="server" Height="26px" Width="173px"></asp:TextBox>
            </td>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="mail" runat="server" Height="24px" Width="146px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                Reason</td>
            <td>
                <asp:TextBox ID="msg" runat="server" Height="30px" TextMode="MultiLine" 
                    Width="157px"></asp:TextBox>
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
            <td>
                <br />
                <asp:Button ID="reprt" runat="server" Text="REPORT" onclick="reprt_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

