using System.Collections.Generic;

namespace Ecommerce.Entities.Models
{
    public class TestObject
    {
        public List<Product> productList { get; set; }
        public List<SalesOrderLine> salesOrderLines { get; set; }

    }
}
