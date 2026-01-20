using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;

public partial class PMJornaleros : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("frmLogin.aspx");
        if (!(Session["user"] is Jornalero))
            Response.Redirect("frmError.aspx");
    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("frmLogin.aspx");
    }
}
