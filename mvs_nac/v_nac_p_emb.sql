CREATE MATERIALIZED VIEW MV_NAC_PROD_EMB
AS 
SELECT 
	emb.producto "Producto Embarazo",
	count(*) "Nacidos"
FROM nacidos nac, producto_emb emb
WHERE nac.p_emb = emb.p_emb
GROUP BY emb.producto
ORDER BY emb.producto;

