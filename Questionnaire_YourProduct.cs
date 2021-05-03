

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace TestAPI.Controllers
{
	 [ApiController]
    [Route("/username/password")]

    List<Model.Product> products = new List<Model.Product>();
    public int Id { get; set; }
    [HttpGet]
    public JsonResult<List<Models.Product>> GetAllProducts()
    {
        return products;
    }
    [HttpGet]
    public JsonResult<Models.Product> GetProduct(int id)
    {
        var product = products.FirstOrDefault((p) => p.id == id);
        if(product == null)
        {
            return DllNotFoundException();
        }
        return Ok(product);
    }
    [HttpPost]
    public void InsertProduct(Models.Product product)
    {
        products.Add(product);
    }
    [HttpPut]
    public void UpdateProduct(Models.Product product, int id)
    {
        product = GetProduct(id);
        products.Update(product);
    }
    [HttpDelete]
    public void DeleteProduct(int id)
    {
        Model.Product product = GetProduct(id);
        products.Remove(product);
        products.SaveChanges();
    }
  
    }
    
