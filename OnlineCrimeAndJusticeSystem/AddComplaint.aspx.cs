using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OnlineCrimeAndJusticeSystem
{
    public partial class AddComplaint : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnkownPerson.Visible = false;
            KnownPerson.Visible = false;
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Act"), new DataColumn("Act Discription"), new DataColumn("Section"), new DataColumn("Section Discription"), new DataColumn("Grave"), new DataColumn("Punishable") });
                ViewState["Customers"] = dt;
                this.BindGrid();
            }
        }

        protected void btn_Showform_Click(object sender, EventArgs e)
        {
            if (rdbtn_TypeofAccused.SelectedItem.Text == "Known Accused")
            {
                KnownPerson.Visible = true;
            }
            if (rdbtn_TypeofAccused.SelectedItem.Text == "Unknow Accused") 
            {
                UnkownPerson.Visible = true;
            }
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            showData();
        }

        public void showData()
        {
            //DataRow dr = dt.NewRow();
            //dr["Act"] = txt_Act.Text;
            //dr["Act Discription"] = Request.Form["txt_ActDiscription"];
            //dr["Section"] = txt_Section.Text;
            //dr["Section Discription"] = Request.Form["txt_SectionDiscription"];
            //dr["Grave"] = txt_Grave.Text;
            //dr["Punishable"] = txt_Punishable.Text;

            //dt.Rows.Add(dr);

            DataTable dt = (DataTable)ViewState["Customers"];
            dt.Rows.Add(txt_Act.Text.Trim(), Request.Form["txt_ActDiscription"], txt_Section.Text, Request.Form["txt_SectionDiscription"], txt_Grave.Text, txt_Punishable.Text); 
            ViewState["Customers"] = dt;
            this.BindGrid();

        }

        public void BindGrid()
        {
            DataTableActAndSection.DataSource = (DataTable)ViewState["Customers"];
            DataTableActAndSection.DataBind();
        }
    }
}