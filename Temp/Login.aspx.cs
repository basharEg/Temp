using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Temp.Models;

namespace Temp
{
    public partial class Login : System.Web.UI.Page
    {
        private dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
               
            //}
            //Session["Time"] = DateTime.Now.Second;
            //lblDate.Text = Session["Time"].ToString();
        }

        protected void btnx_OnClick(object sender, EventArgs e)
        {

            if (db.Students.Any(x => x.StudentID.Equals(txtUser.Text)))
            {
                Student st = db.Students.First(x => x.StudentID == int.Parse(txtUser.Text));
                if (st.Password.Equals(txtPassword.Text))
                {
                    Session["Student"] = st;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMessage.Text = "<i class='fa fa-ban' aria-hidden='true'></i>" + " Login Failed";
                }
            }
            else
            {
                lblMessage.Text = "<i class='fa fa-ban' aria-hidden='true'></i>" + " Login Failed";
            }
        }

        protected void label_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}