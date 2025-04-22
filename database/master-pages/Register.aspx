<%@ Page Title="Student Registration Form" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/University.Master" CodeBehind="Register.aspx.vb" Inherits="master_pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentArea" runat="server">
     <h2>Student Registration Form</h2>
 <asp:Panel ID="Panel1" runat="server">
     <br />
     Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*Required</asp:RequiredFieldValidator>
     <br />
     <br />
     Student ID:<asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="rfvStudentID" runat="server" ControlToValidate="txtStudentID" ErrorMessage="RequiredFieldValidator">*Required</asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="revStudentID" runat="server" ControlToValidate="txtStudentID" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[Ss]{1}[0-9]{8}$">*Incorrect ID</asp:RegularExpressionValidator>
     <br />
     <br />
     Password:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
     <br />
     <br />
     Programme:<asp:DropDownList ID="ddlProgram" runat="server" style="width: 109px">
         <asp:ListItem>BSc</asp:ListItem>
         <asp:ListItem>BA</asp:ListItem>
         <asp:ListItem>BComm</asp:ListItem>
         <asp:ListItem>BEng</asp:ListItem>
     </asp:DropDownList>
     <br />
     <asp:XmlDataSource ID="xdsMajors" runat="server" DataFile="~/App_Data/Majors.xml"></asp:XmlDataSource>
     <br />
     Majors:<asp:CheckBoxList ID="cblMajors" runat="server" RepeatColumns="3" DataSourceID="xdsMajors" DataTextField="name">
         <asp:ListItem>Computing Science</asp:ListItem>
         <asp:ListItem> Information Systems</asp:ListItem>
         <asp:ListItem>Accounting</asp:ListItem>
         <asp:ListItem>Economics</asp:ListItem>
         <asp:ListItem>Mathematics</asp:ListItem>
         <asp:ListItem>Electrical Engineering</asp:ListItem>
         <asp:ListItem>Management Studies</asp:ListItem>
     </asp:CheckBoxList>
     <br />
     <asp:Button ID="btnRegister" runat="server" Text="Register Me" />
     <br />
     <br />
     <asp:Label ID="lblVerify" runat="server"></asp:Label>
     <asp:AccessDataSource ID="adsStudents" runat="server" DataFile="~/App_Data/Students.accdb" DeleteCommand="DELETE FROM [Student] WHERE (([Stu_ID] = ?) OR ([Stu_ID] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Student] ([Stu_ID], [Stu_Name], [Stu_Passwd], [Stu_Prog]) VALUES (?, ?, ?, ?)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Stu_Name] = ?, [Stu_Passwd] = ?, [Stu_Prog] = ? WHERE (([Stu_ID] = ?) OR ([Stu_ID] IS NULL AND ? IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="Stu_ID" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Stu_ID" Type="String" />
             <asp:Parameter Name="Stu_Name" Type="String" />
             <asp:Parameter Name="Stu_Passwd" Type="String" />
             <asp:Parameter Name="Stu_Prog" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Stu_Name" Type="String" />
             <asp:Parameter Name="Stu_Passwd" Type="String" />
             <asp:Parameter Name="Stu_Prog" Type="String" />
             <asp:Parameter Name="Stu_ID" Type="String" />
         </UpdateParameters>
     </asp:AccessDataSource>
 </asp:Panel>
     <asp:AccessDataSource ID="adsMajors" runat="server" DataFile="~/App_Data/Students.accdb" DeleteCommand="DELETE FROM [StuMajors] WHERE (([Stu_Id] = ?) OR ([Stu_Id] IS NULL AND ? IS NULL)) AND (([Stu_Majors] = ?) OR ([Stu_Majors] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [StuMajors] ([Stu_Id], [Stu_Majors]) VALUES (?, ?)" SelectCommand="SELECT * FROM [StuMajors]">
         <DeleteParameters>
             <asp:Parameter Name="Stu_Id" Type="String" />
             <asp:Parameter Name="Stu_Majors" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Stu_Id" Type="String" />
             <asp:Parameter Name="Stu_Majors" Type="String" />
         </InsertParameters>
     </asp:AccessDataSource>
</asp:Content>
