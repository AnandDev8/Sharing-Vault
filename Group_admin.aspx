<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Group_admin.aspx.cs" Inherits="Group_admin"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="grplist" runat="server" RepeatColumns="4" 
                onitemcommand="grplist_ItemCommand" 
                onselectedindexchanged="grplist_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="style1" style="height: 150px; width: 98%">
                        <tr>
                            <td class="style14">
                                <asp:Image ID="Image4" runat="server" Height="76px" 
                                    ImageUrl='<%# Eval("g_image") %>' Width="81px" BorderColor="Black" 
                                    BorderStyle="Groove" />
                            </td>
                            <td>
                                <asp:Label ID="gname" runat="server" Text='<%# Eval("g_name") %>'></asp:Label>
                                <br />
                                <asp:Label ID="admin" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                <br />
                                <asp:Label ID="date" runat="server" Text='<%# Eval("g_time") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:ImageButton ID="blockgrp" runat="server" 
                                    CommandArgument='<%# Eval("g_id") %>' Height="44px" 
                                    ImageUrl="~/ICONS/23-512.png" Width="56px" onclick="blockgrp_Click" 
                                    CommandName="block" />
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    CommandArgument='<%# Eval("g_id") %>' CommandName="delete" Height="36px" 
                                    ImageUrl="~/ICONS/Delete_icon.png" Width="43px" />
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

