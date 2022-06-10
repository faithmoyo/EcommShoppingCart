using Ecommerce.Business;
using Ecommerce.Entities.Models;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace Ecommerce.Api.Controllers
{

    [RoutePrefix("api/v1/ecommerce_api")]

    public class EcommerceController : ApiController
    {
        EcommerceManager ecommerce = new EcommerceManager();

        [Route("GetTest")]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };

        }

        [Route("getproducts")]
        public HttpResponseMessage GetProducts(string product_id_list)
        {
            try
            {
                return Request.CreateResponse(HttpStatusCode.OK, ecommerce.GetProduct(product_id_list));
            }
            catch (Exception ex)
            {
                var message = string.Format("Error occured on returning products" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }
        }

        [HttpPost]
        [Route("countCartItem")]
        public HttpResponseMessage CountCartItem([FromBody] List<CartItem> cartItems)
        {

            try
            {
                return Request.CreateResponse(HttpStatusCode.OK, ecommerce.CountCartItems(cartItems));
            }
            catch (Exception ex)
            {
                var message = string.Format("Error occured on counting cart items" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }

        }

        [HttpPost]
        [Route("calculateTotal")]
        public HttpResponseMessage CalculateTotal([FromBody] ShoppingCart sessionShoppingCart)
        {

            try
            {
                return Request.CreateResponse(HttpStatusCode.OK, ecommerce.CalculateTotal(sessionShoppingCart));
            }
            catch (Exception ex)
            {
                var message = string.Format("Error occured on calculating session shopping cart total" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }

        }
    }
}