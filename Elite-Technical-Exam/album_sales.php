<?php 
include("conn.php");

function displayResultTable($title, $data) {
    echo "<h3>$title</h3>";
    if ($data) {
        echo '<table border="1">
            <tr>';
        foreach ($data[0] as $key => $value) {
            echo '<th>' . htmlspecialchars($key) . '</th>';
        }
        echo '</tr>';
        foreach ($data as $row) {
            echo '<tr>';
            foreach ($row as $value) {
                echo '<td>' . htmlspecialchars($value) . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    } else {
        echo "No results found";
    }
}

// Query 1: Display total number of albums sold per artist
$query1 = "SELECT artist_name, COUNT(*) AS total_albums_sold FROM sales_table GROUP BY artist_name";
$result1 = $conn->query($query1);
$data1 = $result1 ? $result1->fetchAll(PDO::FETCH_ASSOC) : null;
displayResultTable("Query 1: Total number of albums sold per artist", $data1);

echo "<hr>";

// Query 2: Display combined album sales per artist
$query2 = "SELECT artist_name, SUM(2022_sales) AS combined_sales FROM sales_table GROUP BY artist_name";
$result2 = $conn->query($query2);
$data2 = $result2 ? $result2->fetchAll(PDO::FETCH_ASSOC) : null;
displayResultTable("Query 2: Combined album sales per artist", $data2);

// Query 3: Display the top 1 artist who sold most combined album sales
$query3 = "SELECT artist_name, SUM(2022_sales) AS combined_sales FROM sales_table GROUP BY artist_name ORDER BY combined_sales DESC LIMIT 1";
$stmt3 = $conn->prepare($query3);
$stmt3->execute();
$result3 = $stmt3->fetch(PDO::FETCH_ASSOC);
displayResultTable("Query 3: Top 1 artist with most combined album sales", [$result3]);

echo "<hr>";

// Query 4: Display the top 10 albums per year based on their number of sales
$query4 = "SELECT album_name, 2022_sales FROM sales_table ORDER BY 2022_sales DESC LIMIT 10";
$stmt4 = $conn->prepare($query4);
$stmt4->execute();
$result4 = $stmt4->fetchAll(PDO::FETCH_ASSOC);
displayResultTable("Query 4: Top 10 albums for the year 2022 based on sales", $result4);

echo "<hr>";

// Query 5: Display list of albums based on the searched artist
$searchedArtist = 'SMTOWN';
$query5 = "SELECT artist_name, album_name, 2022_sales, released_date, last_update FROM sales_table WHERE artist_name = ?";
$stmt5 = $conn->prepare($query5);
$stmt5->bindParam(1, $searchedArtist, PDO::PARAM_STR);
$stmt5->execute();
$result5 = $stmt5->fetchAll(PDO::FETCH_ASSOC);
displayResultTable("Query 5: List of albums for the searched artist", $result5);

$conn = null;

?>
