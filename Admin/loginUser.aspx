<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginUser.aspx.cs" Inherits="Admin_loginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style14 {
            width: 423px;
            height: 38px;
        }
        .auto-style16 {
            width: 423px;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 38px;
        }
        .auto-style19 {
            width: 423px;
            height: 22px;
        }
        .auto-style20 {
            height: 6px;
        }
        </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
            <div  style="background-image: url('img/intro-carousel/aaaa.jpg')">
    <table align="center" style="height: 602px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <p class="auto-style12"><strong>LOGIN HERE</strong></p>
            <tr>

                <td class="auto-style14">
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <asp:TextBox ID="txtuname" runat="server" BackColor="Transparent" placeholder="UserName" ForeColor="White" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter username" ControlToValidate="txtuname"></asp:RequiredFieldValidator>

                    <br />
                </td>
                <td class="auto-style18"></td>
             
            </tr>
            <tr>             
                <td class="auto-style16">
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--%>
                    <asp:TextBox ID="txtpass" runat="server" BackColor="Transparent" placeholder="Password" Height="30px" Width="200px" TextMode="Password" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valid password" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                </td>
                                                <td class="auto-style17"></td>

                 
          


            </tr>
            <tr>
                <td align="center" class="auto-style19">
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <asp:Button ID="Button1" runat="server" Text="SignIn" Width="92px" OnClick="Button1_Click" ForeColor="#660066" Height="28px" style="font-weight: 700; font-size: large" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h5><a href="register.aspx" style="font-size: large; color: #000000;">Register here</a></h5>
                   <h5><a href="forgotpassword.aspx" style="font-size: large; color: #000000;">Forgot Password??</a></h5></td>

            </tr>
     </table>
    </div>
    </form>
</body>
</html>
