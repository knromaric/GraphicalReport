USE ReportingDB
GO	

select year(PurchaseDate) as PurchaseYear, 
sum(amountSpent) as amountSpent
from dbo.tblFactCustomerPurchases
group by year(PurchaseDate)
order by year(PurchaseDate)