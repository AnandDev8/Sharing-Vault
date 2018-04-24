<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Logs.aspx.cs" Inherits="Logs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
        }
        .style14
        {
            width: 395px;
        }
        .style15
        {
            width: 310px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="5">
            What all hasHappend</td>
    </tr>
    <tr>
        <td class="style13">
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
        <td class="style13">
            Event</td>
        <td>
            Time</td>
        <td>
            User</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13" colspan="5">
            <asp:DataList ID="loglist" runat="server">
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style14">
                                <asp:Label ID="event" runat="server" Text='<%# Eval("events") %>'></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:Label ID="time" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="user" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td class="style13">
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
</table>
</asp:Content>

