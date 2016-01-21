<?php
require('Pusher.php');

$key="aeeda5f415f3fe3ca851";
$secret="4800d3ba87f1d5bd1e03";
$app_id="160362";

$valor=(isset($_POST['valor']))?$_POST['valor']:0;
$dato=(isset($_POST['dato']))?$_POST['dato']:0;
$channel=(isset($_POST['channel']))?$_POST['channel']:0;
$pusher = new Pusher($key, $secret, $app_id);

if($channel!=0){
	$pusher->trigger('rtch'.$channel, 'actualizar', array('valor' => $dato) );
	exit;
}
else{
	$pusher->trigger('rtch1', 'actualizar', array('valor' => $valor) );
}
?>
