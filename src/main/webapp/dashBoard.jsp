<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="CSSFiles/dashBoard.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="https://image.ibb.co/fOur3b/favicon.png" />
    <meta name="theme-color" content="#1885ed">
    <title>HRP.io - HR Dashboard</title>
</head>

<body>
    <header class="header">
        <div class="container header__container">
            <div class="header__logo">
                <img class="header__img" src="https://image.ibb.co/kcVou6/path3000.png">
                <h1 class="header__title">HRP<span class="header__light">.io</span></h1>
            </div>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header__menu">
                <nav id="navbar" class="header__nav collapse">
                    <ul class="header__elenco">
                        <li class="header__el"><a href="index.jsp" class="header__link">Home</a></li>
                        <li class="header__el"><a href="#" class="header__link">Dashboard</a></li>
                        <li class="header__el"><a href="#" class="header__link">Reports</a></li>
                        <li class="header__el"><a href="#" class="header__link">Settings</a></li>
                        <li class="header__el header__el--blue"><a href="loginPage.jsp" class="btn btn--white">Logout →</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- HR Dashboard -->
    <div class="sect sect--padding-top">
        <div class="container">
            <div class="row" align="center">
                <h1 class="row__title">HR Dashboard</h1>
                <h2 class="row__sub">Overview of HR Information and Attendance</h2>
            </div>

            <!-- HR Details Section -->
            <div class="row row--center row--margin">
                <div class="col-md-6 price-box price-box--violet">
                    <div class="price-box__wrap">
                        <h1 class="price-box__title">HR Details</h1>
                        <ul class="price-box__list" align="center">
                            <li class="price-box__list-el">Name: Nisarg</li>
                            <li class="price-box__list-el">Salary: ₹42000/month</li>
                            <li class="price-box__list-el">Designation: HR Manager</li>
                            <li class="price-box__list-el">Address: 123 HR Street, Jalgaon, Maharastra</li>
                            <li class="price-box__list-el">Phone: +1 234 567 890</li>
                        </ul>
                    </div>
                </div>
                
                <!-- Performance Section -->
<div class="col-md-12 price-box price-box--purple">
    <div class="price-box__wrap">
        <h1 class="price-box__title">HR Performance</h1>
        <canvas id="performanceChart"></canvas>
    </div>
</div>

<!-- Include Chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // Bar chart for HR performance
    var ctx = document.getElementById('performanceChart').getContext('2d');
    var performanceChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Communication', 'Team Coordination', 'Task Completion', 'Problem Solving', 'Punctuality'],
            datasets: [{
                label: 'Performance Score',
                data: [85, 90, 78, 88, 95], // Example scores, replace with dynamic data
                backgroundColor: [
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(255, 206, 86, 0.6)',
                    'rgba(75, 192, 192, 0.6)',
                    'rgba(153, 102, 255, 0.6)',
                    'rgba(255, 159, 64, 0.6)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            },
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                }
            }
        }
    });
</script>
                

                <!-- Attendance Section with Pie Charts -->
<div class="col-md-6 price-box price-box--blue">
    <div class="price-box__wrap">
        <h1 class="price-box__title">Attendance</h1>

        <!-- Buttons to switch between Week and Month attendance -->
        <div class="price-box__btn" >
            <button class="btn btn--blue" id="weekBtn">Weekly</button>
            <button class="btn btn--blue" id="monthBtn">Monthly</button>
        </div>

        <!-- Reduced size Pie chart for attendance -->
        <canvas id="attendanceChart" style="max-width: 300px; max-height: 300px;" align="center"></canvas>
    </div>
</div>

<!-- Leave Management Section -->
<div class="col-md-6 price-box price-box--violet">
    <div class="price-box__wrap">
        <h1 class="price-box__title">Leave Management</h1>
        <ul class="price-box__list">
            <li class="price-box__list-el">Total Leaves Allowed: 24</li>
            <li class="price-box__list-el">Leaves Taken: 5</li>
            <li class="price-box__list-el">Remaining Leaves: 19</li>
        </ul>
    </div>
</div>

<!-- Include Chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // Data for Weekly Attendance (Example data)
    var weekAttendanceData = {
        labels: ['Present', 'Absent', 'Late'],
        datasets: [{
            label: 'Weekly Attendance',
            data: [5, 1, 1], // Replace with dynamic data
            backgroundColor: ['rgba(75, 192, 192, 0.6)', 'rgba(255, 99, 132, 0.6)', 'rgba(255, 206, 86, 0.6)'],
            borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 206, 86, 1)'],
            borderWidth: 1
        }]
    };

    // Data for Monthly Attendance (Example data)
    var monthAttendanceData = {
        labels: ['Present', 'Absent', 'Late'],
        datasets: [{
            label: 'Monthly Attendance',
            data: [20, 2, 3], // Replace with dynamic data
            backgroundColor: ['rgba(75, 192, 192, 0.6)', 'rgba(255, 99, 132, 0.6)', 'rgba(255, 206, 86, 0.6)'],
            borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 206, 86, 1)'],
            borderWidth: 1
        }]
    };

    // Create the initial Pie Chart for Weekly Attendance with percentages
    var ctx = document.getElementById('attendanceChart').getContext('2d');
    var attendanceChart = new Chart(ctx, {
        type: 'pie',
        data: weekAttendanceData,
        options: {
            responsive: true,
            maintainAspectRatio: false,  // Ensure the chart doesn't stretch
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function(tooltipItem) {
                            var dataset = tooltipItem.dataset;
                            var currentValue = dataset.data[tooltipItem.dataIndex];
                            var total = dataset.data.reduce(function(a, b) { return a + b; }, 0);
                            var percentage = Math.round((currentValue / total) * 100);
                            return dataset.labels[tooltipItem.dataIndex] + ': ' + currentValue + ' (' + percentage + '%)';
                        }
                    }
                },
                legend: {
                    display: true,
                    position: 'top',
                    labels: {
                        generateLabels: function(chart) {
                            var data = chart.data;
                            if (data.labels.length && data.datasets.length) {
                                return data.labels.map(function(label, i) {
                                    var meta = chart.getDatasetMeta(0);
                                    var total = data.datasets[0].data.reduce(function(a, b) { return a + b; }, 0);
                                    var value = data.datasets[0].data[i];
                                    var percentage = Math.round((value / total) * 100);
                                    return {
                                        text: label + ' (' + percentage + '%)',
                                        fillStyle: data.datasets[0].backgroundColor[i],
                                        strokeStyle: data.datasets[0].borderColor[i],
                                        lineWidth: 1
                                    };
                                });
                            }
                            return [];
                        }
                    }
                }
            }
        }
    });

    // Switch to weekly attendance data
    document.getElementById('weekBtn').addEventListener('click', function () {
        attendanceChart.data = weekAttendanceData;
        attendanceChart.update();
    });

    // Switch to monthly attendance data
    document.getElementById('monthBtn').addEventListener('click', function () {
        attendanceChart.data = monthAttendanceData;
        attendanceChart.update();
    });
</script>

            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <p class="footer__light">HRP.io © 2024</p>
        </div>
    </div>

    <script src="JSFiles/index.js"></script>
</body>
</html>
