<%@ Page Title="edytuj rodzaj projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_rodzaj.aspx.cs" Inherits="Aplikacja1.edytuj_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [rodzaj] WHERE [Id_rodzaj] = @Id_rodzaj" InsertCommand="INSERT INTO [rodzaj] ([nazwa_rodzaj]) VALUES (@nazwa_rodzaj)" SelectCommand="SELECT * FROM [rodzaj]" UpdateCommand="UPDATE [rodzaj] SET [nazwa_rodzaj] = @nazwa_rodzaj WHERE [Id_rodzaj] = @Id_rodzaj">
    <DeleteParameters>
        <asp:Parameter Name="Id_rodzaj" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nazwa_rodzaj" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nazwa_rodzaj" Type="String" />
        <asp:Parameter Name="Id_rodzaj" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_rodzaj" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id_rodzaj" HeaderText="Id_rodzaj" InsertVisible="False" ReadOnly="True" SortExpression="Id_rodzaj" Visible="False" />
        <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
</asp:Content>
