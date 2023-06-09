﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="SiteOgrenciOtomasyon.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">

<tr>
<th scope="col">DERS ID</th>
<th scope="col">DERS ADI</th>
<th scope="col">İŞLEMLER</th>

</tr>

<tbody>
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<tr>
<td><%#Eval("DERSID")%></td>
<td><%#Eval("DERSAD")%></td>
<td>
<asp:HyperLink NavigateUrl='<%# "DersSil.Aspx?DERSID="+ Eval ("DERSID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
<asp:HyperLink NavigateUrl='<%# "DersGuncelle.Aspx?DERSID="+ Eval ("DERSID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
<td>

</tr>
</ItemTemplate>
</asp:Repeater>

</tbody>
</table>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
</asp:Content>
