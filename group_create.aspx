<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="group_create.aspx.cs" Inherits="group_create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 158px;
        }
        .style13
        {
            width: 158px;
            height: 23px;
        }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            height: 23px;
            }
        .style16
        {
            width: 296px;
        }
        .style20
        {
            width: 158px;
            height: 26px;
        }
        .style21
        {
            width: 296px;
            height: 26px;
        }
        .style22
        {
            height: 26px;
        }
        .style23
        {
            width: 100px;
        }
        .style25
        {
            width: 127px;
        }
        .style26
        {
            width: 112px;
        }
        .style27
        {
            height: 23px;
            width: 296px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="5" 
                
                style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 600; color: #0000FF;">
                GROUP CREATION</td>
        </tr>
        <tr>
            <td class="style13" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
                Group Name:</td>
            <td class="style27">
                <asp:TextBox ID="Group_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Group_name" ErrorMessage="*enter group name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style14">
            </td>
            <td class="style14">
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style12" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
                Group Picture</td>
            <td class="style16">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="*Upload photo" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
                Group type</td>
            <td class="style21">
                <asp:TextBox ID="Group_type" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Group_type" ErrorMessage="*enter type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style22">
                </td>
            <td class="style22">
                </td>
            <td class="style22">
                </td>
        </tr>
        <tr>
            <td class="style20" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
                Group discription</td>
            <td class="style21">
                <asp:TextBox ID="Group_disc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Group_disc" ErrorMessage="*enter discription" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style22">
            </td>
            <td class="style22">
            </td>
            <td class="style22">
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Button ID="Submit" runat="server" Text="SUBMIT" Width="148px" 
                    onclick="Submit_Click" />
            </td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style16" 
                style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large; font-weight: 500">
                You are the Admin of theseGroups</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #FFFFFF">
            </td>
            <td class="style15" colspan="2" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #FFFFFF">
                <asp:DataList ID="DataList1" runat="server" 
                    onitemcommand="DataList1_ItemCommand" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" Width="403px">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style23">
                                    <asp:Image ID="propic" runat="server" Height="40px" 
                                        ImageUrl='<%# Eval("g_image") %>' Width="50px" BorderColor="White" 
                                        BorderStyle="Groove" />
                                </td>
                                <td class="style26">
                                    <asp:LinkButton ID="Name" runat="server" CommandArgument='<%# Eval("g_id") %>' 
                                        Text='<%# Eval("g_name") %>' ForeColor="Black" CausesValidation="False"></asp:LinkButton>
                                </td>
                                <td class="style25">
                                    <asp:Label ID="g_type" runat="server" Text='<%# Eval("g_type") %>' 
                                        ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="g_disc" runat="server" Text='<%# Eval("g_disc") %>' 
                                        ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="style14">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style16">
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

