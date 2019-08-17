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
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= DBHongos_Nicaragua; Integrated Security= true");
                   //select nombre as Nombre, forma as Forma, color as Color, tipo_clasificacion as Clasificacion from Hongo inner join clasificacion on fk_clasificacion=id_clasificacion where nombre= @nombre
            try
            {
               SqlCommand cmd = new SqlCommand("select h.idHongo, c.nombre as Clase, o.nombre AS Orden, f.nombre AS Familia, g.nombre AS Género, h.especie as Nombre_Científico, cs.nombre AS Color_Sombrero, fs.nombre AS Forma_Sombrero, cp.nombre AS Color_Pie, fs.nombre AS Forma_Pie, h.descripcion, h.foto FROM Hongos h INNER JOIN Clase c ON h.id_clase = c.id_Clase INNER JOIN dbo.ColorPie cp ON h.id_color_pie = cp.id_Color_Pie INNER JOIN dbo.ColorSombrero cs ON h.id_color_sombrero = cs.id_Color_Sombrero INNER JOIN dbo.Familia f ON h.id_familia = f.id_Familia INNER JOIN dbo.FormaPie fp ON h.id_forma_pie = fp.id_Forma_Pie INNER JOIN dbo.FormaSombrero fs ON h.id_forma_sombrero = fs.id_Forma_Sombrero INNER JOIN dbo.Genero g ON h.id_genero = g.id_Genero INNER JOIN dbo.Orden o ON h.id_orden = o.id_Orden where h.especie like @nombre + '%' order by h.especie desc", con);
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