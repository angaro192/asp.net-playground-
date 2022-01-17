using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using TesteInputs.Models;

namespace TesteInputs.DataServicee
{
    public class DataServicee
    {
        HttpClient client = new HttpClient();
        public async Task<Cliente> GetClientesAsync(string cep)
        {
            try
            {
                string url = "https://viacep.com.br/ws/"+ cep +"/json";
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
}