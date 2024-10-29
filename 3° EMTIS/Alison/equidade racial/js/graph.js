google.charts.load('current', {'packages':['corechart']})
google.charts.setOnLoadCallback(drawChart)

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Raça', 'População'],
        ['Branca', 82200000],
        ['Preta', 20700000],
        ['Parda', 92100000],
        ['Amarela', 850000],
        ['Indígena', 1700000]
    ])

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'))

    google.visualization.events.addListener(chart, 'onmouseover', function() {
        document.getElementById('chart_div').style.cursor = 'pointer'
    })

    google.visualization.events.addListener(chart, 'onmouseout', function() {
        document.getElementById('chart_div').style.cursor = 'default'
    })

    var options = {
        backgroundColor: '',
        colors: ['#FEE3C6', '#291709', '#F2C280', '#FDE7AD', '#E09F79'],
        height: 500,
        width: 650,
        pieSliceTextStyle: {
            color: '#000'
        },
        slices: {
            1: {
                textStyle: {
                    color: '#FFF'
                }
            }
        },
        legend: {
            alignment: 'center',
            position: 'bottom',
            textStyle: {
                color: '#FFF'
            }
        }
    }
    
    // Desenha o gráfico com essas opções
    chart.draw(data, options);
}
