<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default"%>














<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 6px;
        }
        .auto-style2 {
            width: 180px;
        }
    </style>
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
           
        

   <%-- <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label><br>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
       
   --%>    
                
            
             


</asp:Content>
    

