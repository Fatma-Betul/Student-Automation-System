<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotu.aspx.cs" Inherits="SiteOgrenciOtomasyon.OgrenciNotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
<tr>
  


  <th scope="col">DERS ADI</th>
  <th scope="col">VİZE</th>
  <th scope="col">FİNAL</th>
  <th scope="col">BÜTÜNLEME</th>
  <th scope="col">ORTALAMA</th>
  <th scope="col">DURUM</th>

</tr>


<tbody>

<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<tr>


  <td><%#Eval("DERSAD")%></td>
  <td><%#Eval("VIZE")%></td>
  <td><%#Eval("FINAL")%></td>
  <td><%#Eval("BUTUNLEME")%></td>
  <td><%#Eval("ORTALAMA")%></td>
  <td><%#Eval("DURUM")%></td>
</tr>
</ItemTemplate>
</asp:Repeater>
</tbody>
</table>
</asp:Content>
