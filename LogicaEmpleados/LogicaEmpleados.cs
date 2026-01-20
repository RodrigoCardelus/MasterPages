using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaEmpleados
    {
        public static Empleado Login(int numeroFunc, string pass)
        {
            Empleado resp = PersistenciaAsalariado.Login(numeroFunc, pass);
            if (resp == null)
                resp = PersistenciaJornalero.Login(numeroFunc, pass);
            return resp;
        }
    }
}
