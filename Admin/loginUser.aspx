<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginUser.aspx.cs" Inherits="Admin_loginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            height: 67px;
        }
        .auto-style10 {
            width: 423px;
            height: 222px;
        }
        .auto-style11 {
            width: 423px;
            height: 67px;
        }
        .auto-style12 {
            width: 423px;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
            <div  style="background-image: url('img/intro-carousel/aaaa.jpg')">
    <table align="center">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <h1>&nbsp;</h1>
            <p>&nbsp;</p>
            <h1>&nbsp;</h1>
            <h1>LOGIN HERE</center></h1>
            <p>&nbsp;</p>
            <tr>

                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtuname" runat="server" BackColor="Transparent" placeholder="UserName" ForeColor="Black" Height="31px" Width="199px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter username" ControlToValidate="txtuname"></asp:RequiredFieldValidator>

                    <br />
                </td>
                <td class="auto-style7"></td>
             
            </tr>
            <tr>             
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtpass" runat="server" BackColor="Transparent" placeholder="Password" Height="31px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valid password" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                </td>
                                                <td class="auto-style7"></td>

                 
          


            </tr>
            <tr>
                <td align="center" class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SignIn" Width="92px" OnClick="Button1_Click" ForeColor="#660066" Height="28px" style="font-weight: 700; font-size: large" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13">&nbsp;New user? </span> <a href="register.aspx" style="font-size: large">Register here</a></h5>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13">&nbsp;Forgot Password? </span> <a href="forgotpassword.aspx" style="font-size: large">Register here</a></h5>

            </tr>
       <%-- <tr>
            <td class="auto-style9">
            </td>
       </tr>
       --%> </table>
    </div>
    </form>
</body>
</html>
