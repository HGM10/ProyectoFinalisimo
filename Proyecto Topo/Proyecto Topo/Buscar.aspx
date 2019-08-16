<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="Proyecto_Topo.Buscar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid diseno">

        <div class="row">
            <div class="col-3"><h1>Escriba el tipo de Hongo que necesita:</h1></div>
            <div class="col-6">
            <div class="form-group">
                <label for="busqueda"></label>
                <asp:TextBox ID="TextBox1" runat="server" Type="text" CssClass="form-control" placeholder="Nombre de Hongo" ></asp:TextBox>
            </div>
            </div>
            <div class="col-3"></div>
        </div>
        <div class="row">
            <div class="col-5"></div>
            <div class="col-2"> 
                <asp:Button ID="Button1" runat="server" Text="Buscar" type="button" CssClass="btn btn-primary btn-block" Style=" font-size: 15px;" OnClick="Button1_Click"></asp:Button>
            </div>
            <div class="col-5"></div>
       <%-- <div class="row">
        <asp:GridView CssClass="table table-dark" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_clasificacion" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_clasificacion" HeaderText="id_clasificacion" ReadOnly="True" SortExpression="id_clasificacion" />
                <asp:BoundField DataField="tipo_clasificacion" HeaderText="tipo_clasificacion" SortExpression="tipo_clasificacion" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reyno_fungiConnectionString %>" SelectCommand="SELECT * FROM [clasificacion]"></asp:SqlDataSource>
        </div>--%>

        </div>
    </div>

</asp:Content>

