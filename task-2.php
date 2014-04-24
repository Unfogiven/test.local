<?php
// Подлючаем библиотеку
require_once "simple_html_dom.php";
// Создаем объект
$html = new simple_html_dom();
// Загружаем файл в объект
$html->load_file("server_data.html");
// Создание XML документа
$dom = new DOMDocument("1.0", "UTF-8");
$root = $dom->createElement("items");

// Получаем элементы шапки таблицы и все строки в tbody
$ths = $html->find("table#stable thead th");
$trs = $html->find("table#stable tbody tr");

for($i = 1; $i < sizeof($trs); $i++){
    $item = $dom->createElement("item");
    $tds = $trs[$i]->find("td");
    for($j = 0; $j < sizeof($ths); $j++){
        $property = $dom->createElement("property");
        $property->setAttribute("title", mb_convert_encoding($ths[$j]->plaintext, "UTF-8", "Windows-1251"));
        $cdata = $dom->createCDATASection(trim($tds[$j]->plaintext));
        $property->appendChild($cdata);
        $item->appendChild($property);
    }
    $root->appendChild($item);
}

$dom->appendChild($root);
$dom->preserveWhiteSpace = false;
$dom->formatOutput = true;
// Сохраняем результат в файл
$dom->save("emissions.xml");