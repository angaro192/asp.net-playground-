<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TesteInputs.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <h5>Cadastro</h5>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <asp:Label ID="labelNome" Text="Nome" runat="server" />
                            <asp:TextBox CssClass="form-control" ID="textNome" runat="server" AutoPostBack="True" OnTextChanged="NomeOnTextChanged" />
                            <asp:Label ID="smalNome" CssClass="form-text text-muted" Text="We'll never share your email with anyone else." runat="server" />
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <asp:Label ID="labelSobrenome" Text="Sobrenome" runat="server" />
                            <asp:TextBox CssClass="form-control" ID="textSobrenome" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script language="javascript" type="text/javascript">
    function minhaFuncao(campo, evt) {
        console.log("ola")
    }
</script>
</asp:Content>