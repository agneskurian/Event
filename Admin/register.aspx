<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Admin_register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 678px;
        }
        .auto-style4 {
            text-align: center;
            height: 70px;
        }
        .auto-style10 {
            text-align: center;
            height: 24px;
        }
        .auto-style11 {
            height: 24px;
        }
        .auto-style12 {
            text-align: center;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div  style="background-image: url('img/intro-carousel/beauty.jpg')">

        <table align="center" class="auto-style1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <tr>
                <td class="auto-style12" colspan="2">REGISTARTION</td>
            </tr>
            <tr>
                <td class="auto-style10">UserName</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtuname" runat="server" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Address</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Email</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter a valid emailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Phone.No</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtphn" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtphn"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" ErrorMessage="Enter a valid phone number
                        " ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    <cc1:PasswordStrength ID="txtpass_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpass">
                    </cc1:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Confirm Passsword</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Passwordmismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblcaptua" runat="server" Text="lblcaptua" Font-Size="Large" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcap" runat="server" Height="16px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30" ImageUrl="img/intro-carousel/refresh2.jpg" OnClick="ImageButton1_Click" ValidateRequestMode="Disabled" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />--%>
 <%--<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Admin/img/login.jpg" OnClick="ImageButton2_Click" Width="100px" />--%>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
<%--                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click1" />--%>
                    &nbsp; </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
