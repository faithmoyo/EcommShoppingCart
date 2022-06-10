namespace Ecommerce.Entities.Models
{
    public class CalculatedTotal
    {
        public decimal totalVoucherDiscount  { get; set; }
        public decimal subTotalAmount { get; set; }
        public string discountType { get; set; }
        public decimal actualAmount { get; set; }
    }
}
