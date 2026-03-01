select*from customers;
select*from products;
select*from sales;
select*from transactions;
select count(ï»¿Transaction_ID) as TotalOrders from transactions;
select sum(Quantity*Unit_Price) as TotalRevenue from transactions t join products p on t.Product_ID=ï»¿Product_ID;
select p.Category, sum(Quantity*Unit_Price) as revenue from transactions t join products p on t.Product_ID=ï»¿Product_ID Group by p.Category ;
select p.Product_Name,sum((p.Unit_Price-p.Cost_Price)*t.Quantity) AS TotalProfit from transactions t join products p on t.Product_ID=p.ï»¿Product_ID group by p.Product_Name order by TotalProfit Desc limit 5;
select s.region ,sum(t.Quantity*p.Unit_Price) as Revenue from transactions t join products p on t.Product_ID=p.ï»¿Product_ID join sales s on t.Store_ID= ï»¿Store_ID group by s.region;
select city ,sum((p.Unit_Price-p.Cost_Price)*t.Quantity) as Profit from transactions t join products p on t.Product_ID=p.ï»¿Product_ID join sales on t.Store_ID=ï»¿Store_ID group by city;
select p.Product_Name,sum(t.Quantity*p.Unit_Price) as Revenue from transactions t join products p on t.Product_ID=p.ï»¿Product_ID GROUP BY Product_Name order by Revenue limit 1
