using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
       public Boolean LOCAL_PRODUCE;

    }
}
