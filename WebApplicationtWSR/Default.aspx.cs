using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationtWSR.Context;
using WebApplicationtWSR.Model;

namespace WebApplicationtWSR
{
    public partial class _Default : Page
    {
        // Метод загрузки страницы
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        //Добавление данных
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            User user = new User();
            if (user.ID == 0)
            {
                user.FirstName = TextBoxFirstName.Text;
                user.LastName = TextBoxLastName.Text;
                user.Patronymic = TextBoxPatronymic.Text;
                user.Phone = TextBoxPhone.Text;
                user.Mail = TextBoxMail.Text;
                user.DateOfBirth = DateTime.Parse(TextBoxDateOfBirth.Text);
                user.PassportData = TextBoxPassportData.Text;
                user.Login = TextBoxLogin.Text;
                user.Password = TextBoxPassword.Text;
                user.Purpose = TextBoxPurpose.Text;
                DataApp.db.User.Add(user);
            }
            DataApp.db.SaveChanges();
          
        }
        // Метод отображения списка
        protected void BindGridView()
        {
            using (var db = new WsrTestEntities())
            {
                var data = db.User.ToList();
                GridViewData.DataSource = data;
                GridViewData.DataBind();
            }
        }
        // Метод редактирования данных
        protected void GridViewData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewData.EditIndex = e.NewEditIndex;
            BindGridView();
        }
    }
}