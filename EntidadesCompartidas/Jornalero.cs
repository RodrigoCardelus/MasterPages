using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Jornalero : Empleado
    {
        public int CantidadHoras { get; set; }
        public int PrecioHora { get; set; }
    }
}
