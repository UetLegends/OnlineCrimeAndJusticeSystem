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
                        <h6>Complainer Information</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>CNIC</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="****-*******-*"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email address:</label>
                                        <input type="email" name="email" class="form-control" placeholder="your@email.com">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone #:</label>
                                        <input type="text" name="tel" class="form-control" placeholder="+92-300-0000000" data-mask="+99-99-9999-9999">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="d-block">Upload Image</label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="Wirzardid" runat="server">
                        <h6>Your experience</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Company:</label>
                                        <input type="text" name="experience-company" placeholder="Company name" class="form-control">
                                    </div>

                                    <div class="form-group">
                                        <label>Position:</label>
                                        <input type="text" name="experience-position" placeholder="Company name" class="form-control">
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>From:</label>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <select name="education-from-month" data-placeholder="Month" class="form-control form-control-select2" data-fouc>
                                                            <option></option>
                                                            <option value="January">January</option>
                                                            <option value="...">...</option>
                                                            <option value="December">December</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <select name="education-from-year" data-placeholder="Year" class="form-control form-control-select2" data-fouc>
                                                            <option></option>
                                                            <option value="1995">1995</option>
                                                            <option value="...">...</option>
                                                            <option value="1980">1980</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <label>To:</label>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <select name="education-to-month" data-placeholder="Month" class="form-control form-control-select2" data-fouc>
                                                            <option></option>
                                                            <option value="January">January</option>
                                                            <option value="...">...</option>
                                                            <option value="December">December</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <select name="education-to-year" data-placeholder="Year" class="form-control form-control-select2" data-fouc>
                                                            <option></option>
                                                            <option value="1995">1995</option>
                                                            <option value="...">...</option>
                                                            <option value="1980">1980</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Brief description:</label>
                                        <textarea name="experience-description" rows="4" cols="4" placeholder="Tasks and responsibilities" class="form-control"></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label class="d-block">Recommendations:</label>
                                        <input name="recommendations" type="file" class="form-input-styled" data-fouc>
                                        <span class="form-text text-muted">Accepted formats: pdf, doc. Max file size 2Mb</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="Wirzardid1" runat="server">
                        <h6>Additional info</h6>
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="d-block">Applicant resume:</label>
                                        <input type="file" name="resume" class="form-input-styled" data-fouc>
                                        <span class="form-text text-muted">Accepted formats: pdf, doc. Max file size 2Mb</span>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Where did you find us?</label>
                                        <select name="source" data-placeholder="Choose an option..." class="form-control form-control-select2" data-fouc>
                                            <option></option>
                                            <option value="monster">Monster.com</option>
                                            <option value="linkedin">LinkedIn</option>
                                            <option value="google">Google</option>
                                            <option value="adwords">Google AdWords</option>
                                            <option value="other">Other source</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Availability:</label>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" name="availability" class="form-input-styled" data-fouc>
                                                Immediately
                                            </label>
                                        </div>

                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" name="availability" class="form-input-styled" data-fouc>
                                                1 - 2 weeks
                                            </label>
                                        </div>

                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" name="availability" class="form-input-styled" data-fouc>
                                                3 - 4 weeks
                                            </label>
                                        </div>

                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" name="availability" class="form-input-styled" data-fouc>
                                                More than 1 month
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Additional information:</label>
                                        <textarea name="additional-info" rows="5" cols="5" placeholder="If you want to add any info, do it here." class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                </WizardSteps>
                <NavigationButtonStyle CssClass="btn btn-danger" />
            </asp:Wizard>
        </div>
    </form>
</asp:Content>
