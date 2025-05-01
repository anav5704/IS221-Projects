Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        lblVerify.Text = "The following details have been saved to our database <br />"
        lblVerify.Text &= "Your name: " & txtName.Text & "<br/>"
        lblVerify.Text &= "Your Student ID: " & txtStudentID.Text & "<br/>"
        lblVerify.Text &= "Your Password: " & txtPassword.Text & "<br/>"
        lblVerify.Text &= "You are registered in the " &
        ddlProgram.SelectedValue & " Program.<br/>"
        lblVerify.Text &= "Your major areas of study are:<ul>"
        For Each item As ListItem In cblMajors.Items
            If item.Selected Then
                lblVerify.Text &= "<li>" & item.Text & "</li>"
            End If
        Next
        lblVerify.Text &= "</ul>"

        adsStudents.InsertParameters("Stu_ID").DefaultValue = txtStudentID.Text
        adsStudents.InsertParameters("Stu_Name").DefaultValue = txtName.Text
        adsStudents.InsertParameters("Stu_Passwd").DefaultValue = txtPassword.Text
        adsStudents.InsertParameters("Stu_Prog").DefaultValue = ddlProgram.SelectedValue
        adsStudents.Insert()
        adsMajors.InsertParameters("Stu_ID").DefaultValue = txtStudentID.Text
        For Each item As ListItem In cblMajors.Items
            If item.Selected Then
                adsMajors.InsertParameters("Stu_Majors").DefaultValue = item.Value
                adsMajors.Insert()
            End If
        Next
    End Sub

    Protected Sub cblMajors_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub adsStudents_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub ddlProgram_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProgram.SelectedIndexChanged

    End Sub
End Class