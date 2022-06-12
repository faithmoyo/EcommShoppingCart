using Ecommerce.Repository.DataSource;
using System.Collections.Generic;
using System.Linq;
using Ecommerce.Entities.Models;
using Dapper;
using System.Data;

namespace Ecommerce.Repository
{
    public class EcommerceRepository
    {
        public DataSourceEcommerce _DB;

        public IEnumerable<Product> GetProduct(string productId_list)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@PRODUCT_ID", 0);
            parameters.Add("@PRODUCT_ID_LIST", productId_list);

            _DB = new DataSourceEcommerce();
            return _DB.Connection().Query<Product>("STP_PRODUCT", parameters, commandType: CommandType.StoredProcedure).ToList();
        }

        public DiscountType GetDiscountType(string discountVoucher)
        {
            if (!string.IsNullOrEmpty(discountVoucher))
            {
                var parameters = new DynamicParameters();
                parameters.Add("@@DISCOUNT_TYPE_CODE", discountVoucher);

                _DB = new DataSourceEcommerce();
                return _DB.Connection().Query<DiscountType>("STP_GET_DISCOUNT_TYPE", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return new DiscountType();
        }
        public int CountCartItems(List<CartItem> cartItemsList)
        {
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
