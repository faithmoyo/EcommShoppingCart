using Ecommerce.Entities.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace Ecommerce.Business.UnitTests
{
    [TestClass]
    public class EcommerceManagerTests
    {
        [TestMethod]
        public void CalculateTotal_NoVoucherEntered_FullAmountReturnedNoDiscount()
        /*Method_Scenario_ExpectedBehaviour*/
        {
            //Arrange
            var ecommManager = new EcommerceManager();

            //Act
            var currentShoppingCart = new ShoppingCart
            {
                productList = new List<Product>()
                {
                new Product(){PRODUCT_ID=2,PRODUCT_UNIT_PRICE=10},
                new Product(){PRODUCT_ID=3,PRODUCT_UNIT_PRICE=20},
                new Product(){PRODUCT_ID=4,PRODUCT_UNIT_PRICE=30}
                },
                salesOrderLines = new List<SalesOrderLine>()
                {
                new SalesOrderLine(){PRODUCT_ID=2,QUANTITY=1},
                new SalesOrderLine(){PRODUCT_ID=3,QUANTITY=1},
                new SalesOrderLine(){PRODUCT_ID=4,QUANTITY=1}
                },
                discountVoucher = string.Empty
            };

            var result = ecommManager.CalculateTotal(currentShoppingCart);

            //Assert
            Assert.AreEqual(60, result.actualAmount);
        }

        [TestMethod]
        public void GetCartTotals_EmptyCart_ZeroTotalsReturned()
        /*Method_Scenario_ExpectedBehaviour*/
        {
            //Arrange
            var ecommManager = new EcommerceManager();

            var orderLines = new List<SalesOrderLine>()
            {

            };

            var products = new List<Product>()
            {

            };

            //Act

            var result = ecommManager.GetCartTotals(orderLines, products);

            //Assert

            Assert.AreEqual(0, result);
        }

        [TestMethod]
        public void GetCartTotals_PopulatedCart_CorrectTotalsReturned()
        /*Method_Scenario_ExpectedBehaviour*/
        {
            //Arrange
            var ecommManager = new EcommerceManager();

            var orderLines = new List<SalesOrderLine>()
            {
                new SalesOrderLine(){PRODUCT_ID=2,QUANTITY=1},
                new SalesOrderLine(){PRODUCT_ID=3,QUANTITY=1},
                new SalesOrderLine(){PRODUCT_ID=4,QUANTITY=1}
            };

            var products = new List<Product>()
            {
                new Product(){PRODUCT_ID=2,PRODUCT_UNIT_PRICE=10},
                new Product(){PRODUCT_ID=3,PRODUCT_UNIT_PRICE=20},
                new Product(){PRODUCT_ID=4,PRODUCT_UNIT_PRICE=30}
            };

            //Act

            var result = ecommManager.GetCartTotals(orderLines, products);

            //Assert

            Assert.AreEqual(60, result);

        }

        [TestMethod]
        public void GetDiscountedTotals_ValidDiscountCodeApplied_TotalAmountNetDiscountReturned()
        /*Method_Scenario_ExpectedBehaviour*/
        {
            //Arrange
            var ecommManager = new EcommerceManager();

            DiscountType discount = new DiscountType()
            {
                DISCOUNT_TYPE_CODE = "PEBCKISG66QD0WB",//example from Discounts Stored_Proc
                DISCOUNT_VALUE = 5
            };

            var assumedCartTotal = 40;
            string discountCodeApplied;

            //Act

            var result = ecommManager.GetDiscountedTotals(discount, assumedCartTotal, out discountCodeApplied);

            //Assert

            Assert.AreEqual(2, result);
            Assert.AreEqual("PEBCKISG66QD0WB", discountCodeApplied);
        }
    }
}
