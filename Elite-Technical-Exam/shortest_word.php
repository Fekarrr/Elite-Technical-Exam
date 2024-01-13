<?php
function shortestWordLength($str) {

    $words = explode(' ', $str);

    $shortestLength = PHP_INT_MAX;

    foreach ($words as $word) {

        $wordLength = strlen($word);

        if ($wordLength < $shortestLength) {
            $shortestLength = $wordLength;
        }
    }

    return $shortestLength;
}

$string = "TRUE FRIENDS ARE ME AND YOU";
$result = shortestWordLength($string);
echo "Length of the shortest word(s): $result";
?>
