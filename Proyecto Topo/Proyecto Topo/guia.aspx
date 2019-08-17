<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="guia.aspx.cs" Inherits="Proyecto_Topo.guia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />


    <div class="row">

        <div class="col-10">   
           <p class="text-dark">uygdkfkasfhaskdjfhaishdfuwheufisjdnlksadcsd</p>
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
                    <p > <asp:HyperLink ID="HyperLink1" runat="server" Text="mykolibri" NavigateUrl="https://www.mykolibri.de//"></asp:HyperLink>
                    </p>
                     <p> <asp:HyperLink ID="HyperLink2" runat="server" Text="edizionicandusso" NavigateUrl="http://www.edizionicandusso.it/"></asp:HyperLink>
                    </p>
                    <p> <asp:HyperLink ID="HyperLink3" runat="server" Text="koeltz" NavigateUrl="https://koeltz.com/en/"></asp:HyperLink>
                    </p>
             </div>
            </div>
    </div>

</asp:Content>


