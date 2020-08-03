create  materialized view VM_OCURRENCIA ("LUGAR DE OCURRENCIA","TOTAL")
AS SELECT  oc.ocurrencia "LUGAR DE OCURRENCIA", count(*) "TOTAL"
FROM defuciones as df, ocurrencia as oc
WHERE df.id_ocurrencia = oc.id_ocurrencia
GROUP BY oc.ocurrencia
