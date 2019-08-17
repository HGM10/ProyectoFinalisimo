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
       
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= reyno_fungi; Integrated Security= true");

            try
            {
               SqlCommand cmd = new SqlCommand("select nombre as Nombre, forma as Forma, color as Color, tipo_clasificacion as Clasificacion from Hongo inner join clasificacion on fk_clasificacion=id_clasificacion where nombre= @nombre ", con);
               cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBox1.Text;
                con.Open();
                SqlDataAdapter dr = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dr.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}