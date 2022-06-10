using Ecommerce.Entities.Models;
using Ecommerce.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Ecommerce.Business
{
    
    public class EcommerceManager
    {
        #region Constants
        private const decimal NILVALUE = 00;
        #endregion

        public IEnumerable<Product> GetProduct(string productId_list)
        {
            EcommerceRepository _repo = new EcommerceRepository();
            return _repo.GetProduct(productId_list);
        }

        public int CountCartItems(List<CartItem> cartItemsList)
        {
            EcommerceRepository _repo = new EcommerceRepository();
            return _repo.CountCartItems(cartItemsList);
        }

        public DiscountType GetDiscountType(string discountVoucher)
        {
            EcommerceRepository _repo = new EcommerceRepository();
            return _repo.GetDiscountType(discountVoucher);
        }
       
        public CalculatedTotal CalculateTotal(ShoppingCart sessionShoppingCart)
        {
            try
            {

                List<Product> productList = sessionShoppingCart.productList;
                List<SalesOrderLine> salesOrderLines = sessionShoppingCart.salesOrderLines;
                string discountVoucher = sessionShoppingCart.discountVoucher;
                bool isVoucherExist = Regex.Replace(discountVoucher, @"\s+", "") != "";
                EcommerceRepository _repo = new EcommerceRepository();

                DiscountType discountType = new DiscountType();
                if (isVoucherExist)
                {

                    discountType = GetDiscountType(discountVoucher);
                }


                decimal total_amount = NILVALUE;
                decimal totalLocalBuyDiscount = NILVALUE;
                decimal totalBulkBuyDiscount = NILVALUE;
                int count_sales_order_lines = 0;
                string discountApplied = string.Empty;
                foreach (var salesOrderLine in salesOrderLines)
                {
                    var current_product = productList.FirstOrDefault(x => x.PRODUCT_ID == salesOrderLine.PRODUCT_ID);
                    total_amount += current_product.PRODUCT_UNIT_PRICE * salesOrderLine.QUANTITY;
                    count_sales_order_lines++;

                }

                if (count_sales_order_lines > 0 && isVoucherExist && discountType != null)
                {

                    totalBulkBuyDiscount += total_amount * (discountType.DISCOUNT_VALUE / 100);
                    discountApplied = discountType.DISCOUNT_TYPE_CODE;
                }

                CalculatedTotal calculatedTotal = new CalculatedTotal
                {
                    totalAmount = total_amount,
                    totalLocalBuyDiscount = totalLocalBuyDiscount,
                    totalBulkBuyDiscount = totalBulkBuyDiscount,
                    discountType = discountApplied,
                    actualAmount = total_amount - (totalBulkBuyDiscount + totalLocalBuyDiscount)
                };
                return calculatedTotal;

            }
            catch (Exception ex)
            {

                var message = string.Format("Error occured on calculating session shopping cart total" + ex);
                return new CalculatedTotal() { };
            }
        }


    }
}
