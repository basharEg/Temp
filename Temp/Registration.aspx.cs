using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Temp.Models;

namespace Temp
{
    public partial class Registration : System.Web.UI.Page
    {
        private dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_OnClick(object sender, EventArgs e)
        {
            Student stu = new Student
            {
                StudentID =Int32.Parse(StuId.Text),
                FirstName = StuFname.Text,
                LastName = StuLname.Text,
                Email = StuEmail.Text,
                Password = StuPass.Text,
                Title = StuTitle.Text
            };

            db.Students.InsertOnSubmit(stu);

            try
            {
                db.SubmitChanges();
            }
            catch (Exception )
            {
                Console.WriteLine("");
              
                db.SubmitChanges();
            }

        }
    }
}