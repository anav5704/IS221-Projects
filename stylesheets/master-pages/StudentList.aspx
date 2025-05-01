<%@ Page Language="vb"  AutoEventWireup="false" MasterPageFile="~/MasterPages/University.Master" CodeBehind="StudentList.aspx.vb" Inherits="master_pages.WebForm4" %>
<asp:Content ID="Content2" ContentPlaceHolderID="contentArea" runat="server">
        <h2>Student List</h2>
        <asp:AccessDataSource ID="adsStudents" runat="server" DataFile="~/App_Data/Students.accdb" SelectCommand="SELECT * FROM [Student]"></asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Stu_ID" DataSourceID="adsStudents" Width="737px">
            <Columns>
                <asp:BoundField DataField="Stu_ID" HeaderText="Stu_ID" ReadOnly="True" SortExpression="Stu_ID" />
                <asp:BoundField DataField="Stu_Name" HeaderText="Stu_Name" SortExpression="Stu_Name" />
                <asp:BoundField DataField="Stu_Prog" HeaderText="Stu_Prog" SortExpression="Stu_Prog" />
            </Columns>
        </asp:GridView>
</asp:Content>
