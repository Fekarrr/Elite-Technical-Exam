<?php
function countIslands($imageMatrix) {
    $rows = count($imageMatrix);
    $cols = count($imageMatrix[0]);

    $visited = array_fill(0, $rows, array_fill(0, $cols, false));
    $islandCount = 0;

    for ($i = 0; $i < $rows; $i++) {
        for ($j = 0; $j < $cols; $j++) {
            if ($imageMatrix[$i][$j] == 1 && !$visited[$i][$j]) {

                exploreIsland($imageMatrix, $visited, $i, $j);
                $islandCount++;
            }
        }
    }

    return $islandCount;
}

function exploreIsland(&$imageMatrix, &$visited, $row, $col) {
    $rows = count($imageMatrix);
    $cols = count($imageMatrix[0]);

    $neighbors = [
        [-1, 0], [0, -1], [1, 0], [0, 1]
    ];

    $visited[$row][$col] = true;

    foreach ($neighbors as $neighbor) {
        $newRow = $row + $neighbor[0];
        $newCol = $col + $neighbor[1];

        if ($newRow >= 0 && $newRow < $rows && $newCol >= 0 && $newCol < $cols &&
            $imageMatrix[$newRow][$newCol] == 1 && !$visited[$newRow][$newCol]) {
            exploreIsland($imageMatrix, $visited, $newRow, $newCol);
        }
    }
}

$imageMatrix = [
  [	1,1,1,1 ],
  [	0,1,1,0	],
  [	0,1,0,1	],
  [	1,1,0,0	]
  
];

$islandCount = countIslands($imageMatrix);
echo "Number of islands: $islandCount";
?>
