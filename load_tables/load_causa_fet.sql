insert into causa_fetal(causa_fet)
select lista_internacional_detallada 
from causa_def_fetal_edad
where lista_internacional_detallada not in ('Total');