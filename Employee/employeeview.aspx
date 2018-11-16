<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.master" AutoEventWireup="true" CodeFile="employeeview.aspx.cs" Inherits="Employee_employeeview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Productid,Bookingid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Productid" HeaderText="Productid" InsertVisible="False" ReadOnly="True" SortExpression="Productid" />
            <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Bookingid" HeaderText="Bookingid" InsertVisible="False" ReadOnly="True" SortExpression="Bookingid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT Add_product.Productid, Add_product.Productname, Add_product.Cost, Add_product.Image, cart.Bookingid, cart.username, cart.Status FROM Add_product INNER JOIN cart ON Add_product.Productid = cart.Productid  WHERE (([Status] = @Status) AND ([username] = @username))">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Status" />
            <asp:SessionParameter DefaultValue="" Name="username" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

