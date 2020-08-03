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
                DataTable dt1 = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Act"), new DataColumn("Act Discription"), new DataColumn("Section"), new DataColumn("Section Discription"), new DataColumn("Grave"), new DataColumn("Punishable") });
                dt1.Columns.AddRange(new DataColumn[7] { new DataColumn("Name"), new DataColumn("Father Name"), new DataColumn("CNIC"), new DataColumn("Email"), new DataColumn("Phone Number"), new DataColumn("Gender"), new DataColumn("Statement")});
                ViewState["Customers"] = dt;
                ViewState["Witness"] = dt1;
                this.BindGridAct();
                this.BindGridWitness();
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
           

            DataTable dt = (DataTable)ViewState["Customers"];
            dt.Rows.Add(txt_Act.Text.Trim(), Request.Form["txt_ActDiscription"], txt_Section.Text, Request.Form["txt_SectionDiscription"], txt_Grave.Text, txt_Punishable.Text); 
            ViewState["Customers"] = dt;
            this.BindGridAct();

        }

        public void BindGridAct()
        {
            DataTableActAndSection.DataSource = (DataTable)ViewState["Customers"];
            DataTableActAndSection.DataBind();
        }

        public void BindGridWitness()
        {
            witnessgridView.DataSource = (DataTable)ViewState["Witness"];
            witnessgridView.DataBind();
        }

        protected void btn_WitnessAdd_Click(object sender, EventArgs e)
        {
            showwitnessData();
        }

        public void showwitnessData()
        {
            DataTable dt1 = (DataTable)ViewState["Witness"];

            dt1.Rows.Add(txt_WitnessName.Text.Trim(), txt_WitnessFatherName.Text, txt_WitnessCNIC.Text, txt_WitnessEmailAddress.Text, txt_WitnessPhoneNumber.Text, txt_WitnessGender.Text,txt_Statement.Text);
            ViewState["Witness"] = dt1;
            this.BindGridWitness();
        }
    }
}