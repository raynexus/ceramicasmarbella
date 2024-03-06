(function($) {
	'use strict';
	
	var $stateList = $('.state-list');
	var $containerMap = $('.map-container');

	var data = $containerMap.data('estados').map(function(item) {
		item['hc-key'] = item.hc_key;
		item.id = item.id_estado;
		item.lon = item.lng;
		return item;
	});

	var Series = [{
		// Use the ve-all map with no data as a basemap
		mapData : Highcharts.maps['countries/ve/ve-all'],
		name : 'Basemap',
		type : 'map',
		data : data,
		borderColor : '#A0A0A0',
		color : 'rgba(200, 200, 200, 0.3)',
		showInLegend : false,
		states : {

			hover : {
				color : '#A0A0A0'
			}
		}

	}, 
	{
		name : 'Separators',
		type : 'mapline',
		data : Highcharts.geojson(Highcharts.maps['countries/ve/ve-all'], 'mapline'),
		color : '#707070',
		showInLegend : false,
		enableMouseTracking : false
	},
	{
		type: 'mappoint',
		name: 'Estados',
		color: '#428BCA', 
		data : data
	}];

	// Initiate the chart
	var config = {

		tooltip : {
			headerFormat : '',
			pointFormat : '<b>{point.estado}</b>'
		},
		credits: {
			enabled: false
		},
		exporting : {
			'enabled' : false
		},
		title: '',
		plotOptions : {
			series : {
				point : {
					events : {
						click : function() {
							armarLista(this.estado, this.id_estado);
						}
					}
				}
			}
		},
		series : Series

	};
	var armarLista = function(estado, id) {
		
		var $list = $containerMap.find('.client-list');
		var clientes = $list.data('clientes');
		var tpl = $("#mapTemplate").html();
		
		console.log(clientes);
		var render = Mustache.render(tpl, {
			'ubicacion' : estado,
			'clientes' : clientes[id],
			
		});
		$list.html(render);
		$list.addClass('show');
		
	};
	var map = Highcharts.mapChart('map', config);
	
	var obtClientesPlot = function(e) {
			armarLista(this.id_estado);
	};
	var obtClientes = function(e) {

		e.preventDefault();
		var $this = $(this);
		var dataPoint = $this.data('info');
		var point = map.get(dataPoint.id_estado);
		armarLista(dataPoint.estado,dataPoint.id_estado);
		
		point.select();

	};
	$stateList.find('a').on('click', obtClientes);
})(jQuery);
