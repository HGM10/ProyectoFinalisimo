using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_Topo
{
    public class Conexion
    {
        public static void Conectar()
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= reyno_fungi; Integrated Security= true");
            con.Open();
        }
    }
}