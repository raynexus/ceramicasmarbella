<?PHP

/**
 * Definición de la clase Contacto
 */

namespace App\Modulos\Contacto\Controllers;

use Jida\Helpers as Helpers;
use App\Controllers\AppController as AppController;

class ContactoController extends AppController
{

    var $correos = [MAIL_CONTACTO];

    function index()
    {

        $this->vista = 'contacto';
        $form = new \Jida\Render\Formulario('Contacto');
        $form->boton('principal')->attr('value', 'Enviar Correo');

        if ($this->post('btnContacto')) :

            if ($form->validar()) {

                $this->_enviarCorreo($this->post(), 'Contacto | ' . NOMBRE_APP);
                $msj = Helpers\Mensajes::crear('info', 'Correo enviado exitosamente, pronto estaremos en contacto contigo.', TRUE);
                Helpers\Sesion::set('msjContacto', $msj);
                $this->redireccionar('/contacto/#formContacto');
            }
        endif;

        $this->data([
            'title' => 'Contacto',
            'titulo' => 'Contacto',
            'imgHeader' => 'cocinaOriginal.jpg',
            'form' => $form->armarFormulario()
        ]);
    }

    private function _enviarCorreo($post, $asunto)
    {

        $correo = new \Jida\Componentes\Correo();
        $correo->plantilla('contacto')->data([
            'nombre' => $post['nombres'] . ' ' . $post['apellidos'],
            'empresa' => $post['empresa'],
            'telefono' => $post['telefono'],
            'contacto' => $post['contacto'][0],
            'mensaje' => $post['mensaje'],
            'correo' => $post['correo']
        ])->enviar($this->correos, $asunto);
    }
}
