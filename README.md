# EcommShoppingCart
Shopping Cart Logic (User Adds Products to Basket and Applies Discount Code)

## Pre-requisites
.NET Framework at least 4.7.2 <br />
IIS <br />
SQL Server <br />
ECOMMERCE.bak <br />

## Test Data
Example valid discount vouchers <br />
VZGEUT0TFI1JC6X <br />
1KLWLTMPAVI7T54 <br />
PEBCKISG66QD0WB <br />
PLKIWZO8X60LB1R <br />
SOK8I2S6IU3OZIM <br />

## Assumptions
Location Services not enabled <br />
Caching Services not enabled <br />
Images loaded already at start and not read from a BLOB in real time <br />
Voucher Code not disabled or registered as used after they are applied <br />
Checkout as Guest allowed, registration compulsory at checkout <br />

## Tools
Bootstrap, Ajax <br />
REST <br />
Dapper <br />
Stored Procedures <br />
MSTest, MOQ <br />
Autofac.Extras.Moq <br />
ASP.NET Sessions <br />


