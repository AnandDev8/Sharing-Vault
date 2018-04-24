<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="pvt_files.aspx.cs" Inherits="pvt_files" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style13">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:DataList ID="DataCat" runat="server" onitemcommand="DataCat_ItemCommand" 
                                RepeatColumns="3" Height="237px" Width="787px">
                                <ItemTemplate>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image1" runat="server" Height="85px" 
                                                    ImageUrl="~/ICONS/Generic-Orange-icon.png" Width="98px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: large; font-weight: 400; color: #FFFFFF">
                                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                                    CommandArgument='<%# Eval("c_id") %>' Text='<%# Eval("c_name") %>' 
                                                    ForeColor="Black"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                </td>
        </tr>
        </table>
</asp:Content>

