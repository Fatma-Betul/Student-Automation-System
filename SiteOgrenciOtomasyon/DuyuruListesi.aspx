<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="SiteOgrenciOtomasyon.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<table class="table table-bordered table-hover">
<tr>
   <th scope="col">ID</th>
   <th scope="col">BAŞLIK</th>
   <th scope="col">İÇERİK</th>
   <th scope="col">ÖĞRETMEN</th>
   <th scope="col">İŞLEMLER</th>
</tr>
  <tbody>

  <asp:Repeater ID="Repeater1" runat="server">
   <ItemTemplate>
<tr>
   <td><%#Eval("DUYURUID")%></td>
   <td><%#Eval("DUYURUBASLIK")%></td>
   <td><%#Eval("DUYURUICERIK")%></td>
   <td><%#Eval("DUYURUOGRT")%></td>
  
<td>
<asp:HyperLink NavigateUrl='<%# "DuyuruSil.Aspx?DuyuruID="+ Eval ("DuyuruID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
<asp:HyperLink NavigateUrl='<%# "DuyuruGuncelle.Aspx?DuyuruID="+ Eval ("DuyuruID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
<%--<asp:HyperLink NavigaterUr1='<%# "~/DuyuruSil.Aspx?DuyuruID="+ Eval("DuyuruID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
<asp:HyperLink NavigaterUr1='<%# "~/DuyuruGuncelle.Aspx?DuyuruID="+ Eval("DuyuruID")%>' ID="HyperLink2"  runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>--%>
</td>
</tr>
</ItemTemplate>
</asp:Repeater>
</tbody>
</table>

</asp:Content>
