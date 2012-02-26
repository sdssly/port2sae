<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require(dirname(__FILE__) . "/../data/config.php");
echo '<meta http-equiv="Content-Type" content="text / html;charset=UTF-8" />';
$install = @file_get_contents(saestor("saestor_" . $_SERVER['HTTP_APPVERSION'] . "/data/install.lock"));
if ($install == "1") {
    echo "<h1>警告</h1>";
    echo "<h3>版本" . $_SERVER['HTTP_APPVERSION'] . "已完成安装!请删除/install/目录！</h3>";
    echo "<h3>如果重新安装请先删除storage内的 saestor_" . $_SERVER['HTTP_APPVERSION'] . "/data/install.lock 文件</h3>";
} else {
    // 判断是否已经初始化了storage,mc,mysql
    if (is_storage() && is_mc() && is_mysql()) {
        $fp = @fopen(dirname(__FILE__) . "/ecshop4sae.sql", "r") or die("不能打开SQL文件 $file_name"); //打开文件
        if ($fp) {
            $mysql = new SaeMysql();
            echo "正在执行导入操作:";
            while ($SQL = GetNextSQL()) {
                $SQL = str_replace("`ecs_", "`" . TABLE_PREFIX, $SQL);
//                echo $SQL."<BR/>";
                if (!$mysql->runSql($SQL)) {
                    echo "执行出错：" . $mysql->errmsg() . "";
                    echo "SQL语句为：" . $SQL . "";
                    exit;
                };
            }
            echo "导入完成<br/>";
            echo "<h1>安装成功</h1>";
            echo "点击<a href='/admin'>/admin</a> 进入后台，管理员帐号为admin 密码为123<br/><br/><h2>注意</h2>为确保安全请登入后台后修改密码！并使用svn删除/install目录！";
            
            @fclose($fp);
            $s = new SaeStorage();
            $s->write(SAESTOR_NAME, "saestor_" . $_SERVER['HTTP_APPVERSION'] . "/data/install.lock", '1');
        } else {
            echo "<h1>错误</h1>";
            echo "ecshop4sae.sql文件不存在！";
        }
    } else {
        // 
        echo "<h1>未完成环境初始化</h1>";
        echo "<h3>请先完成SAE的相关环境初始化，包括storage,memcache,mysql等，请参考根目录下的readme.txt文件或者使用sae应用商店一键安装。</h3>";
    }
}

//从文件中逐条取SQL
function GetNextSQL() {
    global $fp;
    $sql = "";
    while ($line = @fgets($fp, 40960)) {
        $line = trim($line);
        //以下三句在高版本php中不需要
        $line = str_replace("\\\\", "\\", $line);
        $line = str_replace("\'", "'", $line);
        $line = str_replace("\\r\\n", chr(13) . chr(10), $line);
        // $line = stripcslashes($line);
        if (strlen($line) > 1) {
            if ($line[0] == "-" && $line[1] == "-") {
                continue;
            }
        }
        $sql.=$line . chr(13) . chr(10);
        if (strlen($line) > 0) {
            if ($line[strlen($line) - 1] == ";") {
                break;
            }
        }
    }
    return $sql;
}

?>
