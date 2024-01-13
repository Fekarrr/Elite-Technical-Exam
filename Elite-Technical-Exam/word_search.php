<?php
function findTargetIndices($target, $words) {

    $indices = [];

    foreach ($words as $index => $word) {

        if ($word === $target) {

            $indices[] = $index;
        }
    }

    return $indices;
}

$target = "TWO";
$wordList = ["I", "TWO", "FORTY", "THREE", 'JEN', "TWO", "tWo", "Two"];

$result = findTargetIndices($target, $wordList);
echo "Target '$target' in the list: [" . implode(", ", $result) . "]";
?>
