<%@ Page Title="" Language="C#" MasterPageFile="~/Sharing.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 190px;
    }
    .style14
    {
        height: 23px;
        width: 190px;
    }
    .style16
    {
        width: 193px;
    }
    .style17
    {
        width: 193px;
        height: 23px;
    }
    .style18
    {
        width: 114px;
    }
    .style19
    {
        width: 104px;
    }
    .style20
    {
        height: 23px;
        width: 52px;
    }
    .style21
    {
        width: 52px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <table class="style1">
    <tr>
        <td colspan="5" 
            
            
            style="color: #0000FF; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bolder; font-style: inherit; background-color: #0000FF; text-align: center;">
            SEE IF YOU HAVE FRIENDS HERE</td>
    </tr>
    <tr>
        <td class="style17">
        </td>
        <td class="style14">
            &nbsp;
            SEARCH<asp:TextBox ID="TextSearch" runat="server" Width="253px" 
                ontextchanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="okay" runat="server" onclick="okay_Click" Text="OK" />
        </td>
        <td class="style20">
            &nbsp;</td>
        <td class="style5">
        </td>
        <td class="style5">
        </td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style13">
            <asp:DataList ID="DataFriend" runat="server" RepeatColumns="5" Width="536px" 
                onitemcommand="DataFriend_ItemCommand">
                <ItemTemplate>
                    <table class="style1" style="height: 67px; width: 17%;">
                        <tr>
                            <td class="style18">
                                <asp:Image ID="fpic" runat="server" Height="34px" 
                                    ImageUrl='<%# Eval("profilepic") %>' Width="54px" BorderColor="#003300" 
                                    BorderStyle="Groove" />
                                &nbsp;&nbsp;&nbsp;<br />
                                <asp:Label ID="fname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                <br />
                                <br />
                                <asp:LinkButton ID="vw" runat="server" CommandArgument='<%# Eval("u_id") %>'>VIEW</asp:LinkButton>
                            </td>
                            <td class="style19">
                                <br />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

