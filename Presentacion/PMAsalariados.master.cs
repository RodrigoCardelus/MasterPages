using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;

public partial class PMAsalariados : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["user"] == null)
                Response.Redirect("frmLogin.aspx");
            if (!(Session["user"] is Asalariado))
                Response.Redirect("frmError.aspx");
            lblDatos.Text = "Bienvenido " + ((Asalariado)Session["user"]).Nombre;
        }
        catch (Exception ex)
        { lblDatos.Text = ex.Message; }

    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {

        Session["user"] = null;
        Response.Redirect("frmLogin.aspx");
    }
}
