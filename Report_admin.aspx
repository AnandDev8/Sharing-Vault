<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Report_admin.aspx.cs" Inherits="Report_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 161px;
        }
        .style14
        {
            width: 319px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                ABUSE REPORT</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="Listreport" runat="server" RepeatColumns="5" Height="234px" 
                    onitemcommand="Listreport_ItemCommand" Width="841px">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style13">
                                    From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                <td class="style14">
                                    <asp:Label ID="uname" runat="server" Text='<%# Eval("from_name") %>'></asp:Label>
                                </td>
                                <td rowspan="5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Message&nbsp; :</td>
                                <td class="style14">
                                    <asp:Label ID="msg" runat="server" Text='<%# Eval("report") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="style14">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Against&nbsp;&nbsp;&nbsp; :</td>
                                <td class="style14">
                                    <asp:Label ID="uname2" runat="server" Text='<%# Eval("to_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        CommandArgument='<%# Eval("p_id") %>' CommandName="download" Height="32px" 
                                        ImageUrl="~/ICONS/downloads-icon.png" Width="39px" />
                                    <br />
                                    Download</td>
                                <td class="style14">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" 
                                        ImageUrl="~/ICONS/Delete_icon.png" Width="39px" 
                                        CommandArgument='<%# Eval("p_id") %>' CommandName="delete" />
                                    <br />
                                    Remove file</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

