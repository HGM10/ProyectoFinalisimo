using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Proyecto_Topo
{
    public partial class Buscar : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= reyno_fungi; Integrated Security= true");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select nombre, forma, color, tipo_clasificacion from Hongo inner join clasificacion on fk_clasificacion=id_clasificacion where nombre= @nombre ", con);
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBox1.Text;

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                

                GridView1.Visible = true;

                con.Close();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}