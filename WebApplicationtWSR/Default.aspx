<%@ Page  Language="C#"  AutoEventWireup="true" CodeFile="Default.aspx.cs" CodeBehind="Default.aspx.cs" Inherits="WebApplicationtWSR._Default" %>

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
                        <asp:Button ID="ButtonAdd" runat="server" Text="Добавить" OnClick="ButtonAdd_Click"/></td>
                </tr>
            </table>
            <br />
            
            <asp:GridView ID="GridViewData" runat="server" DataKeyNames="ID"   AutoGenerateColumns="False" OnRowEditing="GridViewData_RowEditing" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Фамилия">
                        <ItemTemplate><%# Eval("FirstName") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Имя">
                        <ItemTemplate><%# Eval("LastName") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Отчество">
                        <ItemTemplate><%# Eval("Patronymic") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditPatronymic" runat="server" Text='<%# Bind("Patronymic") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Телефон">
                        <ItemTemplate><%# Eval("Phone") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Почта">
                        <ItemTemplate><%# Eval("Mail") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditMail" runat="server" Text='<%# Bind("Mail") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Дата рождения">
                        <ItemTemplate><%# Eval("DateOfBirth") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditDateOfBirth" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Пасспотные данные">
                        <ItemTemplate><%# Eval("PassportData") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditPassportData" runat="server" Text='<%# Bind("PassportData") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Логин">
                        <ItemTemplate><%# Eval("Login") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditLogin" runat="server" Text='<%# Bind("Login") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Пароль">
                        <ItemTemplate><%# Eval("Password") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Назначение">
                        <ItemTemplate><%# Eval("Purpose") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditPurpose" runat="server" Text='<%# Bind("Purpose") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
    
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>


