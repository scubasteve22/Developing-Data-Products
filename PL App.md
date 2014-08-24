Financial Planning App.
========================================================
author: ScubaSteve22
date: 24/08/14
transition: rotate

Purpose of this application
========================================================
transition: zoom
incremental: true
- A critical component of financial well-being is ensuring the customer is well-informed. This is the first of a suit of applications designed to be simple, factual and unbiased 
to help inform all consumers of their financial commitments and help them make informed decisions.

- Every week we will release a new product to support a different financial product and 
let consumers build a comprehensive understanding of their products and commitments.

How we calculate the details...
========================================================

The equation we use for the application is below:

M = (P($\frac{J}{1-(1+J)^{-n}}$))/F

Where:

- M = Monthly Payment (our output)
  
- P = The loan amount (the principal)
  
- J = Monthly interest ($\frac{{interest/100}}{12}$)
  
- N = Months of loan i.e. year of loan * 12

- F = Payment frequency e.g. monthly (1), fortnightly (2), weekly (4)

Example of output
========================================================
transition: concave 

So if we take an example below:

- P = 40000 (Loan amount)

- J = (20*100/12) Monthly interest  (which is 20% per annum)

- N = 60 (5 years by 12 months)

- F = 1 (monthly payment)

The output would be

```r
round((40000 * ( ((20 / 100) / 12) / (1 - (1 + ((20 / 100) / 12))^ -(5 * 12)))) / 1, 2)
```

```
[1] 1060
```



Conclusion
========================================================

The **Global Financial Crisis (GFC)** put extra focus on the need for everyone to manage financial affairs well, the key focus was on:

- Financial institutions placing more focus on serviceability
- Regulators ensuring capital provisioning was sufficient for downturn
- An increasing awareness of consumers of their own liabilities and debt footprint

This application helps all consumers become better informed and better manage their financial well-being.

*SS22 (August14)*

