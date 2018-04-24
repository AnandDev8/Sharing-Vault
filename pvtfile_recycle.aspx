<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="pvtfile_recycle.aspx.cs" Inherits="pvtfile_recycle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 91px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            RECYCLE YOUR PRECIOUS FILES </td>
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
            <asp:DataList ID="recyclelist" runat="server" RepeatColumns="5" 
                onitemcommand="recyclelist_ItemCommand">
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style13" style="color: #FFFFFF">
                                <asp:Image ID="Image1" runat="server" Height="57px" 
                                    ImageUrl='<%# Eval("path") %>' Width="64px" BackColor="#BCDDFF" 
                                    BorderColor="White" BorderStyle="Groove" />
                                &nbsp;<asp:Label ID="time" runat="server" Text='<%# Eval("time") %>' 
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" style="color: #FFFFFF">
                                <asp:Label ID="filename" runat="server" Text='<%# Eval("sname") %>' 
                                    ForeColor="Black"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                <asp:ImageButton ID="recycle" runat="server" 
                                    CommandArgument='<%# Eval("path") %>' Height="39px" ImageUrl="~/ICONS/sync.png" 
                                    Width="33px" />
                                &nbsp;<br />&nbsp;Recycle</td>
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

