<?php

// 定义存储storage的域名
define("SAESTOR_NAME", "img");
define('ENVIRONMENT', 'development'); // 生产环境可以设置为production,以使dump函数失效 development时dump函数生效可以用户调试输出
if ($_SERVER['HTTP_APPVERSION'] == 1) {
    define("APP_VER", "");
} else {
    define("APP_VER", $_SERVER['HTTP_APPVERSION']);
}
define("TABLE_PREFIX", "ecs".APP_VER ."_"); // 数据库表名前缀
// database host
$db_host = SAE_MYSQL_HOST_M . ":" . SAE_MYSQL_PORT;

// database name
$db_name = SAE_MYSQL_DB;

// database username
$db_user = SAE_MYSQL_USER;

// database password
$db_pass = SAE_MYSQL_PASS;

// table prefix
$prefix = TABLE_PREFIX;
$timezone = "Asia/Hong_Kong";

$cookie_path = "/";

$cookie_domain = "";

$session = "1440";

define('EC_CHARSET', 'utf-8');

define('ADMIN_PATH', 'admin');

define('AUTH_KEY', 'this is a key');

define('OLD_AUTH_KEY', '');

define('API_TIME', '2011-05-19 20:54:53');
// 其他初始化内容
define("SAEMC", "saemc://");

define("SAESTOR", "saestor://" . SAESTOR_NAME . "/");

$s = new SaeStorage();
define("SAESTOR_URL", $s->getUrl(SAESTOR_NAME, ""));

// for sae相关函数
function saemc($file) {
    $file = " " . $file;
    if (stripos($file, SAEMC) > 0) {
        return @ltrim($file);
    } else {
        $file = @ltrim($file);
        $file = @ltrim($file, "../");
        $file = @ltrim($file, "/");
        return SAEMC . "saemc_" . APP_VER . "/" . $file;
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

function dump($var, $name = '') {
    // 输出测试值\
    if (ENVIRONMENT == "development") {
        echo '<meta http-equiv="Content-Type" content="text / html;charset=UTF-8" />';
        echo "<pre>";
        if ($name != '') {
            echo "<h3>" . $name . "</h3>";
        }
        print_r($var);
        echo "</pre><hr/>";
    }
    return;
}

function is_storage() {
    $s = new SaeStorage();
    if (!$s->write(SAESTOR_NAME, 'is_storage', '1')) {
        return FALSE;
    } else {
        return TRUE;
    }
}

function is_mc() {
    $mmc = @memcache_init();
    if ($mmc) {
        return TRUE;
    } else {
        return FALSE;
    }
}

function is_mysql() {
    $mysql = @new SaeMysql();
    $sql = "select database()";
    $data = @$mysql->getData($sql);
    if ($data) {
        return TRUE;
    } else {
        return FALSE;
    }
}

?>