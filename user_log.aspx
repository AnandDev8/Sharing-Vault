<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="user_log.aspx.cs" Inherits="user_log" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 151px;
    }
    .style14
    {
        width: 151px;
        height: 23px;
    }
    .style15
    {
        height: 23px;
    }
    .style16
    {
        height: 23px;
        width: 252px;
    }
    .style17
    {
        width: 252px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style14">
        </td>
        <td class="style16">
        </td>
        <td class="style15">
        </td>
        <td class="style15">
        </td>
        <td class="style15">
        </td>
    </tr>
    <tr>
        <td class="style13">
            Search<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style17">
            <asp:TextBox ID="adminsearch" runat="server" Width="141px"></asp:TextBox>
            <asp:Button ID="okay" runat="server" onclick="okay_Click" Text="OK" />
        </td>
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
        <td class="style17">
            <asp:DataList ID="adminlist" runat="server" RepeatColumns="5" Height="227px" 
                onitemcommand="adminlist_ItemCommand1" Width="624px">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image4" runat="server" Height="51px" 
                                    ImageUrl='<%# Eval("profilepic") %>' Width="55px" BorderColor="Black" 
                                    BorderStyle="Groove" />
                                <asp:Label ID="uname" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                <asp:LinkButton ID="viewww" runat="server" 
                                    CommandArgument='<%# Eval("u_id") %>' CommandName="view"></asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="vw" runat="server" CommandArgument='<%# Eval("u_id") %>' 
                                    CommandName="view" Height="33px" ImageUrl="~/ICONS/view.png" Width="41px" />
                                &nbsp;
                                <br />
                                <asp:ImageButton ID="block" runat="server" 
                                    CommandArgument='<%# Eval("u_id") %>' CommandName="block" Height="28px" 
                                    ImageUrl="~/ICONS/block_user-512.png" Width="39px" />
                                &nbsp;&nbsp;
                                <asp:ImageButton ID="remove" runat="server" 
                                    CommandArgument='<%# Eval("u_id") %>' CommandName="delete" Height="34px" 
                                    ImageUrl="~/ICONS/Delete_icon.png" Width="37px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
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
        <td class="style17">
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
        <td class="style17">
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

