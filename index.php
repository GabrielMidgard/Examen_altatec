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
    $response = array('cliente' => 'Gabriel Vázquez', 'email' => 'test@mail.com', 'ventas' => $sales);

    echo json_encode($response, JSON_UNESCAPED_UNICODE);
?>