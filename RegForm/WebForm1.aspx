<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="back">
    <form id="form1" runat="server">
        <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
        <div class="container">
            <h1 align="center" dir="rtl" class="title">Registration form</h1>
            <table align ="center" class ="user-details">
                <tr class="input-box">
                    <td class="input-box">Full Name</td>
                    <td class="box">
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox></td>
                </tr>
                <tr class="input-box">
                    <td>Address</td>
                    <td class="box">
                        <asp:TextBox ID="txtAdd" runat="server" placeholder="Enter your address"></asp:TextBox></td>
                </tr>
                <tr class="gender-details">
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text=" Male" OnCheckedChanged="RadioButton1_CheckedChanged"/><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text=" Female" OnCheckedChanged="RadioButton2_CheckedChanged"/><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text=" Non binary" OnCheckedChanged="RadioButton3_CheckedChanged"/>
                    </td>
                </tr>
                <tr class="input-box">
                    <td>Phone</td>
                    <td class="box">
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="+48-987-654-321"></asp:TextBox></td>
                </tr>
                <tr class="input-box">
                    <td>Email</td>
                    <td class="box">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="john_doe@example.com"></asp:TextBox></td>
                </tr>
                <tr class="input-box">
                    <td>Username</td>
                    <td class="box">
                        <asp:TextBox ID="txtUser" runat="server" placeholder="Enter your username"></asp:TextBox></td>
                </tr>
                <tr class="input-box">
                    <td>Password</td>
                    <td class="box">
                        <asp:TextBox ID="txtPass" TextMode="Password" runat="server" placeholder="**********"></asp:TextBox></td>
                </tr>
                <tr class="button">
                    <td></td>
                    <td align ="right">
                        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" /></td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
