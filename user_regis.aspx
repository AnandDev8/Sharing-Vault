<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_regis.aspx.cs" Inherits="user_regis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="default5.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 139px;
        }
        .style9
        {
            width: 139px;
            height: 23px;
        }
        .style10
        {
            height: 23px;
        }
        .style11
        {
            width: 153px;
        }
        .style12
        {
            width: 153px;
            height: 23px;
        }
        .style13
        {
            width: 153px;
            height: 26px;
        }
        .style16
        {
            width: 139px;
            height: 26px;
        }
        .style17
        {
            height: 26px;
        }
        .style18
        {
            width: 153px;
            height: 28px;
        }
        .style21
        {
            width: 139px;
            height: 28px;
        }
        .style22
        {
            height: 28px;
        }
        .style27
        {
            width: 153px;
            height: 77px;
        }
        .style30
        {
            width: 139px;
            height: 77px;
        }
        .style31
        {
            height: 77px;
        }
        .style32
        {
            width: 133px;
            height: 23px;
        }
        .style33
        {
            width: 133px;
            height: 77px;
        }
        .style34
        {
            width: 133px;
        }
        .style35
        {
            width: 133px;
            height: 28px;
        }
        .style36
        {
            width: 133px;
            height: 26px;
        }
        .style37
        {
            width: 224px;
            height: 23px;
        }
        .style38
        {
            width: 224px;
            height: 77px;
        }
        .style39
        {
            width: 224px;
        }
        .style40
        {
            width: 224px;
            height: 28px;
        }
        .style41
        {
            width: 224px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF"><div>
    <table class="style1">
        <tr>
            <td colspan="5" 
                style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: 500; font-style: normal; text-transform: capitalize; color: #000000;">
                <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Groove" 
                    Height="77px" ImageUrl="~/ICONS/lock-animation-dribdble.gif" Width="81px" />
                <br />
                USER REGISTERATION</td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style37">
                </td>
            <td class="style32">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style27" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Name</td>
            <td class="style38">
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="firstnamevalid" runat="server" 
                    ControlToValidate="fname" ErrorMessage="*first name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style33">
                <asp:TextBox ID="mname" runat="server" Height="20px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style31">
                <asp:TextBox ID="lname" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lastnamevalid" runat="server" 
                    ControlToValidate="lname" ErrorMessage="*last name or initial" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Birthday</td>
            <td class="style39">
                <asp:TextBox ID="date" runat="server" AutoPostBack="True" 
                    ontextchanged="date_TextChanged"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="date" ErrorMessage="enter birthday" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                propic</td>
            <td>
                <asp:FileUpload ID="propic" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="propic" ErrorMessage="uploadpic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" 
                    ImageUrl="~/ICONS/calendar-icon.png" onclick="ImageButton1_Click" 
                    Width="49px" CausesValidation="False" />
            </td>
            <td class="style39">
                <asp:Calendar ID="birthday" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" 
                    onselectionchanged="birthday_SelectionChanged" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Background</td>
            <td>
                <asp:FileUpload ID="Background" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Background" ErrorMessage="uploadpic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Choose username</td>
            <td class="style39">
                <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                <asp:Label ID="user" runat="server" ForeColor="Red" 
                    Text="username already exist"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="uname" ErrorMessage="enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
            </td>
            <td class="style40">
                </td>
            <td class="style35">
                </td>
            <td class="style21" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Mobile Phone</td>
            <td class="style22">
                <asp:TextBox ID="number" runat="server" style="margin-bottom: 0px" 
                    MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="phonevalid" runat="server" 
                    ControlToValidate="number" ErrorMessage="*phone number necessary" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                password</td>
            <td class="style37">
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="password" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style32">
            </td>
            <td class="style9">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Nationality</td>
            <td>
                <asp:TextBox ID="nation" runat="server"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Confirm password</td>
            <td class="style39">
                <asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="passwordcompare" runat="server" 
                    ControlToCompare="password" ControlToValidate="cpassword" 
                    ErrorMessage="*Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="cpassword" ErrorMessage="enter confirm password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                Gender</td>
            <td class="style41">
                <asp:DropDownList ID="gender" runat="server" ForeColor="Red" 
                    BackColor="#66CCFF">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style36">
                </td>
            <td class="style16" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Mail address</td>
            <td class="style17">
                <asp:TextBox ID="mail" runat="server" Height="22px" Width="229px" 
                    style="margin-left: 0px">example@gmail.com</asp:TextBox>
                <asp:RegularExpressionValidator ID="mailregular" runat="server" 
                    ControlToValidate="mail" ErrorMessage="*Email ID incorrect" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                Personal Interest</td>
            <td class="style39">
                <asp:TextBox ID="personal" runat="server" 
                    TextMode="MultiLine" BorderStyle="Groove" BackColor="#66CCFF" 
                    BorderColor="#000066"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="personalvalid" runat="server" 
                    ControlToValidate="personal" ErrorMessage="*personal Interest required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                small Discription</td>
            <td>
                <asp:TextBox ID="discrip" runat="server" 
                    TextMode="MultiLine" BorderColor="#000066" BorderStyle="Groove" 
                    BackColor="#66CCFF"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="discvalid" runat="server" 
                    ControlToValidate="discrip" ErrorMessage="*Enter small discription" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                &nbsp;</td>
            <td class="style39">
                
                <asp:Button ID="Button1" runat="server" Text="REGISTER" Width="137px" 
                    onclick="Button1_Click" Height="39px" />
                
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style5" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #000080">
                <asp:Button ID="gotototo" runat="server" CausesValidation="False" 
                    PostBackUrl="~/About.aspx" Text="Go To Main" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
   </div> </div>
     <div>
        <img src="ICONS/giphy%20(2).gif" alt="" style="height: 191px; width: 1374px" /></div>
        <div id="welcome" class="container">
            <div class="title">
                <h2 style="color: #FFFFFF">
                    Welcome to Sharing Vault</h2>
            </div>
            <p style="color: #FFFFFF">
                Awesome decision.Be a part of sharing vault enjoy all the features&nbsp; 
            </p>
        </div>
</div>
<div id="footer">
	<div class="container">
		<div class="fbox1">
		<span class="icon icon-map-marker"></span>
			<span>1234 Fictional Road Suite #789
			<br />Nashville TN 00000</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-phone"></span>
			<span>
				Telephone: +1 800 123 4657
			</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-envelope"></span>
			<span>businessname@business.com</span>
		</div>
	</div>
</div>
<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
	<ul class="contact">
		<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
		<li><a href="#" class="icon icon-facebook"><span></span></a></li>
		<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
		<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
		<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
	</ul>
</div>
    
    </form>
</body>
</html>
