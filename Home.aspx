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
                <div class="row">
                    <div class="col-6">
                        <asp:DropDownList id="DropList" Runat="Server">
                          <asp:ListItem Text="Item 1" Value="MG"/>
                          <asp:ListItem Text="Item 2" Value="PE"/>
                          <asp:ListItem Text="Item 3" Value="SP"/>
                          <asp:ListItem Text="Item 4" Value="RS"/>
                          <asp:ListItem Text="Item 5" Value="RG"/>
                        </asp:DropDownList>
                    </div>
                    <div class="col-6"></div>
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