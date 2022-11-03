
-- Example01
WITH Sub AS (
  SELECT * FROM customers
  WHERE country = 'USA'
  )
SELECT 
	firstname,
  	lastname,
   	email
FROM Sub
ORDER BY firstname DESC
LIMIT 5;

-- Example02
WITH USA_Customers AS (
	SELECT * FROM customers
  	WHERE country = 'USA'
  ), Invoices_2009 AS (
    SELECT * FROM invoices
    WHERE STRFTIME('%Y', invoicedate) = '2009'
  )

SELECT
	T1.firstname,
    SUM(T2.total) AS Sum_Invoice
FROM USA_Customers AS T1
JOIN Invoices_2009 AS T2
ON T1.customerid = T2.customerid
GROUP BY 1
ORDER BY 2 DESC;