<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="guia.aspx.cs" Inherits="Proyecto_Topo.guia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

    <div class="row">

        <div class="col-10">   
            <section class="container">
           <p class="mt-5  text-justify text-dark p-4">¿Eres un aficionado a las setas y hongos con experiencia? ¿Quieres ampliar conocimientos de las 
               setas y hongos comestibles que aparecen en una determinada zona? 
               ¿Te gusta ver setas comestibles, fotos e información? Sin duda alguna esta paginas
                recoge todos aquellos títulos de libros de setas que pueden ayudarte.
           </p>
            </section>
        </div>
        <div class="col-2">
             <div class="jumbotron">
                   <p class="lead">
                       <div>
                           <p class="text-dark">
                               Para saber mas sobre hongos visita estas paginas
                           </p>
                       </div> 
                   </p>
                   <hr class="my-4"> 
                    <a > <asp:HyperLink ID="HyperLink1" runat="server" Text="mykolibri" NavigateUrl="https://www.mykolibri.de//"></asp:HyperLink>
                    </a>
                     <a> <asp:HyperLink ID="HyperLink2" runat="server" Text="edizionicandusso" NavigateUrl="http://www.edizionicandusso.it/"></asp:HyperLink>
                    </a>
                    <a> <asp:HyperLink ID="HyperLink3" runat="server" Text="koeltz" NavigateUrl="https://koeltz.com/en/"></asp:HyperLink>
                    </a>
             </div>
            </div>
    </div>

</asp:Content>


