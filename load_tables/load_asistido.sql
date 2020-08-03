INSERT INTO public.asistido_por(
	asistido_por)
	SELECT column_name
  FROM information_schema.columns
  where table_name = 'na_asis' and
  column_name like '%asistencia%';