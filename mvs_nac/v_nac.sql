CREATE MATERIALIZED VIEW MV_NAC
AS SELECT id_nacido "id", edad_madre edad, sexo, hij_vi_ma "hijos vivos", 
	prod.producto "Producto embarazo", asis.asistido_por "Asistencia", 
	canton.canton "Canton", inst.nivel_inst "Instruccion", 
	oc.ocurrencia "Lugar de ocurrencia", civ.estado_civil "Estado civil"
FROM nacidos nac, canton, asistido_por asis, 
	producto_emb prod, nivel_insti inst,
	ocurrencia oc, estado_civil civ
WHERE nac.id_canton = canton.id_canton
AND nac.id_asistido = asis.id_asistido
AND nac.p_emb = prod.p_emb
AND nac.id_inst = inst.id_inst
AND nac.id_ocurrencia = oc.id_ocurrencia
AND nac.id_estado_civil = civ.id_estado_civil;