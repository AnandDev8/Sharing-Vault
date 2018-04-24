<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="public downloader.aspx.cs" Inherits="public_downloader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 38px;
        }
        .style13
        {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3" 
                style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 400; color: #FFFFFF;">
                FILE VIEWER/DOWNLOADER</td>
        </tr>
        <tr>
            <td class="style12" 
                style="color: #000000">
                File:</td>
            <td class="style13" 
                style="color: #000000">
                <asp:Label ID="filename" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="4">
                <asp:Image ID="img" runat="server" Height="214px" Width="453px" 
                    BorderColor="White" BorderStyle="Groove" BackColor="#BCDDFF" />
            </td>
        </tr>
        <tr>
            <td class="style12" 
                style="color: #000000">
                File Discription</td>
            <td class="style13" 
                style="color: #000000">
                <asp:Label ID="disc" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12" style="color: #000000">
                &nbsp;</td>
            <td class="style13" style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:HyperLink ID="down" runat="server" ForeColor="Black">download</asp:HyperLink>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

