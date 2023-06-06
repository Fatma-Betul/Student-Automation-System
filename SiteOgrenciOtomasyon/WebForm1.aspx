<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SiteOgrenciOtomasyon.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table class="table table-bordered table-hover">   
    <tr>
        <th scope="col">ID</th>
        <th scope="col">NUMARA</th>
        <th scope="col">AD</th>
        <th scope="col">SOYAD</th>
        <th scope="col">TELEFON</th>
        <th scope="col">MAİL</th>
        <th scope="col">ŞİFRE</th>
        <th scope="col">İŞLEMLER</th>
    </tr>

  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>

              <tr>
                  <td><%#Eval("OGRID")%></td>
                  <td><%#Eval("NUMARA")%></td>
                  <td><%#Eval("OGRAD")%></td>
                  <td><%#Eval("OGRSOYAD")%></td>
                  <td><%#Eval("OGRTELEFON")%></td>
                  <td><%#Eval("OGRMAIL")%></td>
                  <td><%#Eval("OGRSIFRE")%></td>
                  <td>
                      <asp:HyperLink NavigateUrl='<%# "OgrenciSil.Aspx?OGRID="+ Eval ("OGRID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                      <asp:HyperLink NavigateUrl='<%# "OgrenciGuncelle.Aspx?OGRID="+ Eval ("OGRID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>
                  
              </tr>

          </ItemTemplate>

      </asp:Repeater>

  </tbody>

</table>
    </p>
</asp:Content>

<%--<th scope="row">1</th>--%>