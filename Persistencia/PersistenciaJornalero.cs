using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using System.Data.SqlClient;
 
namespace Persistencia
{
    public class PersistenciaJornalero
    {
        public static Jornalero Login(int numeroFunc, string pass)
        {
            Jornalero resp = null;
            SqlConnection cnn = new SqlConnection("server=.;database=empresa;trusted_connection=true");
            SqlCommand cmd = new SqlCommand("sp_Login_Jornalero", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@numFunc",  numeroFunc);
            cmd.Parameters.AddWithValue("@pass", pass);
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            if (lector.Read())
            {
                resp = new Jornalero();
                resp.NumeroFunc = numeroFunc;
                resp.Pass = pass;
                resp.PrecioHora = (int)lector[3];
                resp.CantidadHoras = (int)lector[2];
                resp.Nombre = (string)lector[4];
            }
            return resp;
        }
    }
}
