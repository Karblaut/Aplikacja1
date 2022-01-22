<%@ Page Title="dodaj rodzaj projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_rodzaj.aspx.cs" Inherits="Aplikacja1.dodaj_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [rodzaj] WHERE [Id_rodzaj] = @Id_rodzaj" InsertCommand="INSERT INTO [rodzaj] ([nazwa_rodzaj]) VALUES (@nazwa_rodzaj)" SelectCommand="SELECT * FROM [rodzaj]" UpdateCommand="UPDATE [rodzaj] SET [nazwa_rodzaj] = @nazwa_rodzaj WHERE [Id_rodzaj] = @Id_rodzaj" OnSelecting="SqlDataSource1_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="Id_rodzaj" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="nazwa_rodzaj" PropertyName="Text" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nazwa_rodzaj" Type="String" />
        <asp:Parameter Name="Id_rodzaj" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
rodzaj projektu&nbsp;
<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="height: 25px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wprowadź rodzaj projektu!!" Font-Bold="True" ForeColor="#663300">*</asp:RequiredFieldValidator>
    <p></p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#990000" DisplayMode="List" />
<asp:Label ID="Label1" runat="server" ForeColor="#990000" Text="Label"></asp:Label>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="zapisz" Height="43px" OnClick="Button1_Click" Width="90px" />
</asp:Content>
