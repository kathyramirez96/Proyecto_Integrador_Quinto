create  materialized view VM_DEF_NIVEL ("EDUCACION","TOTAL")
AS SELECT  ni.nivel_inst "EDUCACION", count(*) "TOTAL"
FROM defuciones as df, nivel_insti as ni
WHERE df.nivel_educacion = ni.id_inst
GROUP BY ni.nivel_inst