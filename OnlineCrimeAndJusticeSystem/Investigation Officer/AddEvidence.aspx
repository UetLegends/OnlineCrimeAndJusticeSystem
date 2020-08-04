<%@ Page Title="" Language="C#" MasterPageFile="~/Investigation Officer/InvestigationOfficer.Master" AutoEventWireup="true" CodeBehind="AddEvidence.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.Investigation_Officer.AddEvidence" %>
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
                    <label class="col-form-label col-lg-2">Enter FIR ID </label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txt_firid" runat="server" placeholder="ID" CssClass="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group">
                            <label class="d-block">Upload File</label>
                            <asp:FileUpload ID="ImageUploader" runat="server" />
                        </div>
                    </div>
                </div>
                <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="btn btn-danger" OnClick="btn_Show_Click" />
                <asp:GridView ID="EvidenceGrid" runat="server" EmptyDataText="No evidence found yet"></asp:GridView>

            </form>
        </div>
    </div>
</asp:Content>
