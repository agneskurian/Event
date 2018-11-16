<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.master" AutoEventWireup="true" CodeFile="ordershow.aspx.cs" Inherits="Employee_ordershow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bookingid,username" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Bookingid" HeaderText="Bookingid" InsertVisible="False" ReadOnly="True" SortExpression="Bookingid" />
            <asp:BoundField DataField="Productid" HeaderText="Productid" SortExpression="Productid" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:ButtonField CommandName="Select" HeaderText="Delivered" Text="Delivered" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT cart.Bookingid, cart.Productid, dbregister.address, dbregister.city, dbregister.username, dbregister.phone FROM cart INNER JOIN dbregister ON cart.username = dbregister.username WHERE (cart.Status = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</asp:Content>

