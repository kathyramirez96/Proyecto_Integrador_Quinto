insert into sem_gest(sem_gest)
select column_name 
from information_schema.columns
where table_name = 'def_sem' and
column_name not in ('anios', 'total', 'fecha_sistema', 'trasformacion', 'ip', 'formato');