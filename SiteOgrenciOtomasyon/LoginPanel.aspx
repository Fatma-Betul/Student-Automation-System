<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="SiteOgrenciOtomasyon.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href = "Dosyalar1/bootstrap.min.css" rel = "stylesheet"/>
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="width :700px; margin:auto">
             <h2  style="margin:auto; text-align: center;">Ögrenci Otomasyon Sistemi Giriş Ekranı</h2>
             <br/><br/><br/>
             <div style="margin: auto; text-align: center; ">
             <asp:Image ID = "Image1" runat = "server" Height ="200px" width ="200px" ImageUrl="https://media.licdn.com/dms/image/C4D03AQEN1mJNufn7Xg/profile-displayphoto-shrink_400_400/0/1640292271872?e=1677110400&v=beta&t=LxfyAte5UbitlLzHmDbMiEf8yXDJm0RkZOCrbazrVEs"/>
             </div>
             <br/><br/>
         
            <div>3
                <div>
               <asp:Label for = "TxtNumara" runat = "server">Kullanıcı Adı</asp:Label>
               <asp:TextBox ID = "TxtNumara" runat = "server" CssClass = "form-control" placeholder="Öğrenci Numaranızı girin"></asp:TextBox>
           </div>
           <br/>
                <div>
               <asp:Label for = "TxtSifre" runat = "server">Şifre</asp:Label>
               <asp:TextBox ID = "TxtSifre" runat = "server" CssClass = "form-control" placeholder="Password"></asp:TextBox>
           </div>
           <br/>
                <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass = "btn btn-info" width ="700px" OnClick="Button1_Click1" />
            </div>
        </div>
    </form>
</body>
</html>
