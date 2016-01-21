//RTC 2015-2
$( document ).ready(inicializar);

function inicializar()
{
	iniPusher();
	iniGrafica();
	$("#btnenviar").on('click',enviarDato);

}

function enviarDato()
{
    var midato=$("#valchannel2").val();
    $("#valchannel2").val('');
    $.ajax(
        {
            url:'/rtc/rt.php',
            type:'post',
            data:{"dato":midato,"channel":"1"},
        }
    );
}

function iniPusher()
{
	var pusher = new Pusher('aeeda5f415f3fe3ca851');
	var channel = pusher.subscribe('rtch2');
	channel.bind('actualizar', function(data) {
										var vdato=parseInt(data.valor);
										chart.series[0].addPoint(vdato);
								}
				);
}

function iniGrafica()
{
	chart = new Highcharts.Chart({
        chart: {
            renderTo: 'container',
            defaultSeriesType: 'line'
        },
        plotOptions:{
        	line:{
        		pointInterval:1
        	}
        },
        title: {
            text: 'Datos RTC ejemplo'
        },
        xAxis: {
            type: 'linear',
            floor:0,
            tickPixelInterval: 150,
            maxZoom: 2 * 10
        },
        yAxis: {
            minPadding: 0.2,
            maxPadding: 0.2,
            title: {
                text: 'Valor',
                margin: 80
            }
        },
        series: [{
            name: 'Mis datos',
            data: []
        }]
    });
}
