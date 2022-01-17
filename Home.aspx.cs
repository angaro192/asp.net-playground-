using Correios.Net;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteInputs.Models;

namespace TesteInputs
{
    public class ApiDataService
    {
        HttpClient client = new HttpClient();
        public async Task<Cliente> GetClientesAsync(string cep)
        {
            try
            {
                string url = "https://viacep.com.br/ws/" + cep + "/json";
                var response = await client.GetStringAsync(url);
                var produtos = JsonConvert.DeserializeObject<Cliente>(response);
                return produtos;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
    public partial class Home : System.Web.UI.Page
    {
        ApiDataService api;
        Cliente cliente;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //string cep;
            //cep = textNome.Text;
            api = new ApiDataService();
            //AtualizaDados();
        }

        async void AtualizaDados(string cep)
        {
            cliente = await api.GetClientesAsync(cep);
            smalNome.Text = cliente.ToString();
        }

        protected void NomeOnTextChanged(object sender, EventArgs e)
        {
            AtualizaDados(textNome.Text);
            //_= LocalizarCEP(textNome.Text);
            //LocalizarCEP(textNome.Text).Wait();
            //smalNome.Text = GetCEP("https://viacep.com.br/ws/" + textNome.Text).ToString();
        }

        //private void LocalizarCEP()
        //{
        //    if (!string.IsNullOrWhiteSpace(textNome.Text))
        //    {
        //        Address endereco = SearchZip.GetAddress(textNome.Text);
        //        if (endereco.Zip != null)
        //        {
        //            textSobrenome.Text = endereco.State;
        //            //txtCidade.Text = endereco.City;
        //            //txtBairro.Text = endereco.District;
        //            //txtRua.Text = endereco.Street;
        //        }
        //        else
        //        {
        //            smalNome.Text = "Cep não localizado...";
        //        }
        //    }
        //    else
        //    {
        //        smalNome.Text = "Informe um CEP válido";
        //    }
        //}

    }

}