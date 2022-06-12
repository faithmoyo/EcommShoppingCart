# EcommShoppingCart
Shopping Cart Logic (User Adds Products to Basket and Applies Discount Code)

## Pre-requisites
.NET Framework at least 4.7.2 <br />
IIS <br />
SQL Server <br />
ECOMMERCE.bak <br />

## Test Data
Create local SQL DB named 'ECOMMERCE' and use .bak file to Restore the DB from the provided backup file <br />
If not already set; add IIS APPPOOL\DefaultAppPool as a DB User to the ECOMMERCE DB <br />
Open solution in at least Visual Studio 2019, ADMIN mode <br />
Create Local IIS Virtual Directories for the API and CartApp under Properties/Web <br />
Example valid discount vouchers <br />
VZGEUT0TFI1JC6X <br />
1KLWLTMPAVI7T54 <br />
PEBCKISG66QD0WB <br />
PLKIWZO8X60LB1R <br />
SOK8I2S6IU3OZIM <br />
To explore the Ecommerce.API using swagger, set virtual path and navigate to:<br />
http://localhost/EcommerceApi/swagger/ui/index#/<br />

## Assumptions
Shopping Cart states not saved to DB, cart manipulated at runtime <br />
Location Services not enabled <br />
Caching not enabled in Developer Mode <br />
Stock for all products is available <br />
Images loaded already at start and not read from a BLOB in real time <br />
Voucher Code not disabled or registered as used after they are applied <br />
Checkout as Guest allowed, registration compulsory at checkout <br />

## Tools
Bootstrap, Ajax <br />
REST <br />
Swagger <br />
Dapper <br />
Stored Procedures <br />
MSTest, MOQ, Autofac.Extras.Moq<br />
Autofac.Extras.Moq <br />
ASP.NET Sessions <br />

## Future Improvements
Display Line Totals (Price x Quantity per line)<br />
More UI feedback to enhance UX (toasts or text confirming action)<br />
Maximum number entry for the quantity that can be ordered will be the available stock for that product<br />
Higher Test Coverage<br />
Voucher application can be revoked<br />



