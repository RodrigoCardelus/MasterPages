using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using System.Data.SqlClient;

namespace Persistencia
{
    public class PersistenciaAsalariado
    {
        public static Asalariado Login(int numeroFunc, string pass)
        {
            Asalariado resp = null;
            SqlConnection cnn = new SqlConnection("server=.;database=empresa;trusted_connection=true");
            SqlCommand cmd = new SqlCommand("sp_Login_Asalariado", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@numFunc", numeroFunc);
            cmd.Parameters.AddWithValue("@pass", pass);
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            if (lector.Read())
            {
                resp = new Asalariado();
                resp.NumeroFunc = numeroFunc;
                resp.Pass = pass;
                resp.Sueldo = (int)lector[2];
                resp.Nombre = (string)lector[3];
            }
            return resp;
        }
    }
}
