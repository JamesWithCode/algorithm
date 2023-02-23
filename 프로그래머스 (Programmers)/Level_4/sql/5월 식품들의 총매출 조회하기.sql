SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, (FP.PRICE*SUM(FO.AMOUNT)) AS TOTAL_SALES
FROM FOOD_PRODUCT FP JOIN FOOD_ORDER FO ON FP.PRODUCT_ID=FO.PRODUCT_ID
WHERE FO.PRODUCE_DATE LIKE '____-05-__'
GROUP BY FP.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FP.PRODUCT_ID ASC;

