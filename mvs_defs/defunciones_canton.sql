create  materialized view VM_DEF_CANTON ("CANTON","PROVINCIA","TOTAL")
AS SELECT  ca.canton "CANTON",pr.provincia "PROVINCIA", count(*) "TOTAL"
FROM defuciones as df, canton as ca,provincia as pr
WHERE df.id_canton = ca.id_canton
and ca.id_provincia = pr.id_provincia
GROUP BY pr.provincia,ca.canton
ORDER BY pr.provincia