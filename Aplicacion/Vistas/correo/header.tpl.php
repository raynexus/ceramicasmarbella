<html lang="es">

<head>
	<meta charset="UTF-8">
	<title>{{:nombre_app}}</title>
</head>
<style type="text/css">
	body {
		background: #F5F5F5;
		font-family: Verdana;
		color: #808080;
		padding-top: 30px;
	}

	table {

		padding: 40px;
	}

	td.header {
		padding: 20px;
	}

	.img-logo {
		border: none;
		outline: none;
		height: 30px;
	}

	.table-main {
		border-top: 8px solid #00a8db;
		width: 800px;
		margin: auto;
		background: #fff;
	}

	.rif {
		display: block;
		margin-top: 0;
		font-size: 10px;

	}

	.titulo {
		color: #00a8db;
		font-size: 20px;
		text-transform: uppercase;
		font-weight: bolder;
	}

	.button-container {
		text-align: center;
		margin-top: 30px;
		margin-bottom: 30px;

	}

	.btn-link {
		display: inline-block;
		margin: auto;
		color: #fff;
		background: #E48202;
		text-transform: uppercase;
		padding: 8px 12px;
		text-decoration: none;
	}

	.btn-link:hover {
		background: #E14F1C;
	}

	.text-detalle {
		font-size: 11px;
		text-transform: uppercase;

	}

	.msj.msj-alerta {
		border: 1px solid #FFFFA3;
		margin-top: 30px;
		border: none;
		background: #FFFFEE;
		color: #808080;
		padding: 15px;
	}

	.texto.texto-nota {
		padding: 15px;
		font-size: 11px;
		color: #494949;
		background: #f5f5f5;
		border-top: 1px solid #dcdcdc;
		border-bottom: 1px solid #dcdcdc;
	}
</style>

<body style="background:#F5F5F5;
			font-family:Helvetica;
			color:#808080;
			padding-top:30px;">
	<table class="table-main" style="border-top:8px solid #00a8db;width:800px;margin:auto;background:#fff;
			font-size:16px;
			padding:40px;
			font-family:Helvetica;
			color:#808080;
			">
		<tr>
			<td style="padding:0px;">
				<header>
					<a href="<?= URL_WEB ?>">
						<img src="{{:logo_app}}" height="60px" class="img-logo" style="border:none;outline: none;height:60px;" />
					</a>
				</header>
			</td>
		</tr>