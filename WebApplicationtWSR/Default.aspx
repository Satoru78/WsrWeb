<%@ Page  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" CodeBehind="Default.aspx.cs" Inherits="WebApplicationtWSR._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Добавление данных</title>
    <style type="text/css">
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <table>
                <tr>
                    <td>Фамилия:</td>
                    <td>
                        <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Имя:</td>
                    <td>
                        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Отчество:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPatronymic" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Телефон:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Почта:</td>
                    <td>
                        <asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Дата рождения:</td>
                    <td>
                        <asp:TextBox ID="TextBoxDateOfBirth" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Паспортные данные:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPassportData" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Логин:</td>
                    <td>
                        <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Пароль:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Назначение:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPurpose" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonAdd" runat="server" Text="Добавить" OnClick="ButtonAdd_Click" /></td>
                </tr>
            </table>
            <br />
               
        </div>
    </form>
</body>
</html>


