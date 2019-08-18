using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_Topo
{
    public partial class Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= reyno_fungi; Integrated Security= true");

            SqlCommand cmd = new SqlCommand("insert into hongo(nombre, forma, color, fk_clasificacion) values(@n, @f, @c, @fk)", con);
            cmd.Parameters.Add("@n", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@f", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@c", SqlDbType.VarChar).Value = TextBox3.Text;
            cmd.Parameters.Add("@fk", SqlDbType.Int).Value = Convert.ToInt32(TextBox4.Text);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}