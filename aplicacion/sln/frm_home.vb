'************************************SLN***************************************************
'formulario de ingreso de datos de SLN del formulario de informes diario de consumo
'de materiales y uso de eqipos ...
'Aplicacion desarrollada unicamente para SLN Sólidos y lodos Nacionales
'Todos los derechos reservados aplicacion de us exlusivo de la compañia SLN
'aplicaicion propiedad de SLN
'************************************SLN***************************************************
Imports MySql.Data.MySqlClient

Public Class frm_home
    'Definimos variables Globales para la conexion e ingreso de informacion
    Dim conn As MySqlConnection
    Dim da_sln As MySqlDataAdapter
    Dim mi_comando As MySqlCommand
    Dim cad_consulta As String
    Dim dt_consultas As New DataTable
    '///////////////////////////////////Funciones de este formlario////////////////////////////////
    Private Sub consulta()
        dt_consultas.Dispose()
        dt_consultas = New DataTable


    End Sub

    '/////////////////////////////////FIN Funciones de este formlario////////////////////////////////

    Private opcion_fecha As Integer 'para poner la fecha en cada uno de las cajas de texto

    Private Sub frm_home_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
    '///////////////////////********************Facilidades inserrcion de datos*********************/////////////////

    'acciones para cuando el formulario se cree de nuevo
    Private Sub btn_nuevo_form_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_nuevo_form.Click
        lbl_fecha_sistema.Text = Now.ToString("yyyy/MM/dd hh:mm:ss")
        txt_no_revision_informe.Text = "0"
    End Sub


    'para poner la opcion de mostrar la fecha en cada uno de los texbox
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        txt_fecha_emision_informe.Text = Now.ToString("yyyy/MM/dd hh:mm:ss")
        txt_fecha_ultima_revision.Text = Now.ToString("yyyy/MM/dd hh:mm:ss")
    End Sub
    Private Sub txt_fecha_emision_informe_MouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles txt_fecha_emision_informe.MouseClick
        opcion_fecha = 1
    End Sub

    Private Sub txt_fecha_ultima_revision_MouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles txt_fecha_ultima_revision.MouseClick
        opcion_fecha = 2
    End Sub

    Private Sub Calendario_DateChanged(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DateRangeEventArgs) Handles Calendario.DateChanged
        Select Case opcion_fecha
            Case Is = 1
                txt_fecha_emision_informe.Text = Calendario.SelectionRange.Start.ToString("yyyy/MM/dd hh:mm:ss")
            Case Is = 2
                txt_fecha_ultima_revision.Text = Calendario.SelectionRange.Start.ToString("yyyy/MM/dd hh:mm:ss")
            Case Else
                MsgBox("De un click sobre una de las cajas grises y seleciones la fecha", MsgBoxStyle.Information, AcceptButton)
        End Select
    End Sub

    Private Sub cbx_cat_rubro_costos_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cbx_cat_rubro_costos.SelectedIndexChanged
        'tomamosla categoria de la base de datos y luego de esto seleccionamos las subcategoria de la base dependiendo lo que nos arrojo el resultado
    End Sub
End Class
