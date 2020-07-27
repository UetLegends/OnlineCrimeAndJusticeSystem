using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCrimeAndJusticeSystem
{
    public partial class AddComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnkownPerson.Visible = false;
            KnownPerson.Visible = false;
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
    }
}