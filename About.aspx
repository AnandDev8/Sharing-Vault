<%@ Page Title="" Language="C#" MasterPageFile="~/Sharing.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

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
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: xx-large; font-weight: 900">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: &quot;Times New Roman&quot;, Times, serif; font-weight: 800; font-size: x-large; color: #000000">
            <p class="MsoNormal" style="text-align:justify;text-indent:.5in">
                <span style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
                <strong>Sharing vault is a web application which basically aims at file sharing. 
                It enables users to drop any file into a designated folder that is then 
                synchronized to the web. SyncBox makes it easy to securely share files with 
                other people, sync them across the web, access them from any computer with 
                internet facility, and keep them safe. Sharing vault provides a service that 
                enables users to store and synchronize files online and share files and folders 
                with others using file synchronization. Sharing vault is designed to simply sync 
                files and folders, but we can use it to trigger other tasks by simply adding 
                files to Sharing vault in a particular folder. Here the term &quot;sync&quot; means 
                uploading files to the online web application &quot;Sharing vault&quot;.</strong><o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.5in">
                <span style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
                <span style="mso-spacerun:yes"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></span><strong>In Sharing vault, we have different categories of 
                folders in which the users can store files of specific types. While Sharing 
                vault functions as a storage service, its focus is on synchronization and 
                sharing. It supports history of deleted files and folders, so files or folders 
                deleted from the Sharing vault may be recovered by the creator of the file or 
                folder</strong><o:p></o:p></span></p>
            <span style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"><strong>Sharing vault, at its 
            core, is a simple file synchronization utility that stores your data in the 
            cloud and makes it accessible across via the web interface from any browser. 
            What sets Sharing vault apart from other file syncing tools is that the changes 
            are nearly instantaneous, uploads are blazing fast and that </strong><em>
            <strong>it just works</strong></em></span></td>
    </tr>
</table>
</asp:Content>

