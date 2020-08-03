create  materialized view VM_DEF_SEMANA ("SEMANA GESTACION","TOTAL")
AS SELECT  sg.sem_gest"SEMANA GESTACION", count(*) "TOTAL"
FROM defuciones as df, sem_gest as sg
WHERE df.id_sem_gest = sg.id_sem_gest
GROUP BY sg.sem_gest
ORDER BY sg.sem_gest