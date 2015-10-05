<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="highcharts-3d.js"></script>
<script src="highcharts.js"></script>
<script>
var chart = new Highcharts.Chart({
    chart: {
        renderTo: 'container',
        type: 'column',
        margin: 75,
        options3d: {
            enabled: true,
            alpha: 15,
            beta: 15,
            depth: 50,
            viewDistance: 25
        }
    },
    title: {
        text: 'Chart rotation demo'
    },
    subtitle: {
        text: 'Test options by dragging the sliders below'
    },
    plotOptions: {
        column: {
            depth: 25
        }
    },
    series: [{
        data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    }]
});

function showValues() {
    $('#R0-value').html(chart.options.chart.options3d.alpha);
    $('#R1-value').html(chart.options.chart.options3d.beta);
}

// Activate the sliders
$('#R0').on('change', function () {
    chart.options.chart.options3d.alpha = this.value;
    showValues();
    chart.redraw(false);
});
$('#R1').on('change', function () {
    chart.options.chart.options3d.beta = this.value;
    showValues();
    chart.redraw(false);
});

showValues();
});


</script>
</head>
<body>
<div id="container"></div>
</body>
</html>