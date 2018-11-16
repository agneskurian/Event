<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.master" AutoEventWireup="true" CodeFile="delivered.aspx.cs" Inherits="Employee_delivered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
   <br/>

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT [username] FROM [cart] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="Status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        <br/>
    <br/>

    Send a message<asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="246px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 46px" TextMode="MultiLine"></asp:TextBox>


<br />
<br />
<br />
<asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Send message" />
<br />
<br />
<br />


</asp:Content>

