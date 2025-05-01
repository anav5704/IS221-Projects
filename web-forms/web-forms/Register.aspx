<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="web_forms.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student Registration Form</div>
        <asp:Panel ID="Panel1" runat="server">
            <br />
            Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            Student ID:<asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            Programme:<asp:DropDownList ID="ddlProgram" runat="server">
                <asp:ListItem>BSc</asp:ListItem>
                <asp:ListItem>BA</asp:ListItem>
                <asp:ListItem>BComm</asp:ListItem>
                <asp:ListItem>BEng</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Majors:<asp:CheckBoxList ID="cblMajors" runat="server" RepeatColumns="3">
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
        </asp:Panel>
    </form>
</body>
</html>
