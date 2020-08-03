INSERT INTO ocurrencia(ocurrencia)
SELECT column_name
  FROM information_schema.columns
  where table_name = 'tabla_1_2_5' and
  column_name not in ('ip', 'formato', 'subtotal', 'anios', 'nacidos_vivos', 'fecha_sistema', 'transformacion', 'años');
  