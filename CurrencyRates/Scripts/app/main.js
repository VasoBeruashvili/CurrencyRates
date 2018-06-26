
var ctx = null;
var options = {
    responsive: true,
    title: {
        display: true,
        text: 'ვალუტის კურსები ლართან მიმართებაში'
    },
    tooltips: {
        mode: 'index',
        intersect: false,
    },
    hover: {
        mode: 'nearest',
        intersect: true
    },
    scales: {
        xAxes: [{
            display: true,
            scaleLabel: {
                display: true,
                labelString: 'თარიღი'
            }
        }],
        yAxes: [{
            display: true,
            scaleLabel: {
                display: true,
                labelString: 'კურსი'
            }
        }]
    }
}; 

function loadChart() {
    $.post("/Home/GetCurrencyRatesHistory",
        {
            fromDate: moment($('#fromDate').val()).format('DD.MM.YYYY'),
            toDate: moment($('#toDate').val()).format('DD.MM.YYYY')
        },
        function (data) {
            var chart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: data.dates.map(function (d) { return moment(d).format('DD.MM.YYYY'); }),
                    datasets: [{
                        label: "აშშ დოლარი",
                        borderColor: 'green',
                        data: data.valuesUSD,
                    }, {
                        label: "ევრო",
                        borderColor: 'orange',
                        data: data.valuesEUR,
                    }]
                },
                options: options
            });
        });
};


$(document).ready(function () { 
    
    $('#fromDate').val(new Date(moment().subtract(30, 'days')).toISOString().substring(0, 10));
    $('#toDate').val(new Date().toISOString().substring(0, 10));


    ctx = document.getElementById('currencyRates').getContext('2d'); 
    loadChart();

});