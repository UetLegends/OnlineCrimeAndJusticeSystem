﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCrimeAndJusticeSystem
{
    public partial class UpdateInvestigationOfficer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panel_ShowForm.Visible = false;
        }

        protected void btn_Show_Click(object sender, EventArgs e)
        {
            panel_ShowForm.Visible = true;
        }
    }
}