Imports oosln.CrudClass
Imports oosln.mod_cadenas

Public Class Form1
    Dim sql As String
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        sql = TextBox1.Text
        Dim crud As New CrudClass()
        DataGridView1.DataSource = crud.exe_query(sql)
        cadena = "hola esta es ña cade na que hay que convertir"
        MsgBox(mod_cadenas.converir(cadena))
    End Sub
End Class
