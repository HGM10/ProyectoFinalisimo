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
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog= reyno_fungi; Integrated Security= true");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select id_hongo, nombre, forma, color, fk_clasificacion from Hongo where id_hongo=@id",con);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = TextBox5.Text;
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox5.Text = dr.GetValue(0).ToString();
                    TextBox1.Text = dr.GetValue(1).ToString();
                    TextBox2.Text = dr.GetValue(2).ToString();
                    TextBox3.Text = dr.GetValue(3).ToString();
                    TextBox4.Text = dr.GetValue(4).ToString();
                }
                con.Close();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from hongo where nombre= @n",con);
            cmd.Parameters.Add("@n", SqlDbType.VarChar).Value = TextBox1.Text;

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update hongo set nombre = @n, forma = @f, color = @c, fk_clasificacion = @fk where id_hongo=@id", con);
            cmd.Parameters.Add("@n", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@f", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@c", SqlDbType.VarChar).Value = TextBox3.Text;
            cmd.Parameters.Add("@fk", SqlDbType.Int).Value = Convert.ToInt32(TextBox4.Text);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value =Convert.ToInt32( TextBox5.Text);

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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}