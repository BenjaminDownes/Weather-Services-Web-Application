<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project5_Benjamin_Downes.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>Login Page</strong></span><strong><br class="auto-style1" />
            </strong>
            <br />
            User Name:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 35px" Text="Sign In" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        User Credentials to Use for Grading/Testing:</p>
    <table style="width:100%;">
        <tr>
            <td><b>Username</b></td>
            <td><b>Password</b></td>
            <td><b>Authorization</b></td>
        </tr>
        <tr>
            <td>bob</td>
                        <td>pie</td>
                        <td>member</td>
                    </tr>
                    <tr>
                        <td>mike</td>
                        <td>dragon</td>
                        <td>staff</td>
                    </tr>
                    <tr>
                        <td>king</td>
                        <td>kong</td>
                        <td>admin</td>
                    </tr>
                </table>
</body>
</html>
