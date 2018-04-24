<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="GroupPage.aspx.cs" Inherits="GroupPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 82px;
        }
        .style15
        {
            height: 23px;
        }
        .style20
        {
            height: 23px;
        }
        .style22
        {
            width: 145px;
            height: 96px;
        }
        .style23
        {
            height: 96px;
        }
        .style27
        {
            height: 96px;
            width: 26px;
        }
        .style28
        {
            height: 266px;
            width: 26px;
        }
        .style29
        {
            width: 26px;
        }
        .style30
        {
            width: 145px;
        }
        .style31
        {
            height: 73px;
        }
        .style32
        {
            height: 73px;
        }
        .style35
        {
            width: 68px;
        }
        .style36
        {
            height: 15px;
        }
        .style38
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style22">
                <asp:Image ID="ppic" runat="server" Height="127px" Width="212px" 
                    BackColor="White" BorderStyle="Groove" />
            </td>
            <td class="style23" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 800; color: #000000">
                <asp:Label ID="gname" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="datetime" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style23">
            </td>
            <td class="style23">
            </td>
            <td class="style27" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF; font-weight: 400">
                <br />
                ADDMEMBERS<br />
                <asp:TextBox ID="textsearch" runat="server"></asp:TextBox>
                <asp:Button ID="search" runat="server" CausesValidation="False" 
                    onclick="search_Click" Text="search" />
            </td>
            <td class="style23">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #99CCFF; color: #000000;">
                <asp:DataList ID="msgscreen" runat="server" RepeatColumns="1" 
                    onitemcommand="msgscreen_ItemCommand" Height="325px" Width="186px" 
                    onselectedindexchanged="msgscreen_SelectedIndexChanged">
                    <ItemTemplate>
                        <table class="style1" style="height: 123px; width: 100%;">
                            <tr>
                                <td colspan="5" class="style36">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~<asp:Label 
                                        ID="uname" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style38">
                                    <asp:Image ID="Image5" runat="server" Height="46px" 
                                        ImageUrl='<%# Eval("path") %>' BackColor="Black" BorderStyle="Groove" 
                                        BorderColor="Black" />
                                </td>
                                <td class="style35">
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                                        ImageUrl="~/ICONS/view.png" Width="32px" 
                                        CommandArgument='<%# Eval("p_id") %>' CommandName="view" 
                                        CausesValidation="False" />
                                    <br />
                                    view</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        CommandArgument='<%# Eval("p_id") %>' CommandName="report" Height="36px" 
                                        ImageUrl="~/ICONS/download.jpg" Width="35px" CausesValidation="False" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style38" colspan="5">
                                    <asp:Label ID="msg" runat="server" Text='<%# Eval("filedisc") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="style28" rowspan="3" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF; font-weight: 400">
                <asp:DataList ID="DataMember" runat="server" Height="99px" Width="16px" 
                    RepeatColumns="3" style="margin-top: 0px" 
                    onitemcommand="DataList1_ItemCommand">
                    <EditItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style13">
                                    <asp:Image ID="Image4" runat="server" Height="46px" 
                                        ImageUrl='<%# Eval("profilepic") %>' Width="52px" BorderColor="White" 
                                        BorderStyle="Groove" />
                                </td>
                                <td>
                                    <asp:Label ID="name" runat="server" Text='<%# Eval("fname") %>' 
                                        ForeColor="Black"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="uname" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="addUser" runat="server" 
                                        CommandArgument='<%# Eval("u_name") %>' ImageUrl="~/ICONS/adduser.png" 
                                        Width="28px" Height="32px" CausesValidation="False"></asp:ImageButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style31" colspan="4" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF; font-weight: 400">
                <asp:ImageButton ID="Attach" runat="server" Height="54px" 
                    ImageUrl="~/ICONS/attach-2-icon.png" Width="54px" onclick="Attach_Click" />
                <asp:FileUpload ID="groupupload" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="groupupload" ErrorMessage="attach a file" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                Type Message<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="msg" ErrorMessage="give a message" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="msg" runat="server" TextMode="MultiLine" BackColor="#FFFF99"></asp:TextBox>
            </td>
            <td class="style32">
            </td>
            <td class="style32">
            </td>
        </tr>
        <tr>
            <td class="style20" colspan="4" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF; font-weight: 400">
                <br />
                GROUP MEMBERS

                    <asp:DataList runat="server"  ID="DataListGMember" 
                    onitemcommand="DataListGMember_ItemCommand" RepeatColumns="4">
                    <ItemTemplate>
                        <asp:ImageButton ID="profil" runat="server" Height="45px" 
                            ImageUrl='<%# Eval("profilepic") %>' Width="70px" BorderColor="White" 
                            BorderStyle="Groove" />
                        <br />
                        <asp:Label ID="uname" runat="server" Text='<%# Eval("u_name") %>' 
                            ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                        <asp:ImageButton ID="deleUser" runat="server" 
                            CommandArgument='<%# Eval("u_name") %>' Height="27px" 
                            ImageUrl="~/ICONS/Users-Remove-User-icon.png" Width="29px" 
                            CausesValidation="False" />
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <br />
                <br />
            </td>
            <td class="style15">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style29">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style29">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

