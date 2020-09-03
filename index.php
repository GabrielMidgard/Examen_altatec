<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type,x-prototype-version,x-requested-with');
    //header("Content-type: application/json; charset=utf-8");

    $sales = array(
                array('mes' => 'Enero', 'año' => 2020, 'venta' => 100 ),
                array('mes' => 'Febrero', 'año' => 2020, 'venta' => 400 ),
                array('mes' => 'Marzo', 'año' => 2020, 'venta' => 700 ),
                array('mes' => 'Abril', 'año' => 2020, 'venta' => 1200 ),
                array('mes' => 'Mayo', 'año' => 2020, 'venta' => 525 ),
                array('mes' => 'Junio', 'año' => 2020, 'venta' => 525 ),
                array('mes' => 'Julio', 'año' => 2020, 'venta' => 0 ),
                array('mes' => 'Agosto', 'año' => 2020, 'venta' => 1200 ),
                array('mes' => 'Septiembre', 'año' => 2020, 'venta' => 1750 ),
            );
    $client_1 = array('id' => 1, 'Nombre' => 'José Pérez', 'email_1' => 'Jose.perez@gmail.com', 'email_2' => null, 'direccion'=> 'Av Periferico sur 2230, Colonia Ciudad Granja. CP:46983, Zapopan, Jal. México',
    'phone' => '3356896320', 'ventas' => $sales);

    $client_2 = array('id' => 2, 'Nombre' => 'Roberto Cano', 'email_1' => 'roberto@gmail.com', 'email_2' => 'rcano@gmail.com', 'direccion'=> 'Av Cruz de sur 2560, Zapopan, Jalisco. México. CP: 45080',
     'phone' => '6985741230',  'ventas' => $sales);

     $client_3 = array('id' => 2, 'Nombre' => 'Diego Ramírez', 'email_1' => 'drami@gmail.com', 'email_2' => null, 'direccion'=> 'Av Patria 2033, Colonia Jardines del Sur, CP 44987. Guadalajara, Jal. México',
     'phone' => '2589631470',  'ventas' => $sales);

    $response = array( $client_1,  $client_2);

    echo json_encode($response, JSON_UNESCAPED_UNICODE);
?>