using Ecommerce.Business;
using Ecommerce.Entities.Models;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace Ecommerce.Api.Controllers
{
    [System.Web.Http.RoutePrefix("api/v1/ecommerce_api")]

    public class EcommerceController : ApiController
    {
        EcommerceManager ecommerce = new EcommerceManager();

        [System.Web.Http.Route("GetTest")]
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
                var message = string.Format("Error occured on returning approvals" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }
        }

        [HttpPost]
        [Route("countCartItem")]
        public HttpResponseMessage CountCartItem([FromBody] List<Ecommerce.Entities.Models.CartItems> cartItems)
        {

            try
            {
                return Request.CreateResponse(HttpStatusCode.OK, ecommerce.CountCartItems(cartItems));
            }
            catch (Exception ex)
            {
                var message = string.Format("Error occured on returning approvals" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }

        }

        [HttpPost]
        [Route("calculateTotal")]
        public HttpResponseMessage CalculateTotal([FromBody] TestObject testObject)
        {

            try
            {
                return Request.CreateResponse(HttpStatusCode.OK, ecommerce.CalculateTotal(testObject));
            }
            catch (Exception ex)
            {
                var message = string.Format("Error occured on returning approvals" + ex);
                HttpError err = new HttpError(message);
                return Request.CreateResponse(HttpStatusCode.InternalServerError, err);
            }

        }

      

    }
}