using System.Data.SqlClient;

namespace Proyecto_Topo
{
    internal class SqlDataSource1
    {
        private SqlCommand cmd;

        public SqlDataSource1(SqlCommand cmd)
        {
            this.cmd = cmd;
        }
    }
}