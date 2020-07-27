<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddComplaint.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.AddComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container">
            <h1>Add Complaint</h1>
            <hr />
            <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false">
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

                    <asp:WizardStep ID="WizardStep3" runat="server">
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
                                        <textarea id="txt_ActDiscription" cols="30" rows="2" placeholder="Discripiton"></textarea>
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
                                        <textarea id="txt_SectionDiscription" cols="30" rows="2" placeholder="Discripiton"></textarea>
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
                                        <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="btn btn-warning"/>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>

                    <asp:WizardStep ID ="WizardStep4">
                        <h6>Occurence of Offence</h6>
                        <div class="row">
                            <label>Occuence of Offence Date & Time</label><span>&emsp;</span>
                            <asp:Button ID="btn_OccurenceofOffenceDate" runat="server" Text="Date" CssClass="btn btn-danger daterange-ranges __web-inspector-hide-shortcut__" OnClientClick="return false;" />
                        </div>    
                    </asp:WizardStep>
                </WizardSteps>
                <NavigationButtonStyle CssClass="btn btn-danger" />
            </asp:Wizard>
        </div>
    </form>
</asp:Content>
