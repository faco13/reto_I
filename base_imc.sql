ALTER TABLE prueba_imc.persona CHANGE COLUMN pesa peso bigint;
ALTER TABLE prueba_imc.persona CHANGE COLUMN fecha_registro altura bigint;
desc prueba_imc.persona;
select * from prueba_imc.persona;
ALTER TABLE prueba_imc.persona CHANGE COLUMN altu altura float;
ALTER TABLE prueba_imc.persona ADD COLUMN imc float as  ( peso / ( altura * altura ));
insert into prueba_imc.persona(apellido,nombre,numero_documento,tipo_documento,altura,peso)
		values("espinosa","wendy",10958088666,"cc",1.50,51);
insert into prueba_imc.persona(apellido,nombre,numero_documento,tipo_documento,altura,peso)
		values("pepo","perez",10968088666,"cc",1.87,111);
