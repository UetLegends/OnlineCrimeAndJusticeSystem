using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCrimeAndJusticeSystem.Investigation_Officer
{
    public partial class AddEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.AddRange(new DataColumn[2] { new DataColumn("FIR NO. "), new DataColumn("File Path") });
                ViewState["Evidence"] = dt;
                this.BindGridWitness();
            }
        }

        private void BindGridWitness()
        {
            EvidenceGrid.DataSource = (DataTable)ViewState["Evidence"];
            EvidenceGrid.DataBind();
        }

        protected void btn_Show_Click(object sender, EventArgs e)
        {
            showEvidenceData();   
        }

        private void showEvidenceData()
        {
            DataTable dt1 = (DataTable)ViewState["Evidence"];

            dt1.Rows.Add(txt_firid.Text, ImageUploader.FileName);
            ViewState["Evidence"] = dt1;
            this.BindGridWitness();
        }
    }
}