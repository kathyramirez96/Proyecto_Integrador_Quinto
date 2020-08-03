INSERT INTO producto_emb(producto)
SELECT column_name
  FROM information_schema.columns
  where table_name = 'nnvr_pme' and
  column_name not in ('ip', 'formato', 'subtotal', 'anios', 'nacidos_vivos', 'fecha_sistema', 'transformacion', 'años');
  