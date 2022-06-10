using System.Collections.Generic;

namespace Ecommerce.Entities.Models
{
    public class ShoppingCart
    {
        public List<Product> productList { get; set; }
        public List<SalesOrderLine> salesOrderLines { get; set; }
        public string discountVoucher { get; set; }

    }
}
