# Write your MySQL query statement below
Select Customers.name as Customers from Customers
Left join Orders on Customers.id = Orders.customerId
Where Orders.id is null