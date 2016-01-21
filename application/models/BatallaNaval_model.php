<?php

class BatallaNaval_model extends CI_Model
{

	public function __construct()
	{
		parent::__construct();
	}

// public function pruebaUpdate(){			//constructor de consultas
// 	$this->db->where('id',1);				//ION_AUTH     AUTH(Auntenticacion)
 // 	$this->db->update(.,.)				//ACL lista de control de accesos, Autorizacion
// }

	public function iniciarJuego()
	{

		$this->cargarpiso1();
		$this->cargarpiso2();

		$suid=$this->bnmodel->saberrol();
		if($suid==='monitor' or $suid==='profesor' or $suid==='admin'){
			$this->actualizarestados();	//funcion para actualizar estados
		} else{
			if(isset($_GET['piso']))
			echo "Acceso Denegado Solo Monitores o Profesores Pueden Hacer la Operación";
		}

	}

	//para pintar los pisos
	public function cargarpiso1()
	{

		if (isset($_POST['estado_aulas'])){
			$lahora=$_POST['estado_aulas'];
			$lafecha=$_POST['idfecha'];
			$this->session->cfecha=$lafecha;
			$this->session->chora=$lahora;

			for ($i=1; $i <=18; $i++) {
				$sql="SELECT $lahora FROM piso1 WHERE id=$i";
				$result=$this->db->query($sql, array(1));
				$piso1[$i]=$result->row()->$lahora;
			}
			$this->session->piso1=$piso1;
			$this->cargar1();	//carga el piso 1
			$this->cargardetalle($lahora);
	}
}

public function cargar1(){
	$piso1=$this->session->piso1;
	return array($piso1[1],$piso1[2],$piso1[3],$piso1[4],$piso1[5],$piso1[6],$piso1[7],
	$piso1[8],$piso1[9],$piso1[10],$piso1[11],$piso1[12],$piso1[13],$piso1[14],$piso1[15],$piso1[16],$piso1[17],$piso1[18]);
}

//cargar detalle
public function cargardetalle($lahora){
	$fram='det'.$lahora;
	$frame = str_split($fram);
	unset($frame[3]);
	$frame=implode("",$frame);

		for ($i=1; $i <=18; $i++) {
		$sql="SELECT $frame FROM piso1 WHERE id=$i";
		$result=$this->db->query($sql,array(1));
		$data1[$i]=$result->row()->$frame;
	}
	return $data1;
}

//cargar encargado
public function cargarencargado($lahora){
	$fram='enc'.$lahora;
	$frame = str_split($fram);
	unset($frame[3]);
	$frame=implode("",$frame);

		for ($i=1; $i <=18; $i++) {
		$sql="SELECT $frame FROM piso1 WHERE id=$i";
		$result=$this->db->query($sql,array(1));
		$data2[$i]=$result->row()->$frame;
	}
	return $data2;
}



//funcion para actualizar estados

	public function actualizarestados()
	{
		$piso = $this->input->get('piso', TRUE);
		$aula = $this->input->get('aula', TRUE);
		$accion = $this->input->get('accion', TRUE); //1: Reserva, 2:Ocupada, 3:Libre, 4: No disponible, 5:Alarma
		$hora = $this->input->get('hora', TRUE);
		$detalle = $this->input->get('detalle', TRUE);	//nombre profesor, mantenimiento, etc
		$encargado = $this->input->get('encargado', TRUE);	//nombre encargado
		$fecha = $this->input->get('fecha', TRUE);	//nombre encargado

		//echo "$piso";echo "$aula";ec	ho "$accion";echo "$hora"; echo "$detalle"; echo "$encargado";
		//Ir a verificar si existe el encargado

		if (isset($_GET['encargado'])){
		$enca= $this->buscarencargado($encargado);	//busca el encargado para la asignacion

				if ($enca===0){
						echo "Error El Encargado No está en la base de daatos";
					} else {

						$rolenca=$this->rolencargado($encargado);
						if ($accion==1 and $rolenca=='profesor'){

									    if(isset($_GET['piso']) and isset($_GET['aula']) and isset($_GET['accion']) and isset($_GET['hora']) and isset($_GET['detalle'])) {
										echo "Exito!";
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('h'.$hora=>$accion));
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('det'.$hora=>$detalle));
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('enc'.$hora=>$encargado));
										$this->db->where('id', $fecha);
										$this->db->update('piso'.$piso, array('fecha'=>$fecha));
									}
							} elseif ($accion!=1) {
										if(isset($_GET['piso']) and isset($_GET['aula']) and isset($_GET['accion']) and isset($_GET['hora']) and isset($_GET['detalle'])) {
										echo "Exito!";
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('h'.$hora=>$accion));
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('det'.$hora=>$detalle));
										$this->db->where('id', $aula);
										$this->db->update('piso'.$piso, array('enc'.$hora=>$encargado));
										$this->db->where('id', $fecha);
										$this->db->update('piso'.$piso, array('fecha'=>$fecha));
						}
			 		} else{
						echo "SOlo los Profesores Pueden Reservar";
					}
 		 }
}
  else  echo "";
}

public	function buscarencargado($encargado){
	$sql="SELECT nombres FROM usuarios WHERE ced=$encargado";
	$result=$this->db->query($sql, array(1));
	if ($result->num_rows() > 0) {
		$encargados=$result->row()->nombres;
	} else{
		$encargados=0;
	}

	return $encargados;
}
//solo profesores pueden reservar
public	function rolencargado($encargado){
	$sql="SELECT rol FROM usuarios WHERE ced=$encargado";
	$result=$this->db->query($sql, array(1));
	if ($result->num_rows() > 0) {
		$rolenca=$result->row()->rol;
	} else{
		$rolenca=0;
	}

	return $rolenca;
}



public function saberrol(){
	$rol=$this->session->rol;
	$sql="SELECT id FROM users WHERE email='$rol'";
	$result=$this->db->query($sql, array(1));
	$suid=$result->row()->id;

	//ir a buscar el grupo id
	$sql="SELECT group_id FROM users_groups WHERE user_id=$suid";
	$result=$this->db->query($sql, array(1));
	$suid=$result->row()->group_id;

	//ir a buscar el grupo asociado
	$sql="SELECT name FROM groups WHERE id=$suid";
	$result=$this->db->query($sql, array(1));
	$suid=$result->row()->name;

	return $suid;

}

//Funciones para el piso 2




//para pintar los pisos
public function cargarpiso2()
{


	if (isset($_POST['estado_aulas'])){
		$lahora=$_POST['estado_aulas'];
		for ($i=1; $i <=18; $i++) {
			$sql="SELECT $lahora FROM piso2 WHERE id=$i";
			$result=$this->db->query($sql, array(1));
			$piso2[$i]=$result->row()->$lahora;
		}
		$this->session->piso2=$piso2;
		$this->cargar2();	//carga el piso 1
		$this->cargardetalle2($lahora);
}
}


public function cargar2(){
	$piso2=$this->session->piso2;
	return array($piso2[1],$piso2[2],$piso2[3],$piso2[4],$piso2[5],$piso2[6],$piso2[7],
	$piso2[8],$piso2[9],$piso2[10],$piso2[11],$piso2[12],$piso2[13],$piso2[14],$piso2[15],$piso2[16],$piso2[17],$piso2[18]);
}

//cargar detalle
public function cargardetalle2($lahora){
	$fram='det'.$lahora;
	$frame = str_split($fram);
	unset($frame[3]);
	$frame=implode("",$frame);

		for ($i=1; $i <=18; $i++) {
		$sql="SELECT $frame FROM piso2 WHERE id=$i";
		$result=$this->db->query($sql,array(1));
		$data12[$i]=$result->row()->$frame;
	}
	return $data12;
}


//cargar encargado
public function cargarencargado2($lahora){
	$fram='enc'.$lahora;
	$frame = str_split($fram);
	unset($frame[3]);
	$frame=implode("",$frame);

		for ($i=1; $i <=18; $i++) {
		$sql="SELECT $frame FROM piso2 WHERE id=$i";
		$result=$this->db->query($sql,array(1));
		$data22[$i]=$result->row()->$frame;
	}
	return $data22;
}



function AulaDisponible($episo,$eaula,$ehora)
 {	$libre=3;

	$sql = "UPDATE piso$episo SET h$ehora = 3, det$ehora='',enc$ehora='' WHERE id = $eaula";
	$this->db->query($sql,array(1));

	echo "Aula Libre";

 	//echo $episo;echo $eaula;echo $ehora;
}


//Funcion para listar el inventario
public function listarinventario1(){


$query=$this->db->get('piso1');
echo "<br>";
echo "PISO 1";
echo "<br>";echo "Aula------------Inventario";
foreach ($query->result() as $row) {
	echo "<br>";
	echo $row->id;
	echo "   -    ".$row->inventario;

}
echo "<br>";
echo "**************************************";
$query=$this->db->get('piso2');
echo "<br>";
echo "PISO 2";
echo "<br>";echo "Aula------------Inventario";
foreach ($query->result() as $row) {
	echo "<br>";
	echo $row->id;
	echo "   -    ".$row->inventario;

}


}

//Funcuión para obterner datos sobre el inventario
public function AdmInventario($piso,$aula){
	//$sql="SELECT inventario FROM piso$piso WHERE id=$aula";
	return $this->db->select("inventario")->where("id", $aula)->get("piso".$piso)->row();
}

public function updateinventario($piso,$aula,$newinventario){
	$this->db->where('id', $aula);
	$this->db->update('piso'.$piso, array('inventario'=>$newinventario));

}

}
