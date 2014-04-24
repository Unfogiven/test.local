<?php
header("Content-Type: text/html; charset=utf-8");
$xml = new DOMDocument();
$xml->load("emissions.xml");

$xsl = new DOMDocument();
$xsl->load("style.xsl");

$processor = new XSLTProcessor();
$processor->importStylesheet($xsl);
echo $processor->transformToXml($xml);