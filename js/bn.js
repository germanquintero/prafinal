$( 'document' ).ready(piso1);
$( 'document' ).ready(piso2);

function piso1(event)
{
	console.log('holaa');
	$.ajax(
		{
			url:'/prafinal/juego/atacar/',  //llama el metodo atacar
			type:'post',
			dataType:'json',
		}
	)
	.done(
		function(rpta)
		{
			console.log(rpta);
			for (var i = 0; i <18; i++) {
					//reservada
					if (rpta.piso1[i-1]==1) {
						$("#pos-"+i).removeClass('btn-danger btn-default btn-info btn-success');
						$( "#pos-"+i).addClass('btn-warning');
						//ocupada
					} else if (rpta.piso1[i-1]==2) {
						$("#pos-"+i).removeClass('btn-danger btn-default btn-warning btn-success');
					   $( "#pos-"+i).addClass('btn-info');
					   //libre
				   } else if (rpta.piso1[i-1]==3) {
					   $("#pos-"+i).removeClass('btn-danger btn-default btn-warning btn-info');
					   $( "#pos-"+i).addClass('btn-success');
					   //no disponible
				   }  else if (rpta.piso1[i-1]==4) {
					   $("#pos-"+i).removeClass('btn-danger btn-warning btn-info btn-success');
						  $( "#pos-"+i).addClass('btn-default');
						  //alarma
					} else if (rpta.piso1[i-1]==5) {
						$("#pos-"+i).removeClass('btn-default btn-warning btn-info btn-success');
						 $( "#pos-"+i).addClass('btn-danger');
					 }

	 }


			console.log(rpta);

		}
	)
	.fail(
		function(xhr,textStatus)
		{
			console.log(textStatus);
		}
	);

}


function piso2(event)
{
	console.log('holaa');
	$.ajax(
		{
			url:'/prafinal/juego/atacar/',  //llama el metodo atacar
			type:'supost',
			dataType:'json',
		}
	)
	.done(
		function(rpta)
		{
			console.log(rpta);
			for (var i = 0; i <18; i++) {
					//reservada
					if (rpta.piso2[i-1]==1) {
						$("#supos-"+i).removeClass('btn-danger btn-default btn-info btn-success');
						$( "#supos-"+i).addClass('btn-warning');
						//ocupada
					} else if (rpta.piso2[i-1]==2) {
						$("#supos-"+i).removeClass('btn-danger btn-default btn-warning btn-success');
					   $("#supos-"+i).addClass('btn-info');
					   //libre
				   } else if (rpta.piso2[i-1]==3) {
					   $("#supos-"+i).removeClass('btn-danger btn-default btn-warning btn-info');
					   $( "#supos-"+i).addClass('btn-success');
					   //no disponible
				   }  else if (rpta.piso2[i-1]==4) {
					   $("#supos-"+i).removeClass('btn-danger btn-warning btn-info btn-success');
						  $("#supos-"+i).addClass('btn-default');
						  //alarma
					} else if (rpta.piso2[i-1]==5) {
						$("#supos-"+i).removeClass('btn-default btn-warning btn-info btn-success');
						 $("#supos-"+i).addClass('btn-danger');
					 }

	 }


			console.log(rpta);

		}
	)
	.fail(
		function(xhr,textStatus)
		{
			console.log(textStatus);
		}
	);

}
