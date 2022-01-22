<%@ Page Title="dodaj status projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_status.aspx.cs" Inherits="Aplikacja1.dodaj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [status] WHERE [id_status] = @id_status" InsertCommand="INSERT INTO [status] ([nazwa_status]) VALUES (@nazwa_status)" SelectCommand="SELECT * FROM [status]" UpdateCommand="UPDATE [status] SET [nazwa_status] = @nazwa_status WHERE [id_status] = @id_status">
            <DeleteParameters>
                <asp:Parameter Name="id_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nazwa_status" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa_status" Type="String" />
                <asp:Parameter Name="id_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    status projektu&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wprowadź status projektu!!" Font-Bold="True" ForeColor="#663300">*</asp:RequiredFieldValidator>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#990000" DisplayMode="List" />
    <br />
<asp:Label ID="Label1" runat="server" ForeColor="#CC3300" Text="Label"></asp:Label>
<br />
<br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="dodaj status" />
</asp:Content>
