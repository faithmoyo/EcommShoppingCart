using Ecommerce.Entities.Models;
using Ecommerce.Repository;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Ecommerce.Business
{
    public class EcommerceManager
    {
        public IEnumerable<Product> GetProduct(string productId_list)
        {
            EcommerceRepository _repo = new EcommerceRepository();            
            return _repo.GetProduct(productId_list);
        }

        public int CountCartItems(List<CartItems> cartItemsList)
        {
            EcommerceRepository _repo = new EcommerceRepository();
            return _repo.CountCartItems(cartItemsList);
        }

        public IEnumerable<DiscountType> GetDiscountType()
        {
            EcommerceRepository _repo = new EcommerceRepository();
            return _repo.GetDiscountType();
        }
        /*to still seperate calculations*/
        public CalculatedTotal CalculateTotal(TestObject testObject ) {
            try
            {

             List<Product> productList = testObject.productList; 
             List<SalesOrderLine> salesOrderLines = testObject.salesOrderLines;

             EcommerceRepository _repo = new EcommerceRepository();
           
            List<DiscountType> discountTypeList = GetDiscountType().ToList();
            decimal total_amount = 00;
            decimal totalLocalBuyDiscount = 00;
            decimal totalBulkBuyDiscount = 00;
                int count_sales_order_lines = 0;
            string discountApplied = "";
            foreach (var salesOrderLine in salesOrderLines)
            {
               var current_product = productList.FirstOrDefault(x => x.PRODUCT_ID == salesOrderLine.PRODUCT_ID);
                   total_amount += current_product.PRODUCT_UNIT_PRICE * salesOrderLine.QUANTITY;
                 var line_amount = current_product.PRODUCT_UNIT_PRICE * salesOrderLine.QUANTITY;

                if (current_product.LOCAL_PRODUCE)
                {
                    var discount_type = discountTypeList.FirstOrDefault(x => x.DISCOUNT_TYPE_ID == 2);
                        totalLocalBuyDiscount += line_amount * (discount_type.DISCOUNT_VALUE / 100);
                        discountApplied = discount_type.DISCOUNT_TYPE_CODE;
                    }
                count_sales_order_lines++;

            }

            if (count_sales_order_lines > 1)
            {
                var discount_type = discountTypeList.FirstOrDefault(x => x.DISCOUNT_TYPE_ID == 1);
                 totalBulkBuyDiscount += total_amount * (discount_type.DISCOUNT_VALUE /100);
                discountApplied = discount_type.DISCOUNT_TYPE_CODE;
            }

                Ecommerce.Entities.Models.CalculatedTotal calculatedTotal = new CalculatedTotal
                {
                    totalAmount = total_amount,
                    totalLocalBuyDiscount = totalLocalBuyDiscount,
                    totalBulkBuyDiscount = totalBulkBuyDiscount,
                    discountType = discountApplied,
                    actualAmount = total_amount- (totalBulkBuyDiscount + totalLocalBuyDiscount)
                };
           return calculatedTotal;

            }
            catch (Exception)
            {

                throw;
            }
        }


    }
}
