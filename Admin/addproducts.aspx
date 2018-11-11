<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="addproducts.aspx.cs" Inherits="Admin_addproducts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table class="w-100" style="color: #FFFFFF">
        <tr>
            <td class="text-center" colspan="2" style="height: 26px"><span style="font-size: x-large">ADD PRODUCTS</span><br style="font-size: x-large" />
                <br style="font-size: x-large" />
            </td>
        </tr>
        
        <tr>
            <td>
                <br />
                Product Name<br />
            </td>
            <td>
                <br />      
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Bouquet</asp:ListItem>
                    <asp:ListItem>Wreath</asp:ListItem>
                    <asp:ListItem>Flower Mala</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select one item" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Description<br />
            </td>
            <td>
                <asp:TextBox ID="txtdes" runat="server" Height="22px" Width="120px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdes" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
       
        <tr>
            <td style="color: #FFFFFF">
                <br />
                Product Cost<br />
            </td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtcost" runat="server" Height="22px" Width="120px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcost" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        
        <tr>
            <td>
                <br />
                Availble Quantity<br />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtavail" runat="server" Height="22px" Width="120px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtavail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
               Product image<br />
            </td>
            <td>&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px" />
                <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click"/>
                <asp:Image ID="Image1" runat="server" Width="200px" />                
                <br />
            </td>
        </tr>           
        <tr>
             <td class="text-center" colspan="2">
                 <br />
                 <br />
                 <asp:Button ID="Button3" runat="server" Text="Insert" OnClick="Button3_Click" />
                 <br />
                 <br />
             </td>
            <td>&nbsp;</td>
        </tr>

    </table>


</asp:Content>

