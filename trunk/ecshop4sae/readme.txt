/**
 * ECShop_V2.7.2_UTF8_Release0604 
 * ============================================================================
 * Author: eifan  QQ:21434579 
 * WebSite: http://ecshops.sinaapp.com
 * Date :2012-02-09
*/


* 这是一个for Sina SAE的版本，在其他环境中使用可能会导致各种异常!
* 基于ECShop_V2.7.2_UTF8_Release版本，并集成了最新的0604补丁;
* 去除了/js/common.js 中随意替换页面内容的ecshop版权信息;
* (注意)本程序支持在sae同一应用不同版本号下安装版本，不同版本的模版，缓存，数据库是独立的，并不互相干扰。但storage内上传的文件是公用的。


20120209 安装说明

# 如果从sae应用商店安装，可以不看此安装说明
# 如果是从源代码安装，请按如下步骤执行
1,初始化sae storage,mysql,memcache服务，否则无法安装；
2,创建一个storage域名，如"img"；
2.1,如果创建的storage域名非"img",则需要手动修改/版本号/data/config.php文件的 define("SAESTOR_NAME", "img"); 为你创建的值；
3,在浏览器中运行 您的域名/install/,完成安装；
4,使用svn删除/install目录；

管理地址：
/admin 帐号：admin 密码：ecshop4sae

/**
 * ECShop_V2.7.2_UTF8_Release0604 
 * ============================================================================
 * Author: eifan  QQ:21434579 
 * WebSite: http://ecshops.sinaapp.com
 * Date :2011-12-06
*/
2011-12-06 安装说明（废弃）：
1，打开SAE中当前项目的 Memcache 服务，并初始化，为了节约云豆,MC容量设置为2M应该即可满足日常需求;
2，打开SAE中当前项目的 Storage 服务，并创建一个domain,建议创建名为img的domain。当上传各种图片时会存放到此domain中;
   在Domain管理处，点击domain img右侧的管理链接，进入Storage»img»。随意上传一张图片，并点击图片获得形如 http://ecshops-img.stor.sinaapp.com的图片存放路径，备用。
3，在SAE中创建数据库，并使用phpmyadmin导入/app_ecshops.sql数据库文件;
4，通过SVN 上传/1目录下所有内容;
5，修改/1/data/config.php中如下配置：
    define("SAESTOR", "saestor://img/");
    define("SAESTOR_URL", "http://ecshops-img.stor.sinaapp.com/");
  为你所指定的storage domain名和您的实际图片存储路径。并通过svn提交此文件。
6，访问您的当前项目url即可看到已经安装完成的ecshop!

管理地址：
/admin 帐号：admin 密码：ecshop4sae

如您安装或使用中遇到问题，可以到 http://ecshops.sinaapp.com 或联系eifan QQ:21434579!
祝您成功！日进斗金！



