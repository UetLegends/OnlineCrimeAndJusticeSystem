<%@ Page Title="" Language="C#" MasterPageFile="~/Investigation Officer/InvestigationOfficer.Master" AutoEventWireup="true" CodeBehind="AddArrestedPeople.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.Investigation_Officer.AddArrestedPeople" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="card">
        <div class="card-header header-elements-inline">
            <h6 class="card-title">Add Arrested People</h6>
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
                    <label class="col-form-label col-lg-2">FIR ID</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txt_FirId" runat="server" placeholder="ID" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
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
                <hr />
                <h5>Arrested Location</h5>
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

                <div class="form-group row mb-0">
                    <div class="col-lg-10 ml-lg-auto">
                        <div class="d-flex justify-content-between align-items-center">
                            <button type="submit" class="btn btn-light">Cancel</button>
                            <asp:Button ID="btn_Submit" runat="server" Text="Submit" CssClass="btn bg-blue" />
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
</asp:Content>
