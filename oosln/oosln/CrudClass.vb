Imports MySql.Data.MySqlClient

Public Class CrudClass
    'variables para la conexion 
    Public host As String = ""
    Public type_engine As String = "mysql"
    Protected database As String = "jquery"
    Private user As String = "root"
    Private pass As String = "172291972_5a"
    Protected query As String
    Protected dt As DataTable
    'variable del tipo Mysql
    Dim da As MySqlDataAdapter
    Dim cmd As MySqlCommand
    Dim conn As MySqlConnection

    Public Sub conectar()
        conn = New MySqlConnection("server=" + host + ";user=" + user + _
                                    ";pwd=" + pass + ";database=" + database)
        Try
            conn.Open()
        Catch ex As MySqlException
            MsgBox("Error... " + ex.Message, MsgBoxStyle.Critical, ex.Number)
        End Try
    End Sub

    Protected Sub desconectar()
        conn.Close()
    End Sub

    Public Function exe_query(ByVal sql As String)
        'conectamos al server
        conectar()
        'instanciamos los objetos
        dt = New DataTable()
        cmd = New MySqlCommand()
        da = New MySqlDataAdapter()
        query = sql
        Try
            With cmd
                .CommandText = query
                .Connection = conn
            End With
            With da
                .SelectCommand = cmd
                .Fill(dt)
            End With

        Catch ex As MySqlException
            MsgBox("Error... " + ex.Message, MsgBoxStyle.Critical, ex.Number)
        Finally
            desconectar()
        End Try
        Return dt
    End Function
End Class
