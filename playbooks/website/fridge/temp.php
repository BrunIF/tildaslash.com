<?php

if (array_key_exists('tempA', $_GET)) {
  file_put_contents('data/tempA', $_GET['tempA']);
}

if (array_key_exists('tempB', $_GET)) {
  file_put_contents('data/tempB', $_GET['tempB']);
}

if (array_key_exists('weight', $_GET)) {
  file_put_contents('data/weight', $_GET['weight']);
}

?>Y
