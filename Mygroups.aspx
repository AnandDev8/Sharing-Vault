<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true"  EnableEventValidation="false" CodeFile="Mygroups.aspx.cs" Inherits="Mygroups"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="5">
            MY GROUPS</td>
    </tr>
    <tr>
        <td>
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
        <td>
            &nbsp;</td>
        <td>
            <asp:DataList ID="grouplist" runat="server" 
                onitemcommand="grouplist_ItemCommand" RepeatColumns="5">
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="57px" 
                                    ImageUrl='<%# Eval("g_image") %>' Width="72px" />
                                <asp:Label ID="gname" runat="server" Text='<%# Eval("g_name") %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("g_id") %>' ForeColor="Lime">View</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
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
        <td>
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
        <td>
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

