<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Calendar</h1>
    <table>
        <thead>
            <tr>
                <th>Sun</th>
                <th>Mon</th>
                <th>Tue</th>
                <th>Wed</th>
                <th>Thu</th>
                <th>Fri</th>
                <th>Sat</th>
            </tr>
        </thead>
        <tbody>
                <?php
            $month = date('m');
            $year = date('Y');
            $daysInMonth = date('t', strtotime("$year-$month-01"));
            $firstDay = date('w', strtotime("$year-$month-01"));

            echo '<tr>';
            for ($i = 0; $i < $firstDay; $i++) {
                echo '<td></td>';
            }

            for ($day = 1; $day <= $daysInMonth; $day++) {
                echo '<td>' . $day . '</td>';

                if (($firstDay + $day) % 7 == 0) {
                    echo '</tr><tr>';
                }
            }

            echo '</tr>';
            ?>

                    </tbody>
                </table>
</body>
</html>
