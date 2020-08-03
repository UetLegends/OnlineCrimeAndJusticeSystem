<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateInvestigationOfficer.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.UpdateInvestigationOfficer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <div class="card-header header-elements-inline">
            <h6 class="card-title">Update Investigation Officer</h6>
            <div class="header-elements">
                <div class="list-icons">
                    <a class="list-icons-item" data-action="collapse"></a>
                    <a class="list-icons-item" data-action="reload"></a>
                    <a class="list-icons-item" data-action="remove"></a>
                </div>
            </div>
        </div>

        <div class="card-body">
            <form action="#" runat="server">
                <div class="form-group row">
                    <label class="col-form-label col-lg-2">Belt Number</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txt_BeltNumber" runat="server" placeholder="Belt Number" CssClass="form-control"></asp:TextBox><br />
                        <asp:Button ID="btn_Show" runat="server" Text="Show" CssClass="btn btn-danger" OnClick="btn_Show_Click" />
                    </div>
                </div>

                <asp:Panel runat="server" ID="panel_ShowForm">
                    <div class="form-group row">
                        <label class="col-form-label col-lg-2">Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txt_Name" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-lg-2">Father Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txt_FatherName" runat="server" placeholder="Father Name" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-2">Email Address</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txt_Email" runat="server" placeholder="name@email.com" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-2">Password</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txt_Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-2">Police Station</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txt_PoliceStation" runat="server" placeholder="Police Station" CssClass="form-control"></asp:TextBox>

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
                    <div class="form-group row mb-0">
                        <div class="col-lg-10 ml-lg-auto">
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="submit" class="btn btn-light">Cancel</button>
                                <asp:Button ID="btn_Submit" runat="server" Text="Submit" CssClass="btn bg-blue" />
                            </div>
                        </div>
                    </div>
                </asp:Panel>

            </form>
        </div>
    </div>
</asp:Content>
