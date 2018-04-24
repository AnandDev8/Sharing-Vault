<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="textfolder.aspx.cs" Inherits="textfolder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            height: 23px;
        }
        .style13
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: 800; color: #FFFFFF;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="folname" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style13" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 500; color: #000000">
            <asp:FileUpload ID="folderupload" runat="server" style="text-align: center" 
                Width="214px" />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="folderupload" ErrorMessage="*upload file" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            FileName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="sname" 
                runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="sname" ErrorMessage="give a name" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style12">
            <asp:Button ID="addfile" runat="server" onclick="addfile_Click" Text="ADD" 
                Width="121px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataFolder" runat="server" RepeatColumns="4" 
                onitemcommand="DataFolder_ItemCommand" Width="635px">
                <ItemTemplate>
                    <table class="style1" style="height: 126px; width: 100%">
                        <tr>
                            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #FFFFFF">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" 
                                    ImageUrl='<%# Eval("path") %>' Width="88px" BorderColor="Black" 
                                    BorderStyle="Ridge" BackColor="#BCDDFF" />
                                <br />
                                <asp:Label ID="sname" runat="server" Text='<%# Eval("sname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="view" runat="server" Height="24px" 
                                    ImageUrl="~/ICONS/select.png" Width="31px" 
                                    CommandArgument='<%# Eval("path") %>' CommandName="view" 
                                    CausesValidation="False" />
                                &nbsp;
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" 
                                    ImageUrl="~/ICONS/Delete_icon.png" Width="32px" 
                                    CommandArgument='<%# Eval("path") %>' CommandName="delete" 
                                    CausesValidation="False" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:Label ID="pass" runat="server" Text="Key" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="passs" runat="server" Width="153px" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="passs" ErrorMessage="give a key" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>
</asp:Content>

