insert into estado_civil(estado_civil)
SELECT column_name
  FROM information_schema.columns
  where table_name = 'estado_civil_nacid' and
  column_name not in ('ip', 'trasformacion' ,'formato', 'subtotal', 'anios', 'region_y_provincia', 'fecha_sistema', 'transformacion', 'años', 'total');