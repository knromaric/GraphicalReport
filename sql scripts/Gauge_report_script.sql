USE ReportingDB
GO

select sum(amountSpent) as AmountSpent, 
t3.TargetAmount, 
round(sum(amountSpent)/t3.TargetAmount,2)*100 as PercentageToTarget
from dbo.tblFactCustomerPurchases t1
inner join dbo.tblDimProduct t2 
   on t1.ProductKey=t2.ProductKey
inner join dbo.tblSalesTarget t3 
   on t2.ProductCategoryKey=t3.ProductCategoryKey
where ProductCategory='fresh fruit'
group by t3.TargetAmount
