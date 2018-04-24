<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="user_his.aspx.cs" Inherits="user_his" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            text-align: center;
        }
        .style13
        {
            height: 23px;
        }
    .style14
    {
        width: 247px;
    }
    .style15
    {
        height: 1px;
        width: 247px;
    }
    .style16
    {
        text-align: left;
        height: 53px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style16" colspan="2" 
                style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: large; font-weight: 600; color: #00FF00">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                LOGS<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your username</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:DataList ID="Loglist" runat="server" RepeatColumns="1" Width="772px" 
                    Height="280px">
                    <ItemTemplate>
                        <table class="style1" style="height: 0px; width: 100%;">
                            <tr>
                                <td class="style14" 
                                    
                                    
                                    style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-weight: 600; color: #000000">
                                    <asp:Label ID="event" runat="server" Text='<%# Eval("events") %>'></asp:Label>
                                </td>
                                <td 
                                    
                                    
                                    style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-weight: 600; color: #000000">
                                    <asp:Label ID="time" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                </td>
                                <td 
                                    
                                    
                                    style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-weight: 600; color: #000000">
                                    <asp:Label ID="user" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>

