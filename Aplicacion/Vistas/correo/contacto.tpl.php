<?php include_once 'header.tpl.php' ?>
<tr>
	<td>
		<h2>{{:nombre}} <small style="font-weight: lighter">ha enviado un correo</small></h2>
		<p>Empresa: <strong>{{:empresa}}</strong></p>
		<p>Datos de contacto: {{:correo}}, {{:telefono}}.</p>
		<div style="padding:20px 0px;">
			<p>{{:mensaje}}</p>
		</div>
	</td>
</tr>

<tr>
	<td class="texto texto-nota" style="padding:15px;font-size:11px;color:#494949;background:#f5f5f5;border-top:1px solid #dcdcdc;border-bottom:1px solid #dcdcdc;">
		<h3>{{:nombre}} se entero de nosotros a trav&eacute;s de: {{:contacto}}</h3>
	</td>
</tr>

<?php include_once 'footer.tpl.php' ?>