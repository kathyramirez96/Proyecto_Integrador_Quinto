CREATE MATERIALIZED VIEW MV_NAC_ASIS
AS 
SELECT 
	asis.asistido_por "Asistido por",
	count(*) "Nacidos"
FROM nacidos nac, asistido_por asis
WHERE nac.id_asistido = asis.id_asistido
GROUP BY asis.asistido_por
ORDER BY asis.asistido_por;

