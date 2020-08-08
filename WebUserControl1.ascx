<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Project5_Benjamin_Downes.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        text-decoration: underline;
    }
</style>

<span class="auto-style1"><strong>Temperature Conversion User Control</strong></span><br />
<br />
Farenheight to Celsius<br />
<asp:TextBox ID="fdegree1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
<asp:Button ID="fToc" runat="server" OnClick="Button1_Click" Text="Convert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="cdegree1" runat="server"></asp:TextBox>
<br />
<br />
Celsius to Farenheight<br />
<asp:TextBox ID="cdegree2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
<asp:Button ID="cTof" runat="server" OnClick="Button2_Click1" Text="Convert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="fdegree2" runat="server"></asp:TextBox>
&nbsp;<p>
    &nbsp;</p>

