<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="Proyecto_Topo.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-12" style="text-align:center;">
                <br />
                <h3>Seleccione el indice de la Clasificacion segun al que pertenece su hongo</h3>

                <br />
                <asp:GridView ID="GridView1" CssClass="table table-dark" style="margin-right: 20px; margin-bottom: 60px;" runat="server" AutoGenerateColumns="False" DataKeyNames="id_clasificacion" DataSourceID="SqlDataSource1">
                    <Columns >
                        <asp:BoundField DataField="id_clasificacion" HeaderText="id_clasificacion" ReadOnly="True" SortExpression="id_clasificacion" />
                        <asp:BoundField DataField="tipo_clasificacion" HeaderText="tipo_clasificacion" SortExpression="tipo_clasificacion" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reyno_fungiConnectionString %>" SelectCommand="SELECT * FROM [clasificacion]"></asp:SqlDataSource>

            </div>
        </div>
        <div class="form-group" style="margin: 0px 60px 0px 60px;">
            <%--en esta parte declaro que pertenezcan a una clase formulario--%>
            <div class="row">
                <div class="col-6">

                <asp:Label ID="Label1" runat="server" Text="Nombre del Hongo"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" CssClass="form-control" type="text" runat="server"></asp:TextBox>
                <br />
                <br />
                </div>
                <div class="col-6">
                <asp:Label ID="Label2" runat="server" Text="Forma"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" CssClass="form-control" type="text"  runat="server"></asp:TextBox>
                <br />
                <br />
                </div>
           </div>
            <div class="row">
                <div class="col-6">
                <asp:Label ID="Label3" runat="server" Text="Color"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" CssClass="form-control" type="text"  runat="server"></asp:TextBox>
                <br />
                </div>
                <br />
                <div class="col-6">
                <asp:Label ID="Label4" runat="server" Text="ID de Clasificacion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" CssClass="form-control" type="text"  runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-4" style="text-align: center;">
                
                <asp:Button ID="Button1" CssClass="btn btn-dark" style="font-size:15px; margin:10px 10px 10px 10px; padding: 20px; align-self: center;" runat="server" Text="Insertar" OnClick="Button1_Click" />
            </div>
            <div class="col-4" style="text-align: center;">
                <asp:Button ID="Button2" CssClass="btn btn-dark" style="font-size:15px; margin:10px 10px 10px 10px; padding: 20px; align-self: center;" runat="server" Text="Modificar" OnClick="Button2_Click" />
            </div>
            <div class="col-4" style="text-align: center;">
                <asp:Button ID="Button3" CssClass="btn btn-dark" style="font-size:15px; margin:10px 10px 10px 10px; padding: 20px; align-self: center;" runat="server" Text="Eliminar" OnClick="Button3_Click" />
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <asp:GridView ID="GridView2" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="id_hongo" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="id_hongo" HeaderText="id_hongo" InsertVisible="False" ReadOnly="True" SortExpression="id_hongo" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="forma" HeaderText="forma" SortExpression="forma" />
                        <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                        <asp:BoundField DataField="fk_clasificacion" HeaderText="fk_clasificacion" SortExpression="fk_clasificacion" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:reyno_fungiConnectionString %>" SelectCommand="SELECT Hongo.* FROM Hongo" UpdateCommand="UPDATE Hongo SET nombre = @nom, forma = @f, color = @c, fk_clasificacion = @fk where (id_hongo = @id)">
                    <UpdateParameters>
                        <asp:Parameter Name="nom" />
                        <asp:Parameter Name="f" />
                        <asp:Parameter Name="c" />
                        <asp:Parameter Name="fk" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>



</asp:Content>
