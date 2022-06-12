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

        #region Global Variables
        public EcommerceRepository _repo;
        #endregion

        #region Ctor
        public EcommerceManager()
        {
            _repo = new EcommerceRepository();
        }
        #endregion

        public IEnumerable<Product> GetProduct(string productId_list)//integration
        {
            return _repo.GetProduct(productId_list);
        }

        public int CountCartItems(List<CartItem> cartItemsList) //integration
        {
            return _repo.CountCartItems(cartItemsList);
        }

        public CalculatedTotal CalculateTotal(ShoppingCart sessionShoppingCart)
        {
            CalculatedTotal calculatedTotal = new CalculatedTotal();

            try
            {
                List<Product> productList = sessionShoppingCart.productList;
                List<SalesOrderLine> salesOrderLines = sessionShoppingCart.salesOrderLines;
                var discountVoucher = sessionShoppingCart.discountVoucher;

                if (productList.Count > 0 && salesOrderLines.Count > 0)
                {
                    decimal total_amount, totalVoucherDiscount = NILVALUE;
                    var discountApplied = string.Empty;

                    var isVoucherExist = Regex.Replace(discountVoucher, @"\s+", "") != string.Empty;

                    total_amount = GetCartTotals(salesOrderLines, productList);

                    if (isVoucherExist)
                    {
                        DiscountType discountType = _repo.GetDiscountType(discountVoucher);

                        totalVoucherDiscount = GetDiscountedTotals(discountType, total_amount, out discountApplied);
                    }
                    calculatedTotal = new CalculatedTotal
                    {
                        subTotalAmount = total_amount,
                        totalVoucherDiscount = decimal.Round(totalVoucherDiscount, 2, MidpointRounding.AwayFromZero),
                        discountType = discountApplied,
                        actualAmount = decimal.Round(total_amount - totalVoucherDiscount, 2, MidpointRounding.AwayFromZero),
                        discountMessage = (isVoucherExist && totalVoucherDiscount > 1) ? "Voucher Applied!" : "Voucher Invalid!"
                    };
                    return calculatedTotal;

                }
                else
                    return calculatedTotal;
            }
            catch (Exception ex)
            {

                var message = string.Format("Error occured on calculating session shopping cart total" + ex);
                return calculatedTotal;
            }
        }

        public decimal GetCartTotals(List<SalesOrderLine> orderLines, List<Product> productList)
        {
            decimal subTotalAmount = NILVALUE;

            foreach (var salesOrderLine in orderLines)
            {
                var current_product = productList.FirstOrDefault(x => x.PRODUCT_ID == salesOrderLine.PRODUCT_ID);
                subTotalAmount += current_product.PRODUCT_UNIT_PRICE * salesOrderLine.QUANTITY;
            }

            return subTotalAmount;
        }

        public decimal GetDiscountedTotals(DiscountType discountType, decimal total_amount, out string discountApplied)
        {
            decimal totalVoucherDiscount = NILVALUE;
            discountApplied = string.Empty;

            if (!(discountType is null))
            {
                totalVoucherDiscount += total_amount * (discountType.DISCOUNT_VALUE / 100);
                discountApplied = discountType.DISCOUNT_TYPE_CODE;
            }

            return totalVoucherDiscount;
        }

    }
}
