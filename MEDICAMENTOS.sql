-- QUERY MEDICAMENTOS

-- =============================================================== TABLA 1 ======================================================================================
SELECT TOP 1000 * FROM data_uni;

-- TOTAL REDES POR EJEC
SELECT COUNT(DISTINCT red) AS total_redes
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS';


-- LIMPIAR COMILLAS DOBLES
UPDATE data_uni SET nombre_med = REPLACE(nombre_med, '"', '');

-- LA TABLA ES DECIMAL
ALTER TABLE data_uni
ALTER COLUMN disp DECIMAL(10, 2);

ALTER TABLE data_uni
ALTER COLUMN stock_tot INT;

ALTER TABLE data_uni
ALTER COLUMN cpa DECIMAL(10, 2);


-- LISTA DE NOMBRE_EJE
SELECT DISTINCT nombre_eje FROM data_uni;

-- FILTRO POR NOMBRE_EJE , RED 
SELECT * FROM data_uni WHERE nombre_eje = 'AMAZONAS' AND red = 'CONDORCANQUI';

-- FILTRO POR NOMBRE_EJE , RED y disp > 15
SELECT * 
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS' 
  AND red = 'CONDORCANQUI' 
  AND disp > 15;

-- FILTRO POR NOMBRE_EJE , RED y disp > 15 |  CPA * 15 | STOCK_TOT - CPA15
SELECT *, 
    (cpa * 15) AS cpa15,
    (stock_tot - (cpa * 15)) AS resultado_final
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS' 
  AND red = 'CONDORCANQUI' 
  AND disp > 15;

-- FINAL TABLA 1

SELECT *, 
    (cpa * 15) AS cpa15,
    (stock_tot - (cpa * 15)) AS resultado_final,
    (
        CASE WHEN oct23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN nov23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN dic23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ene24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN feb24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN mar24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN abr24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN may24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jun24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jul24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ago24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN set24tot > 0 THEN 1 ELSE 0 END
    ) AS contador
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS' 
  AND red = 'CONDORCANQUI' 
  AND disp > 15;


 -- TOTAL UNICO FILTRO DISP TABLA 1
  SELECT *, 
    (cpa * 15) AS cpa15,
    (stock_tot - (cpa * 15)) AS resultado_final,
    (
        CASE WHEN oct23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN nov23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN dic23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ene24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN feb24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN mar24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN abr24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN may24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jun24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jul24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ago24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN set24tot > 0 THEN 1 ELSE 0 END
    ) AS contador
FROM data_uni 
WHERE disp > 15;  -- Solo filtramos por disp


-- =============================================================== TABLA 3 ======================================================================================

-- FILTRO POR NOMBRE_EJE , RED y disp < 2 |  CPA * 6 | CPA6 - STOCK_TOT  
SELECT *, 
    (cpa * 6) AS cpa6,
    ((cpa * 6) - stock_tot) AS resultado_final
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS' 
  AND red = 'CONDORCANQUI' 
  AND disp < 2;

 -- FILTRO POR NOMBRE_EJE , RED y disp < 2 |  CPA * 6 | CPA6 - STOCK_TOT  CON EL CONTADOR
SELECT *, 
    (cpa * 6) AS cpa6,
    ((cpa * 6) - stock_tot) AS resultado_final,
    (
        CASE WHEN oct23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN nov23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN dic23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ene24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN feb24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN mar24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN abr24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN may24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jun24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jul24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ago24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN set24tot > 0 THEN 1 ELSE 0 END
    ) AS contador
FROM data_uni 
WHERE nombre_eje = 'AMAZONAS' 
  AND red = 'CONDORCANQUI' 
  AND disp < 2;


 -- TOTAL UNICO FILTRO DISP TABLA 3
SELECT *, 
    (cpa * 6) AS cpa6,
    ((cpa * 6) - stock_tot) AS resultado_final,
    (
        CASE WHEN oct23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN nov23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN dic23tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ene24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN feb24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN mar24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN abr24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN may24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jun24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN jul24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN ago24tot > 0 THEN 1 ELSE 0 END +
        CASE WHEN set24tot > 0 THEN 1 ELSE 0 END
    ) AS contador
FROM data_uni 
WHERE disp < 2;


SELECT *
FROM [dbo].[data_uni]
WHERE tipomed LIKE '%M%' 

SELECT *
FROM [dbo].[dbo_D12SET24_M]
WHERE tipomed LIKE '%M%' 

-- =====================================================   CONTEO REGISTROS ==========================================================
SELECT COUNT(*)
FROM [dbo].[data_uni]
WHERE tipomed LIKE '%M%'

SELECT COUNT(*)
FROM [dbo].[dbo_D12SET24_M]
WHERE tipomed LIKE '%M%'


SELECT COUNT(*)
FROM [dbo].[data_uni]
WHERE tipomed LIKE '%I%'

SELECT COUNT(*)
FROM [dbo].[dbo_D12SET24_I]
WHERE tipomed LIKE '%I%'


SELECT *
FROM [dbo].[dbo_D12SET24_M] AS m
LEFT JOIN [dbo].[data_uni] AS u
ON m.codigo_med = u.codigo_med AND m.tipomed = u.tipomed
WHERE m.tipomed = 'M' AND u.codigo_med IS NULL;

SELECT *
FROM [dbo].[dbo_D12SET24_I]
WHERE nombre_eje IS NULL OR nombre_eje = '';

SELECT *
FROM [dbo].[data_uni]
WHERE nombre_eje IS NULL OR nombre_eje = '';

SELECT *
FROM [dbo].[data_uni]
WHERE nombre_eje IS NULL OR nombre_eje = '';

DELETE FROM [dbo].[dbo_D12SET24_M]
WHERE nombre_eje IS NULL OR nombre_eje = '';

DELETE FROM [dbo].[dbo_D12SET24_I]
WHERE nombre_eje IS NULL OR nombre_eje = '';