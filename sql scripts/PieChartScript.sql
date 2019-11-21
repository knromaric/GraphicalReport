USE ReportingDB
GO


select t2.ProductCategory, 
sum(t1.amountSpent) as AmountSpentPerProduct, 
round(sum(t1.AmountSpent)/sum(sum(amountSpent)) over(), 2) as PercentagePerProduct
from dbo.tblFactCustomerPurchases t1
inner join dbo.tblDimProduct t2 on t1.ProductKey=t2.ProductKey
where year(t1.PurchaseDate)=2016
group by t2.ProductCategory
