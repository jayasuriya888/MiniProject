using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity.Validation;

namespace Mini_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProjectDBEntities4 db = new ProjectDBEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string fname = txtfname.Text;
            string lname = txtlname.Text;
            string company = txtcompany.Text;
            string visiting = txtvisiting.Text;
            string idtype = txtidtype.Text;
            string idno = txtidno.Text;
            string vechno = txtvechno.Text;
            string contno = txtcontno.Text;
            string purpose = txtpurpose.Text;
            string status = txtstatus.Text;
           
            try
            {
                Visitor_Table vt = new Visitor_Table();
                DateTime dt = System.DateTime.Now;
                vt.First_Name = fname;
                vt.Last_Name = lname;
                vt.Company = company;
                vt.Visiting = visiting;
                vt.Id_Type = idtype;
                vt.Id_No = idno;
                vt.Vehicle_No = vechno;
                vt.Contact_No = contno;
                vt.Purpose_Of_Visit = purpose;
                vt.Status = status;
                vt.Entry_Time = dt;
                db.Visitor_Table.Add(vt);
                var result = db.SaveChanges();
                int id = vt.Id;
                if (result > 0)
                    Response.Write("Added Successfully with a Visitor ID = " + id);
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var entityValidationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in entityValidationErrors.ValidationErrors)
                    {
                        Response.Write("Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage);
                    }
                }
            }

            txtfname.Text="";
            txtlname.Text="";
            txtcompany.Text="";
            txtvisiting.Text="";
            txtidtype.Text="";
            txtidno.Text="";
            txtvechno.Text="";
            txtcontno.Text="";
            txtpurpose.Text="";
            

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtcompany.Text = "";
            txtvisiting.Text = "";
            txtidtype.Text = "";
            txtidno.Text = "";
            txtvechno.Text = "";
            txtcontno.Text = "";
            txtpurpose.Text = "";
            
        }
    }
}