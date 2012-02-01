SELECT *
FROM   (SELECT product_code, quantity
        FROM   pivot_test)
PIVOT XML (SUM(quantity) AS sum_quantity FOR (product_code) IN (SELECT DISTINCT product_code 
                                                                FROM   pivot_test
                                                                WHERE  id < 10));