using System;

namespace Ecommerce.Entities.Models
{
    public class Product
    {
       public int PRODUCT_ID;
       public string PRODUCT_CODE;
       public string PRODUCT_DESCRIPTION;
       public decimal PRODUCT_UNIT_PRICE;
       public DateTime PRODUCT_DATE_INSERT;
       public DateTime PRODUCT_DATE_EDIT;
       public string  PRODUCT_IMAGE;
       public int PRODUCT_TYPE_ID;
       public bool LOCAL_PRODUCE;

    }
}
