﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="background-image: url('http://localhost:55705/Admin/img/intro-carousel/hin1.jpg');height:655px; color: #0000FF;">

        <table align="center">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <h1>&nbsp;</h1>
            <h1><center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN</center></h1>
            <tr>
                <td class="auto-style2">
                    <br />
                    UserName<br />
                </td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" BackColor="Transparent"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                                                <td>&nbsp;</td>

                                                <td>&nbsp;</td>



                
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    Password<br />
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" BackColor="Transparent"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                </td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>&nbsp;</td>

                                                <td>&nbsp;</td>




            </tr>
            <tr>
                <td align="center" class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="74px" OnClick="Button1_Click" />
                    <br />
            </tr>
        <tr>
            <td class="auto-style2">
                <center>
                    <br />
                    New User?</center>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="register.aspx">Register here</a></h5>
            </td>
       </tr>
        </table>
             </div>

</asp:Content>

