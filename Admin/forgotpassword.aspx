<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="Admin_forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 3px;
            font-size: x-large;
        }
        .auto-style3 {
            height: 277px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
        }
    </style>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
       
         <div  style="background-image: url('img/intro-carousel/beauty.jpg')">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    Change Your Password<br />
                    <br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>UserName</strong></td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="txtuname" runat="server" Height="34px" Width="160px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Phone</strong></td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="txtphn" runat="server" Height="34px" Width="160px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" Font-Bold="True" Height="35px" Width="92px" />
                </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
