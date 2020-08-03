CREATE MATERIALIZED VIEW MV_NAC_OCURRENCIA
AS 
SELECT 
	oc.ocurrencia "Lugar de ocurrencia",
	count(*) "Nacidos"
FROM nacidos nac, ocurrencia oc
WHERE nac.id_ocurrencia = oc.id_ocurrencia
GROUP BY oc.ocurrencia
ORDER BY oc.ocurrencia;

