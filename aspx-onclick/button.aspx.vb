 Public Class Button
    Protected Sub Button1_Click (...) Handles btnRegister.Click 
        lblVerify.Text &= txtName.Text
        lblVerify.Text &= txtStudentId.Text
        lblVerify.Text &= txtPassword.Text
        lblVerify.Text &= ddlProgram.SelectedValue

        For Each item As ListItem in cblMajors.Items
            If item.Selected Then
                lblVerify.Text &= item.Text
            End If
    End Sub
 End Class