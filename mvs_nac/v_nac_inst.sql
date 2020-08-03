CREATE MATERIALIZED VIEW MV_NAC_INST
AS 
SELECT 
	inst.nivel_inst "Nivel Insitucional",
	count(*) "Nacidos"
FROM nacidos nac, nivel_insti inst
WHERE nac.id_inst = inst.id_inst
GROUP BY inst.nivel_inst
ORDER BY inst.nivel_inst;

