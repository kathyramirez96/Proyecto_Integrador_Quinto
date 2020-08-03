create  materialized view VM_ESTADO ("ESTADO CIVIL","TOTAL")
AS SELECT  ec.estado_civil "SEMANA GESTACION", count(*) "TOTAL"
FROM defuciones as df, estado_civil as ec
WHERE df.id_sem_gest = ec.id_estado_civil
GROUP BY ec.estado_civil
ORDER BY ec.estado_civil