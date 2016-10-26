using System;
using Temp.Models;

namespace Temp
{
    public partial class Registration : System.Web.UI.Page
    {
        private readonly dbDataContext _db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_OnClick(object sender, EventArgs e)
        {
            var stu = new Student
            {
                StudentID =int.Parse(StuId.Text),
                FirstName = StuFname.Text,
                LastName = StuLname.Text,
                Email = StuEmail.Text,
                Password = StuPass.Text,
                Title = StuTitle.Text
            };

            _db.Students.InsertOnSubmit(stu);

            try
            {
                _db.SubmitChanges();
            }
            catch (Exception )
            {
                Console.WriteLine("");
              
                _db.SubmitChanges();
            }

        }
    }
}