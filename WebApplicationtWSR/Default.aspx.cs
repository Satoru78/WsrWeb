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
            Page_Load(null, null);
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
        //Метод обновления списка
        protected void GridViewData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataApp.db.SaveChanges();
            Page_Load(null, null);
        }
        //Метод удаления записи
        protected void GridViewData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridViewData.DataKeys[e.RowIndex].Value);
            var selectedUser = DataApp.db.User.FirstOrDefault(item => item.ID == id);
            if (selectedUser != null)
            {
                DataApp.db.User.Remove(selectedUser);
                DataApp.db.SaveChanges();
            }
            BindGridView();
        }
       

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("about.aspx", true);
        }
    }
}