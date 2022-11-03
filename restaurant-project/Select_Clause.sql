-- SELECT Clause
SELECT 
    order_record.orderID AS Order_No,
    menu.name AS Menu_Name,
    invoice.invoiceDate AS Sell_Date
FROM menu, order_record, invoice
WHERE menu.menuID = order_record.menuID
    AND invoice.invoiceID = order_record.invoiceID
    AND order_record.orderID IN (1, 3, 5, 7, 9);

-- Join Clause
SELECT 
	*
FROM menu A 
INNER JOIN order_record B ON A.menuid = B.menuID;