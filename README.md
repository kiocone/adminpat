# Adminpat dev 0.1
<br>
<p>Vista para Previzualizar informe, Imprimir Informe,Ajustar conte de numero de ultimo informe</p>
Hecho Vista de editar informe
<br>
Hecho: organizar matriz de datos e inyectar a db,
<br>
Se envia los datos del inofrme nuevo a POST
<br>
pacientes.datos en informe nuevo
<br>
nuevo informe desde lista pacientes
<br>
vista nuevo informe, colocar digito año y mes en cod informe
<br>
<h1>actualizar en las vistas</h1>
--ALTER TABLE informe ADD COLUMN informeCodTipo varchar(1) NOT NULL AFTER id;<br/>
Done! --ALTER TABLE informe ADD COLUMN informeCodNum INT(5) NOT NULL AFTER informeCodTipo;<br/>
Done! --ALTER TABLE informe CHANGE informeCodNum informe_cod_num varchar(5);<br/>
Done! --ALTER TABLE informe ADD COLUMN diagnostico TEXT NOT NULL AFTER micro;<br/>
Done! --ALTER TABLE paciente ADD COLUMN sexo varchar(1) NOT NULL AFTER informeCodTipo;</br>
Done! --ALTER TABLE patologo ADD COLUMN reg_med varchar(5) NOT NULL AFTER num_doc;</br>
Done! --ALTER TABLE patologo ADD COLUMN reg_med_ciudad varchar(15) NOT NULL AFTER reg_med;</br>
<br>
0.1 organizacion de Readme<br/>
0.1 optimizacion de DB<br/>
primer comentario desde portatil

