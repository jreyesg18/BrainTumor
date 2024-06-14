// app/assets/javascripts/chart_options.js
document.addEventListener("DOMContentLoaded", function() {
    const ctx = document.getElementById('patientChart').getContext('2d');
    const chartForm = document.getElementById('chartForm');
    const xField = document.getElementById('xField');
    const yField = document.getElementById('yField');

    chartForm.addEventListener('submit', function(event) {
        event.preventDefault();
        const xAxisField = xField.value;
        const yAxisField = yField.value;
        fetchChartData(xAxisField, yAxisField);
    });

    function fetchChartData(xField, yField) {
        fetch(`/charts/index.json?x_field=${xField}&y_field=${yField}`)
            .then(response => response.json())
            .then(data => {
                const chartData = prepareChartData(data, xField, yField);
                renderChart(chartData, xField, yField);
            });
    }

    function prepareChartData(data, xField, yField) {
        const labels = data.map(patient => patient.patient_id);
        const xValues = data.map(patient => patient[xField]);
        const yValues = data.map(patient => patient[yField]);
        return { labels: labels, xValues: xValues, yValues: yValues };
    }

    function renderChart(data, xField, yField) {
        new Chart(ctx, {
            type: 'scatter', // Usaremos un gráfico de dispersión para mostrar dos ejes
            data: {
                labels: data.labels,
                datasets: [{
                    label: `${xField} vs ${yField}`,
                    data: data.labels.map((label, index) => ({ x: data.xValues[index], y: data.yValues[index] })),
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    x: {
                        type: 'linear', // Escala lineal para el eje X
                        position: 'bottom'
                    },
                    y: {
                        beginAtZero: true // Comenzar desde cero en el eje Y
                    }
                }
            }
        });
    }

    // Carga inicial del gráfico con valores predeterminados
    fetchChartData(xField.value, yField.value);
});

