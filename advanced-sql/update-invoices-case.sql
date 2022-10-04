Update invoices
Set "Total" = 
Case 
     WHEN  "BillingCountry"='France' then "Total"+'3'
     WHEN  "BillingCountry"='USA' then "Total"+'5'
     ELSE "Total"+'1'
end