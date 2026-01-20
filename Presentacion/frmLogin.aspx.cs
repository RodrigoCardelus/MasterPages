using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class frmLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnIniciarSesion_Click(object sender, EventArgs e)
    {
        try
        {
            int numFunc = 0;
            if (!int.TryParse(txtNumFunc.Text, out numFunc))
                throw new Exception("El número de funcionario no tiene el formato correcto.");
            string pass = txtPass.Text;
            Empleado emp = LogicaEmpleados.Login(numFunc, pass);
            if (emp == null)
                lblMensaje.Text = "El usario o la contraseña no son válidas.";
            else
            {
                Session["user"] = emp;
                if (emp is Jornalero)
                    Response.Redirect("frmElegirTarea.aspx");
                if (emp is Asalariado)
                    Response.Redirect("frmMostrarSueldo.aspx");
            }
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
}