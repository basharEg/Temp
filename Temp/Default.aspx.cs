using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Temp.Models;

namespace Temp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] == null)
            {
                Response.Redirect("Login.aspx");
            }                  
                Student st = Session["Student"] as Student;            
                lblName.InnerText = st.FirstName;
                lblServer.Text = st.FirstName;              
        }
    }
}