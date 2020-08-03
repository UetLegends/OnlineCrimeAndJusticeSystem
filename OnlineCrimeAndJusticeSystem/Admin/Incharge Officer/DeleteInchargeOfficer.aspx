<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteInchargeOfficer.aspx.cs" Inherits="OnlineCrimeAndJusticeSystem.DeleteInchargeOfficer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <div class="card-header header-elements-inline">
            <h6 class="card-title">Delete Incharge Officer</h6>
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
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" CssClass="btn btn-danger" />
                    </div>
                </div>
            </form>
        </div>
    </div>
        
</asp:Content>
