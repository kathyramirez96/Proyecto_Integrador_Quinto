CREATE MATERIALIZED VIEW MV_NAC_EST_CIV
AS 
SELECT 
	civ.estado_civil "Estado civil",
	count(*) "Nacidos"
FROM nacidos nac, estado_civil civ
WHERE nac.id_estado_civil = civ.id_estado_civil
GROUP BY civ.estado_civil
ORDER BY  civ.estado_civil;

