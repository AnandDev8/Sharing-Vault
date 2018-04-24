<%@ Page Title="" Language="C#" MasterPageFile="~/Sharing.master" AutoEventWireup="true" CodeFile="LoginS.aspx.cs" Inherits="LoginS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="JAVASCRIPT" type="text/javascript">

    function noBack() { window.history.forward(); }
    noBack();
    window.onload = noBack;
    window.onpageshow = function (evt) { if (evt.persisted) noBack(); }
    window.onunload = function () { void (0); }


    if (window.Event)
        document.captureEvents(Event.MOUSEUP);
    document.oncontextmenu = nocontextmenu;
    document.onmousedown = norightclick;
    document.onkeydown = nokeydown;

</script>
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2">
            Login if your are already a member</td>
    </tr>
    <tr>
        <td class="style2">
            USERNAME</td>
        <td>
            <asp:TextBox ID="uname" runat="server" Height="21px" Width="219px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="uname" ErrorMessage="Please Enter  your username" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            PASSWORD</td>
        <td>
            <asp:TextBox ID="password" runat="server" Height="20px" TextMode="Password" 
                Width="229px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="unamevalid" runat="server" 
                ErrorMessage="Please Enter the password" ControlToValidate="password" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="login" runat="server" ForeColor="#009933" onclick="login_Click" 
                Text="LOGIN" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" ForeColor="Red" onclick="Button1_Click" 
                Text="CLEAR" />
            <asp:Label ID="invalid" runat="server" ForeColor="Red" 
                Text="Username or password not correct"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

