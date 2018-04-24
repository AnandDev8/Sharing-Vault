<%@ Page Title="" Language="C#" MasterPageFile="~/User_master.master" AutoEventWireup="true" CodeFile="profilepage.aspx.cs" Inherits="profilepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style21
        {
            height: 69px;
        }
        .style25
        {
            height: 69px;
        }
        .style26
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2">
            <asp:Image ID="backimage" runat="server" Height="72px" style="margin-left: 0px" 
                Width="821px" BackColor="White" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td class="style26" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
            <asp:Image ID="proimg" runat="server" Height="77px" Width="103px" 
                BackColor="White" BorderStyle="Groove" />
            <br />
            Username<br />
            <asp:TextBox ID="uname" runat="server" Enabled="False"></asp:TextBox>
            <br />
            change profile picture<br />
            <asp:FileUpload ID="frontimage" runat="server" />
        </td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
            Change background&nbsp; picture<asp:FileUpload ID="backup" runat="server" 
                style="margin-left: 4px" />
            <br />
            password<br />
            <asp:TextBox ID="pass" runat="server" Height="22px" TextMode="Password" 
                Width="148px"></asp:TextBox>
            <asp:Button ID="check" runat="server" onclick="check_Click" Text="Check" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*enter password" ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator>
            <br />
            Change password<br />
            <asp:TextBox ID="password" runat="server" Height="25px" TextMode="Password" 
                Width="149px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="cpassword" runat="server" Width="148px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="cpassword" ControlToValidate="password" 
                ErrorMessage="password mismatch" ForeColor="Red"></asp:CompareValidator>
            <br />
            <asp:Button ID="setpass" runat="server" onclick="setpass_Click" 
                Text="SET NEW PASSWORD" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style21" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
            <asp:TextBox ID="fname" runat="server" Width="112px"></asp:TextBox>
            <asp:TextBox ID="mname" runat="server" Width="98px"></asp:TextBox>
            <asp:TextBox ID="lnames" runat="server" Width="111px"></asp:TextBox>
            <br />
            Interest<br />
            <asp:TextBox ID="textint" runat="server" Height="72px" Width="209px" 
                TextMode="MultiLine"></asp:TextBox>
            <br />
            E-mail<br />
            <asp:TextBox ID="email" runat="server" Height="22px" Width="232px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="style25" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 400; color: #000000">
            Discription<br />
            <asp:TextBox ID="textdisc" runat="server" 
                style="top: 0px; left: 0px; height: 62px; width: 210px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style26" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="save" runat="server" onclick="save_Click" Text="SAVE CHANGES" 
                ForeColor="#003366" style="text-align: center" />
        </td>
    </tr>
</table>
</asp:Content>

