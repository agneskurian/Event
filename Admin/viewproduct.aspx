<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Admin_viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Productid" DataSourceID="SqlDataSource1" ForeColor="#FFFFCC">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Productid" HeaderText="Productid" InsertVisible="False" ReadOnly="True" SortExpression="Productid" />
            <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" DeleteCommand="DELETE FROM [Add_product] WHERE [Productid] = @Productid" InsertCommand="INSERT INTO [Add_product] ([Productname], [Description], [Availability], [Cost], [Image]) VALUES (@Productname, @Description, @Availability, @Cost, @Image)" SelectCommand="SELECT * FROM [Add_product]" UpdateCommand="UPDATE [Add_product] SET [Productname] = @Productname, [Description] = @Description, [Availability] = @Availability, [Cost] = @Cost, [Image] = @Image WHERE [Productid] = @Productid">
        <DeleteParameters>
            <asp:Parameter Name="Productid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Productname" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Availability" Type="Decimal" />
            <asp:Parameter Name="Cost" Type="Decimal" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Productname" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Availability" Type="Decimal" />
            <asp:Parameter Name="Cost" Type="Decimal" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Productid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

