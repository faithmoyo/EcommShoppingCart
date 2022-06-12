using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ecommerce.Entities.Models
{
    public class SalesOrderLine
    {
        public int PRODUCT_ID;
        public int QUANTITY;
        public decimal DISCOUNT_AMOUNT;
        public DateTime SALES_ORDER_LINE_DATE_INSERT;
        public decimal TOTAL_AMOUNT;
        public DateTime SALES_ORDER_LINE_DATE_EDIT;
    }
}
