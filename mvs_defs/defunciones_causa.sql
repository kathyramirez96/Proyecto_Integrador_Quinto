create  materialized view VM_DEF_CAUSA ("CAUSA FETAL","TOTAL")
AS SELECT  cf.causa_fet "CAUSA FETAL", count(*) "TOTAL"
FROM defuciones as df,causa_fetal as cf
WHERE df.id_causa = cf.id_causa
GROUP BY cf.causa_fet