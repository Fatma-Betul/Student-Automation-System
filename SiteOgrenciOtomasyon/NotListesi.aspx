<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="SiteOgrenciOtomasyon.NotListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
<tr>
  
  <th scope="col">ÖĞRENCİ ID</th>
  <th scope="col">AD SOYAD</th>
  <th scope="col">DERS ADI</th>
  <th scope="col">VİZE</th>
  <th scope="col">FİNAL</th>
  <th scope="col">BÜTÜNLEME</th>
  <th scope="col">ORTALAMA</th>
  <th scope="col">DURUM</th>
  <th scope="col">GÜNCELLE</th>
</tr>


<tbody>

<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<tr>
  <td><%#Eval("OGRNID")%></td>
  <td><%#Eval("OGRENCIADSOYAD")%></td>
  <td><%#Eval("DERSAD")%></td>
  <td><%#Eval("VIZE")%></td>
  <td><%#Eval("FINAL")%></td>
  <td><%#Eval("BUTUNLEME")%></td>
  <td><%#Eval("ORTALAMA")%></td>
  <td><%#Eval("DURUM")%></td>
<td>

     <asp:HyperLink NavigateUrl='<%# "NotGuncelle.Aspx?NOTID="+ Eval ("NOTID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
</td>
</tr>
</ItemTemplate>
</asp:Repeater>
</tbody>
</table>
</asp:Content>
