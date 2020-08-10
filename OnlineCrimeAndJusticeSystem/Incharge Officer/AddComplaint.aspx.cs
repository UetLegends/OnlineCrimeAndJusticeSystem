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
            MurderPersonPanel.Visible = false;
            Robbery.Visible = false;
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                DataTable dt3 = new DataTable();

                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Act"), new DataColumn("Act Discription"), new DataColumn("Section"), new DataColumn("Section Discription"), new DataColumn("Grave"), new DataColumn("Punishable") });
                dt1.Columns.AddRange(new DataColumn[7] { new DataColumn("Name"), new DataColumn("Father Name"), new DataColumn("CNIC"), new DataColumn("Email"), new DataColumn("Phone Number"), new DataColumn("Gender"), new DataColumn("Statement")});
                dt2.Columns.AddRange(new DataColumn[3] { new DataColumn("Name"), new DataColumn("Father Name"), new DataColumn("Cast") });
                dt3.Columns.AddRange(new DataColumn[6] { new DataColumn("Height"), new DataColumn("Color"), new DataColumn("Body Language"), new DataColumn("Way of Talking"), new DataColumn("Language"), new DataColumn("Events for Crime") });

                ViewState["Customers"] = dt;
                ViewState["Witness"] = dt1;
                ViewState["KnownAccused"] = dt2;
                ViewState["UnknownAccused"] = dt3;

                this.BindGridAct();
                this.BindGridWitness();
                this.BindGridKnown();
                this.BindGridUnknown();
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

        public void BindGridActPreview()
        {
            DataTableActAndSection1.DataSource = (DataTable)ViewState["Customers"];
            DataTableActAndSection1.DataBind();
        }

        public void BindGridWitness()
        {
            witnessgridView.DataSource = (DataTable)ViewState["Witness"];
            witnessgridView.DataBind();
        }
        public void BindGridWitness1()
        {
            witnessgridView1.DataSource = (DataTable)ViewState["Witness"];
            witnessgridView1.DataBind();
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

        protected void btn_Show_Click(object sender, EventArgs e)
        {
            if(rdbtn_TypeofCase.Text == "Robbery")
            {
                Robbery.Visible = true;
            }
            if(rdbtn_TypeofCase.Text == "Murder")
            {
                MurderPersonPanel.Visible = true;
            }
        }
        public void BindGridKnown()
        {
            KnownGridView.DataSource = (DataTable)ViewState["KnownAccused"];
            KnownGridView.DataBind();
        }
        public void BindGridKnownPreview()
        {
            KnownGridView1.DataSource = (DataTable)ViewState["KnownAccused"];
            KnownGridView1.DataBind();
        }

        public void BindGridUnknown()
        {
            UnknownGridView.DataSource = (DataTable)ViewState["UnknownAccused"];
            UnknownGridView.DataBind();
        }
        public void BindGridUnknownPreview()
        {
            UnknownGridView1.DataSource = (DataTable)ViewState["UnknownAccused"];
            UnknownGridView1.DataBind();
        }
        public void showKnownData()
        {
            DataTable dt2 = (DataTable)ViewState["KnownAccused"];

            dt2.Rows.Add(txt_AccusedPersonName.Text.Trim(), txt_AccusedPersonFatherName.Text, txt_Cast.Text);
            ViewState["KnownAccused"] = dt2;
            this.BindGridKnown();
        }

        public void showUnknownData()
        {
            DataTable dt3 = (DataTable)ViewState["UnknownAccused"];

            dt3.Rows.Add(txt_Height.Text, txt_Color.Text, txt_BodyLanguage.Text, txt_talkingWay.Text, txt_language.Text, txt_Crime.Text);
            ViewState["UnknownAccused"] = dt3;
            this.BindGridUnknown();
        }

        protected void btn_AddUnknown_Click1(object sender, EventArgs e)
        {
            showUnknownData();
        }

        protected void btn_AddKnown_Click1(object sender, EventArgs e)
        {
            showKnownData();
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(e.NextStepIndex == 8)
            {
                txt_ComplaintIDPreview.Text = txt_ComplaintID.Text;


                txt_ComplianerNamePreview.Text = txt_FirstName.Text;
                txt_ComplainerFatherNamePreview.Text = txt_FatherName.Text;
                txt_ComplainerPhonePreview.Text = txt_PhoneNumber.Text;
                txt_ComplainerEmailPreview.Text = txt_Email.Text;
                txt_ComplainerCNICPreview.Text = txt_CNIC.Text;
                txt_dropDownPreview.SelectedItem.Text = GenderList.SelectedItem.Text;

                txt_ComplainerDistrictPreview.Text = txt_District.Text;
                txt_ComplainerStatePreview.Text = txt_State.Text;
                txt_ComplainerPostalCodePreview.Text = txt_postalCode.Text;
                txt_ComplainerStreetPreview.Text = txt_Street.Text;

                BindGridActPreview();

                btn_OccuernceOfOffecncePreview.Text = btn_OccurenceofOffenceDate.Text;
                txt_OffenceDistrictPreview.Text = txt_OffenceDistrict.Text;
                txt_OffenceStatePreview.Text = txt_OffenceState.Text;
                txt_OffenceStreetPreveiw.Text = txt_OffenceStreet.Text;

                BindGridUnknownPreview();

                BindGridKnownPreview();

                BindGridWitness1();

            }
        }
    }
}