<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="viewusers.aspx.cs" Inherits="Admin_viewusers" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    
    
<%--    <div style="background-image: url('http://localhost:55705/Admin/img/intro-carousel/evew3.jpg');height:655px; color: #0000FF;">--%>
   
         
          
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="regid" DataSourceID="SqlDataSource1" Height="217px">
    <Columns>
        <asp:BoundField DataField="regid" HeaderText="regid" InsertVisible="False" ReadOnly="True" SortExpression="regid" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
    </Columns>
</asp:GridView>
<%--         </div>--%>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT * FROM [dbregister]"></asp:SqlDataSource>

</asp:Content>

