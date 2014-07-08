<%@ Page Title="" Language="C#" MasterPageFile="~/app/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="DemoWebForms1.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Se Crea adaptador de conexion para la BD.mdf de aplicación-->
   
    <asp:SqlDataSource ID="Usuario" runat="server"
        ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\DB.mdf"
        ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT [id],[username],[password],[password],[nombre],[apellido] 
        FROM [Usuario]">
    </asp:SqlDataSource>
    <!--Se Crea Gridview para mostrar la consulta realizada a la tabla Usuario-->
  
    <h1>
        <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id"
        DataSourceID="Usuario">
        
        <Columns>
            <asp:BoundField DataField="id"       HeaderText="Identificador"/>
            <asp:BoundField DataField="nombre"   HeaderText="Nombre"/>
            <asp:BoundField DataField="apellido" HeaderText="Apellido"/>
            <asp:BoundField DataField="username" HeaderText="Usuario"/>
            <asp:BoundField DataField="password" HeaderText="Password"/>

        </Columns>
    </asp:GridView>
   </center>
   </h1>
        
</asp:Content>
