<?php

define("SAESTOR", "saestor://img/");
define("SAESTOR_URL", "http://ecshops-img.stor.sinaapp.com/");
define("DATA_DIR", "/data/");
define("IMAGE_DIR", "/images/");
define("SAEMC", "saemc://");
$mmc = memcache_init();
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$flashdb = array();
if (file_exists(saemc(DATA_DIR . '/flash_data.xml'))) {

    // 兼容v2.7.0及以前版本
    if (!preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"\ssort="([^"]*)"/', file_get_contents(saemc(DATA_DIR . '/flash_data.xml')), $t, PREG_SET_ORDER)) {
        preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"/', file_get_contents(saemc(DATA_DIR . '/flash_data.xml')), $t, PREG_SET_ORDER);
    }

    if (!empty($t)) {
        foreach ($t as $key => $val) {
            $val[4] = isset($val[4]) ? $val[4] : 0;
            $flashdb[] = array('src' => $val[1], 'url' => $val[2], 'text' => $val[3], 'sort' => $val[4]);
        }
    }
}
dump(saemc(DATA_DIR  . '/flash_data.xml'),'saemc://data/flash_data.xml');
dump($flashdb,'flashdb');
$ads = $flashdb;

//
function saemc($file) {
    $file = " " . $file;
    if (stripos($file, SAEMC) > 0) {
        return @ltrim($file);
    } else {
        $file = @ltrim($file);
        $file = @ltrim($file, "../");
        $file = @ltrim($file, "/");
        return SAEMC . $file;
    }
}

function saestor($file) {
    $file = " " . $file;
    if (stripos($file, SAESTOR) > 0) {
        return @ltrim($file);
    } else {
        $file = @ltrim($file);
        $file = @ltrim($file, "../");
        $file = @ltrim($file, "/");
        return SAESTOR . $file;
    }
}

function sae_repalce_imgpath($url) {
    if (is_string($url)) {
        return str_replace(SAESTOR, SAESTOR_URL, $url);
    }
    if (is_array($url)) {
        foreach ($url as $k => $v) {
            $url[$k] = str_replace(SAESTOR, SAESTOR_URL, $v);
        }
        return $url;
    }
}

function dump($var, $name='') {
    // 输出测试值
    echo "<pre>";
    if ($name != '') {
        echo "<h3>" . $name . "</h3>";
    }
    print_r($var);
    echo "</pre><hr/>";
}

?>
