using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ecommerce.Entities.Models
{
    public class CalculatedTotal
    {
        public decimal totalBulkBuyDiscount  { get; set; }
        public decimal totalLocalBuyDiscount { get; set; }
        public decimal totalAmount { get; set; }
        public string discountType { get; set; }
        public decimal actualAmount { get; set; }
    }
}
