using Ecommerce.Repository.DataSource;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ecommerce.Entities.Models;
using Dapper;
using System.Data;

namespace Ecommerce.Repository
{
    public class EcommerceRepository
    {
        DataSourceEcommerce _DB;

        public IEnumerable<Product> GetProduct(string productId_list)
        {

            var parameters = new DynamicParameters();
            parameters.Add("@PRODUCT_ID", 0);
            parameters.Add("@PRODUCT_ID_LIST", productId_list);
           
            _DB = new DataSourceEcommerce();
            var results = _DB.Connection().Query<Product>("STP_PRODUCT", parameters, commandType: CommandType.StoredProcedure).ToList();
            return results;
        }

        public IEnumerable<DiscountType> GetDiscountType()
        {

            var parameters = new DynamicParameters();
            parameters.Add("@DISCOUNT_TYPE_ID", 0);
           
            _DB = new DataSourceEcommerce();
            var results = _DB.Connection().Query<DiscountType>("STP_GET_DISCOUNT_TYPE", parameters, commandType: CommandType.StoredProcedure).ToList();
            return results;
        }
        public int CountCartItems(List<CartItems> cartItemsList) {           
            
            var newItemsList = new List<int>();
            foreach (var item in cartItemsList)
            {
                if (!newItemsList.Contains(item.PRODUCT_ID))
                    newItemsList.Add(item.PRODUCT_ID);
            }
            return newItemsList.Count();
        }

       
    }
}
