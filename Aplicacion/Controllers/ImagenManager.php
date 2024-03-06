<?php

/**
 * Trait para manejo de funciones generales de Imagenes
 */

namespace App\Controllers;

use Jida\Helpers 					as Helpers;
use App\Controllers\ImagenManager 	as ImagenManager;

trait ImagenManager
{

	function cargarImagen($nombre, $rutaDestino, $dirTemporal, $alto, $ancho, $retorno = false, $limpiar = false, $json = false)
	{
		if (isset($_FILES['_jcargaArchivo'])) {
			$imagen = new Helpers\Imagen('_jcargaArchivo');
			if ($imagen->validarCarga()) {
				if ($imagen->moverArchivosCargados($dirTemporal, TRUE, 'imagen')) {
					$archivo = $imagen->getArchivosCargados();

					if (!Helpers\Directorios::crear($rutaDestino))
						Helpers\Directorios::crear($rutaDestino);

					if ($limpiar && Helpers\Directorios::getTotalArchivos($rutaDestino) > 0)
						Helpers\Directorios::limpiar($rutaDestino);

					if ($json)
						return $imagen->resize($dirTemporal . $archivo[0]['nombre'], $nombre, $rutaDestino, true);
					else {
						if ($retorno) {
							$imagen->resizeImagen($dirTemporal . $archivo[0]['nombre'], $nombre, $alto, $ancho, $rutaDestino);
							return $dirTemporal . $archivo[0]['nombre'];
						} else
							return $imagen->resizeImagen($dirTemporal . $archivo[0]['nombre'], $nombre, $alto, $ancho, $rutaDestino);
					}
				}
			}
		}

		return FALSE;
	}
}
