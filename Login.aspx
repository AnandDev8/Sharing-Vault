<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language ="javascript">
        function passCheck()
         {
            alert("Checking username and password")
        }
     </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 170px;
        }
        .style2
        {
            width: 166px;
        }
        .style3
        {
            width: 269px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                LOGIN
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                USERNAME:</td>
            <td class="style3">
                <asp:TextBox ID="Username" runat="server" Width="223px"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="invalid" runat="server" ForeColor="Red" 
                    Text="Username or Password Incorrect"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                PASSWORD</td>
            <td class="style3">
                <asp:TextBox ID="Password" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Login_submit" runat="server" onclick="Login_submit_Click" 
                    Text="submit" Width="125px" onclientclick="passCheck()" />
            </td>
            <td class="style3">
                <asp:Button ID="clr" runat="server" onclick="clr_Click" Text="CLEAR" />
            </td>
        </tr>
    </table>
     </div>
    </form>
</body>
</html>
