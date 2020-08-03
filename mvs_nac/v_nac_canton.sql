CREATE MATERIALIZED VIEW MV_NAC_CANTON
AS SELECT 
	canton.canton "Canton", provincia.provincia "Provincia",
	count(*) "Nacidos"
FROM nacidos nac, canton, provincia
WHERE nac.id_canton = canton.id_canton
AND canton.id_provincia = provincia.id_provincia
GROUP BY provincia.provincia, canton.canton
ORDER BY provincia.provincia;

