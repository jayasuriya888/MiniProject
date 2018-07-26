using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ProjectDBEntities4 db = new ProjectDBEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var data = (from t in db.Visitor_Table where t.Status == "Active" select new { ID=t.Id, First_Name = t.First_Name, Last_Name = t.Last_Name, Type_Of_Id = t.Id_Type, ID_No = t.Id_No }).ToList();
               
                GridView1.DataSource = data;
                GridView1.DataBind();
                
            }
            
        }

        protected void btnID_Click(object sender, EventArgs e)
        {
           
            if (!string.IsNullOrEmpty(txtvisitors.Text))
            {
                int id = int.Parse(txtvisitors.Text);
                var data = (from t in db.Visitor_Table where t.Id == id select new { ID = t.Id, First_Name = t.First_Name, Last_Name = t.Last_Name, Type_Of_Id = t.Id_Type, ID_No = t.Id_No }).ToList();

                if (data == null)
                {
                    Response.Write("Id Invalid");
                }
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();

                }

            }
            else
            {
                var data = (from t in db.Visitor_Table where t.Status == "Active" select new { ID = t.Id, First_Name = t.First_Name, Last_Name = t.Last_Name, Type_Of_Id = t.Id_Type, ID_No = t.Id_No }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }
        protected void b1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            //Response.Write(r.Cells[1].Text + "  ,  " + r.Cells[2].Text + "  ,  " + r.Cells[2].Text + "  ,  " + r.Cells[3].Text +"  ,  " +r.Cells [4]);
            int id =int.Parse(r.Cells[1].Text);
            var olddata = (from t in db.Visitor_Table where t.Id == id select t).SingleOrDefault();
            olddata.Status = "In-Active";
            olddata.Id = id;
            olddata.Exit_Time = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView1.DataBind();


        }
      
        protected void btnname_Click(object sender, EventArgs e)
        {
           
            if (!string.IsNullOrEmpty(txtvisitors.Text))
            {
                string name = txtvisitors.Text;
                var data = (from t in db.Visitor_Table where t.First_Name == name select new { ID = t.Id, First_Name = t.First_Name, Last_Name = t.Last_Name, Type_Of_Id = t.Id_Type, ID_No = t.Id_No }).ToList();
                if (data.Count() == 0)
                    Response.Write("Name Invalid");
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }

            }
            else
            {
                var data = (from t in db.Visitor_Table where t.Status == "Active" select new { ID = t.Id, First_Name = t.First_Name, Last_Name = t.Last_Name, Type_Of_Id = t.Id_Type, ID_No = t.Id_No }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }
    }
}
