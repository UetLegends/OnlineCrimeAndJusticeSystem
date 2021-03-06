﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Incharge Officer/InchargeOfficer.Master" AutoEventWireup="true" CodeBehind="AddComplaint.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.AddComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container">
            <h1>Add Complaint</h1>
            <hr />
            <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick">
                <WizardSteps>

                    <asp:WizardStep ID="WinzardStep0" runat="server">
                        <h6>Complaint ID</h6>
                        <label>Enter ID</label>
                        <asp:TextBox ID="txt_ComplaintID" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep1" runat="server">
                        <h6>Complainer Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txt_FirstName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="txt_FatherName" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>CNIC</label>
                                        <asp:TextBox ID="txt_CNIC" runat="server" CssClass="form-control" placeholder="****-*******-*"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email address:</label>
                                        <asp:TextBox ID="txt_Email" runat="server" CssClass="form-control" placeholder="name@email.com"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone #:</label>
                                        <asp:TextBox ID="txt_PhoneNumber" runat="server" CssClass="form-control" placeholder="+92-300-0000000"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="d-block">Upload Image</label>
                                            <asp:FileUpload ID="ImageUploader" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="GenderList" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Not Specified</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server">
                        <h6>Complainer Address Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:TextBox ID="txt_State" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>District</label>
                                        <asp:TextBox ID="txt_District" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Street</label>
                                        <asp:TextBox ID="txt_Street" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Postal Code</label>
                                        <asp:TextBox ID="txt_postalCode" runat="server" CssClass="form-control" placeholder="Postal Code"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </fieldset>
                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep3">
                        <h5>Type of Case</h5>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label>Types</label>
                                    <asp:RadioButtonList ID="rdbtn_TypeofCase" runat="server">
                                        <asp:ListItem>Robbery</asp:ListItem>
                                        <asp:ListItem>Murder</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="btn_Show" runat="server" Text="Show Form" CssClass="btn btn-danger" OnClick="btn_Show_Click" />

                        <asp:Panel ID="Robbery" runat="server">
                            <hr />
                            <h6>Property Information</h6>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Property Details</label>
                                        <asp:TextBox ID="txt_PropertyDetails" runat="server" CssClass="form-control" placeholder="Detalis"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Wealth</label>
                                        <asp:TextBox ID="txt_propertyhWeath" runat="server" CssClass="form-control" placeholder="Weatlh"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:TextBox ID="txt_propertyLocation" runat="server" CssClass="form-control" placeholder="Location"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>District</label>
                                        <asp:TextBox ID="txt_propetyDistrict" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Street</label>
                                        <asp:TextBox ID="txt_PropertyStreet" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btn_AddProperty" runat="server" Text="Add" CssClass="btn btn-warning" />
                        </asp:Panel>

                        <asp:Panel ID="MurderPersonPanel" runat="server">
                            <h6>Murderd Person Information</h6>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txt_MurderedName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="txt_MurderFatherName" runat="server" CssClass="form-control" placeholder="FatherName"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date of Murder</label>
                                        <asp:Button ID="txt_MurderDate" runat="server" Text="Date" CssClass="btn btn-danger daterange-ranges __web-inspector-hide-shortcut__" OnClientClick="return false;" />

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="MurderGender" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Not Specified</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <asp:Button ID="btn_MurderedAdd" runat="server" Text="Add" CssClass="btn btn-warning" />
                        </asp:Panel>
                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep4" runat="server">
                        <h6>Act & Section</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Distict</label>
                                        <asp:TextBox ID="txt_PoliceStationDistrict" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Police Station</label>
                                        <asp:TextBox ID="txt_PoliceStationName" runat="server" CssClass="form-control" placeholder="Code"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Act</label>
                                        <asp:TextBox ID="txt_Act" runat="server" CssClass="form-control" placeholder="Act"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Discripiton</label>
                                        <textarea id="txt_ActDiscription" name="txt_ActDiscription" cols="30" rows="2" placeholder="Discripiton"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Section</label>
                                        <asp:TextBox ID="txt_Section" runat="server" CssClass="form-control" placeholder="Section"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Discripiton</label>
                                        <textarea id="txt_SectionDiscription" name="txt_SectionDiscription" cols="30" rows="2" placeholder="Discripiton"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Grave</label>
                                        <asp:DropDownList ID="txt_Grave" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Punishable</label>
                                        <asp:DropDownList ID="txt_Punishable" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="btn btn-warning" OnClick="btn_Add_Click" />
                                    </div>
                                </div>
                            </div>
                            <asp:Panel runat="server" ID="ActAndSectionPanel">
                                <asp:GridView ID="DataTableActAndSection" runat="server" CssClass="table-dark" EmptyDataText="No record has set yet">
                                    <Columns>
                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </fieldset>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep5">
                        <h6>Occurence of Offence</h6>
                        <div class="row">
                            <label>Occuence of Offence Date & Time</label><span>&emsp;</span>
                            <asp:Button ID="btn_OccurenceofOffenceDate" runat="server" Text="Date" CssClass="btn btn-danger daterange-ranges __web-inspector-hide-shortcut__" OnClientClick="return false;" />
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:TextBox ID="txt_OffenceState" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>District</label>
                                    <asp:TextBox ID="txt_OffenceDistrict" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Street</label>
                                    <asp:TextBox ID="txt_OffenceStreet" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep6" runat="server">
                        <h5>Accused/Suspect Details</h5>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label>Type of Accused</label>
                                    <asp:RadioButtonList ID="rdbtn_TypeofAccused" runat="server">
                                        <asp:ListItem>Known Accused</asp:ListItem>
                                        <asp:ListItem>Unknow Accused</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="btn_Showform" runat="server" Text="Show Form" OnClick="btn_Showform_Click" CssClass="btn btn-danger" />

                        <asp:Panel ID="UnkownPerson" runat="server">
                            <h6>Accused Person Physical Features</h6>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Appoximatly Height</label>
                                        <asp:TextBox ID="txt_Height" runat="server" CssClass="form-control" placeholder="Height"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Color</label>
                                        <asp:TextBox ID="txt_Color" runat="server" CssClass="form-control" placeholder="Color"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Body Language</label>
                                        <asp:TextBox ID="txt_BodyLanguage" runat="server" CssClass="form-control" placeholder="BodyLanguage"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Way of Talking</label>
                                        <asp:TextBox ID="txt_talkingWay" runat="server" CssClass="form-control" placeholder="Way of Talking"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Language</label>
                                        <asp:TextBox ID="txt_language" runat="server" CssClass="form-control" placeholder="Language"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Events Used for Crime</label>
                                        <asp:TextBox ID="txt_Crime" runat="server" CssClass="form-control" placeholder="Evnets for Crime"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btn_AddUnknown" runat="server" Text="Add" CssClass="btn btn-warning" OnClick="btn_AddUnknown_Click1" />
                            <asp:GridView ID="UnknownGridView" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>
                        </asp:Panel>

                        <asp:Panel ID="KnownPerson" runat="server">
                            <h6>Accused Person</h6>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Accused Person Name</label>
                                        <asp:TextBox ID="txt_AccusedPersonName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="txt_AccusedPersonFatherName" runat="server" CssClass="form-control" placeholder="FatherName"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Cast</label>
                                        <asp:TextBox ID="txt_Cast" runat="server" CssClass="form-control" placeholder="Cast"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btn_AddKnown" runat="server" Text="Add" CssClass="btn btn-warning" OnClick="btn_AddKnown_Click1" />
                            <asp:GridView ID="KnownGridView" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>
                        </asp:Panel>

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep7" runat="server">
                        <h6>Witness Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txt_WitnessName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="txt_WitnessFatherName" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>CNIC</label>
                                        <asp:TextBox ID="txt_WitnessCNIC" runat="server" CssClass="form-control" placeholder="****-*******-*"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email address:</label>
                                        <asp:TextBox ID="txt_WitnessEmailAddress" runat="server" CssClass="form-control" placeholder="name@email.com"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone #:</label>
                                        <asp:TextBox ID="txt_WitnessPhoneNumber" runat="server" CssClass="form-control" placeholder="+92-300-0000000"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="txt_WitnessGender" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Not Specified</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Statement</label>
                                        <asp:TextBox ID="txt_Statement" runat="server" CssClass="form-control" placeholder="Statement"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </fieldset>
                        <asp:Button ID="btn_WitnessAdd" runat="server" Text="Add" CssClass="btn btn-warning" OnClick="btn_WitnessAdd_Click" />
                        <asp:GridView ID="witnessgridView" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>

                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardPreview" runat="server">
                        <h1 class="center">Review Option</h1>
                        <hr />
                        <h3>Complaint ID </h3>
                        <label>ID</label>
                        <asp:TextBox ID="txt_ComplaintIDPreview" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                        <hr />

                        <h6>Complainer Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txt_ComplianerNamePreview" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="txt_ComplainerFatherNamePreview" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>CNIC</label>
                                        <asp:TextBox ID="txt_ComplainerCNICPreview" runat="server" CssClass="form-control" placeholder="****-*******-*"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email address:</label>
                                        <asp:TextBox ID="txt_ComplainerEmailPreview" runat="server" CssClass="form-control" placeholder="name@email.com"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone #:</label>
                                        <asp:TextBox ID="txt_ComplainerPhonePreview" runat="server" CssClass="form-control" placeholder="+92-300-0000000"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="d-block">Upload Image</label>
                                            <asp:FileUpload ID="complainerImagePreview" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="txt_dropDownPreview" runat="server" CssClass="form-control form-control-select2">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Not Specified</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <hr />

                        <h6>Complainer Address Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:TextBox ID="txt_ComplainerStatePreview" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>District</label>
                                        <asp:TextBox ID="txt_ComplainerDistrictPreview" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Street</label>
                                        <asp:TextBox ID="txt_ComplainerStreetPreview" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Postal Code</label>
                                        <asp:TextBox ID="txt_ComplainerPostalCodePreview" runat="server" CssClass="form-control" placeholder="Postal Code"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </fieldset>

                        <hr />

                        <h6>Act & Section</h6>
                        <fieldset>
                            <asp:GridView ID="DataTableActAndSection1" runat="server" CssClass="table-dark" EmptyDataText="No record has set yet">
                                <Columns>
                                </Columns>
                            </asp:GridView>
                        </fieldset>

                        <hr />

                        <h6>Occurence of Offence</h6>
                        <div class="row">
                            <label>Occuence of Offence Date & Time</label><span>&emsp;</span>
                            <asp:Button ID="btn_OccuernceOfOffecncePreview" runat="server" Text="Date" CssClass="btn btn-danger daterange-ranges __web-inspector-hide-shortcut__" OnClientClick="return false;" />
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:TextBox ID="txt_OffenceStatePreview" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>District</label>
                                    <asp:TextBox ID="txt_OffenceDistrictPreview" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Street</label>
                                    <asp:TextBox ID="txt_OffenceStreetPreveiw" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <hr />

                        <h5>Accused/Suspect Details</h5>
                        <h5>Unkown People</h5>

                        <div class="row">
                            <asp:GridView ID="UnknownGridView1" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>
                        </div>
                        <h5>Known People</h5>

                        <div class="row">
                            <asp:GridView ID="KnownGridView1" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>
                        </div>

                        <hr />

                        <h5>Witness Information</h5>
                        <div class="row">
                            <asp:GridView ID="witnessgridView1" runat="server" EmptyDataText="No record Found Yet"></asp:GridView>
                        </div>

                    </asp:WizardStep>

                </WizardSteps>
                <NavigationButtonStyle CssClass="btn btn-danger" />
            </asp:Wizard>
        </div>
    </form>
</asp:Content>
