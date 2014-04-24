<?php

function file_get_contents_curl($url) {
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 (.NET CLR 3.5.30729)",
        "Accept-Language: en-us,en;q=0.5"
    ));

    $data = curl_exec($ch);
    curl_close($ch);

    return $data;
}
header("Content-Type: text/html; charset=UTF-8");
$file = fopen("server_data.html", "w");
fwrite($file, file_get_contents_curl("http://www.cbonds.info/sandbox/some_source.php"));
fclose($file);
