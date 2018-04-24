<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="blockedUser.aspx.cs" Inherits="blockedUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 98px;
        }
        .style14
        {
            text-align: center;
        }
        .style15
        {
            width: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                BLOCKED USERS</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:DataList ID="blklist" runat="server" onitemcommand="blklist_ItemCommand" 
                    RepeatColumns="5" onselectedindexchanged="blklist_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="style1" style="width: 51%">
                            <tr>
                                <td class="style13">
                                    <asp:Image ID="userimg" runat="server" Height="63px" 
                                        ImageUrl='<%# Eval("profilepic") %>' Width="64px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:Label ID="name" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        AlternateText='<%# Eval("u_id") %>' Height="37px" 
                                        ImageUrl="~/ICONS/unblock.png" Width="41px" 
                                        CommandArgument='<%# Eval("u_id") %>' CommandName="unblock" />
                                    Unblock</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <div class="style14">
                    <br />
                    <br />
                    BLCOKED GROUPS<br />
                    <asp:DataList ID="grplist" runat="server" onitemcommand="grplist_ItemCommand" 
                        RepeatColumns="4">
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style15">
                                        <asp:Image ID="Image1" runat="server" Height="73px" 
                                            ImageUrl='<%# Eval("g_image") %>' Width="73px" />
                                    </td>
                                    <td>
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            CommandArgument='<%# Eval("g_id") %>' Height="31px" 
                                            ImageUrl="~/ICONS/unblock.png" Width="33px" />
                                        <br />
                                        unblock</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("g_name") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                    <br />
                    <br />
                <asp:DataList ID="blkgrplist" runat="server" RepeatColumns="4" 
                    onitemcommand="blkgrplist_ItemCommand" 
                        onselectedindexchanged="blkgrplist_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style14">
                                    <asp:Image ID="blkgrpimg" runat="server" Height="50px" 
                                        ImageUrl='<%# Eval("g_image") %>' Width="87px" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("g_id") %>' Height="31px" 
                                        ImageUrl="~/ICONS/unblock.png" Width="33px" />
                                    <br />
                                    unblock</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style14">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("g_name") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

