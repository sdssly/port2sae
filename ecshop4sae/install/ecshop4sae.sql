CREATE TABLE IF NOT EXISTS `ecs_account_log`(`log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL, `user_money` decimal(10,2) NOT NULL, `frozen_money` decimal(10,2) NOT NULL, `rank_points` mediumint(9) NOT NULL, `pay_points` mediumint(9) NOT NULL, `change_time` int(10) unsigned NOT NULL, `change_desc` varchar(255) NOT NULL, `change_type` tinyint(3) unsigned NOT NULL,PRIMARY KEY (`log_id`),KEY `user_id` (`user_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ecs_ad`(`ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `position_id` smallint(5) unsigned NOT NULL DEFAULT '0', `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0', `ad_name` varchar(60) NOT NULL DEFAULT '', `ad_link` varchar(255) NOT NULL DEFAULT '', `ad_code` text NOT NULL, `start_time` int(11) NOT NULL DEFAULT '0', `end_time` int(11) NOT NULL DEFAULT '0', `link_man` varchar(60) NOT NULL DEFAULT '', `link_email` varchar(60) NOT NULL DEFAULT '', `link_phone` varchar(60) NOT NULL DEFAULT '', `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0', `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',PRIMARY KEY (`ad_id`),KEY `position_id` (`position_id`),KEY `enabled` (`enabled`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `ecs_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES(2, 1, 2, '首页左边', '', '<a title="" target="_blank" href="#"><img style=" border:none;border-bottom:1px solid #bfbfbf" src="/ads/left.jpg"></a>', 1305187200, 1307779200, '', '', '', 0, 1);
INSERT INTO `ecs_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES(3, 3, 2, '首页右边', '', '<a title="" target="_blank" href="#"><img style=" border:none;border-bottom:1px solid #bfbfbf" src="/ads/right.jpg"></a>', 1305187200, 1307779200, '', '', '', 0, 1);
INSERT INTO `ecs_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES(4, 7, 2, '商品详情页-支付和配送', '', '<div id="com_v">\r\n<p><b>一、支付方式</b></p>\r\n<p>我们提供货到付款，支付宝/网银，银行汇款三种付款方式。</p>\r\n<p>1、支付宝/网银支付</p>\r\n<p>支付宝是国内领先的独立第三方支付平台，由阿里巴巴集团创办。我们目前已经是支付宝的诚信商家，您在支付的时候选择支付宝就可以可以安全使用支付宝交易。</p>\r\n<p>如果您没有支付宝账号，依然可以使用支付宝跳转到网银付款。操作方法是：</p>\r\n<p>下单的时候支付方式选择支付宝/网银，确认后到支付宝付款页面，在支付宝页面选择>>使用网上银行付款，如图：</p>\r\n<p><img src="themes/52asics/images/alitobank.gif"></p>\r\n<br>\r\n<p>2、银行转账</p>\r\n<p>我们支持建设银行、工商银行、农业银行、中国银行和邮政储蓄银行的转账汇款，请您在转账前先与我们的客服取得银行汇款账号！。</p>\r\n<p>3、货到付款</p>\r\n<p>我们的货到付款是由顺丰公司执行的，如果您需要货到付，首先您必须确定您那顺丰是否有派送。<a href="/article-40.html" target="_blank" style="color:blue" rel="nofollow">点击这里查看派送区域和货到付款说明</a></p>\r\n<p>其次，您若要货到付款，则还需多加10元的配置费和10元的手续费给顺丰公司</p>\r\n<br>\r\n<p><b>二、产品运输包装</b></p>\r\n<p>我们的产品运输包装如图：</p>\r\n<p><img src="themes/52asics/images/pack.gif"></p>\r\n<br>\r\n<p><b>三、运输方式</b></p>\r\n<p>1、普通快递：</p>\r\n<p>本店普通快递全场包邮，支持申通、圆通、中通、韵达等各类普通快递。下单时如果没有选择快递公司，我们默认发申通快递！</p>\r\n<p>2、EMS 邮政速递</p>\r\n<p>EMS 邮政速递资费10元/双。主要用于普通快递送不到的偏远地区，如果您的地区其他快递都送不到，可以采用EMS。</p>\r\n<p>3、顺丰快递</p>\r\n<p>顺丰快递主要用于加急和货到付款。如果是加急则每双鞋子加收10元快递费，如果是货到付款，除了每双10元的配送费之外，还需10元的货到付款手续费。</p>\r\n</div>', 1305360000, 1371110400, '', '', '', 0, 1);


CREATE TABLE IF NOT EXISTS `ecs_admin_action`(`action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `action_code` varchar(20) NOT NULL DEFAULT '', `relevance` varchar(20) NOT NULL DEFAULT '',PRIMARY KEY (`action_id`),KEY `parent_id` (`parent_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;


CREATE TABLE IF NOT EXISTS `ecs_admin_log`(`log_id` int(10) unsigned NOT NULL AUTO_INCREMENT, `log_time` int(10) unsigned NOT NULL DEFAULT '0', `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `log_info` varchar(255) NOT NULL DEFAULT '', `ip_address` varchar(15) NOT NULL DEFAULT '',PRIMARY KEY (`log_id`),KEY `log_time` (`log_time`),KEY `user_id` (`user_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=834 ;

CREATE TABLE IF NOT EXISTS `ecs_admin_message`(`message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `sent_time` int(11) unsigned NOT NULL DEFAULT '0', `read_time` int(11) unsigned NOT NULL DEFAULT '0', `readed` tinyint(1) unsigned NOT NULL DEFAULT '0', `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0', `title` varchar(150) NOT NULL DEFAULT '', `message` text NOT NULL,PRIMARY KEY (`message_id`),KEY `sender_id` (`sender_id`,`receiver_id`),KEY `receiver_id` (`receiver_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_admin_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_admin_user`
--


CREATE TABLE IF NOT EXISTS `ecs_admin_user`(`user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `user_name` varchar(60) NOT NULL DEFAULT '', `email` varchar(60) NOT NULL DEFAULT '', `password` varchar(32) NOT NULL DEFAULT '', `add_time` int(11) NOT NULL DEFAULT '0', `last_login` int(11) NOT NULL DEFAULT '0', `last_ip` varchar(15) NOT NULL DEFAULT '', `action_list` text NOT NULL, `nav_list` text NOT NULL, `lang_type` varchar(50) NOT NULL DEFAULT '', `agency_id` smallint(5) unsigned NOT NULL, `suppliers_id` smallint(5) unsigned DEFAULT '0', `todolist` longtext, `role_id` smallint(5) DEFAULT NULL,PRIMARY KEY (`user_id`),KEY `user_name` (`user_name`),KEY `agency_id` (`agency_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `ecs_admin_user`
--

INSERT INTO `ecs_admin_user` (`user_id`, `user_name`, `email`, `password`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id`) VALUES(1, 'admin', 'admins@cgame.cn', 'e5a3203c80091ed727996eee507a8043', 1284206283, 1326148089, '114.247.31.81', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,商店设置|shop_config.php?act=list_edit,广告列表|ads.php?act=list', '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_adsense`
--

CREATE TABLE IF NOT EXISTS `ecs_adsense`(`from_ad` smallint(5) NOT NULL DEFAULT '0', `referer` varchar(255) NOT NULL DEFAULT '', `clicks` int(10) unsigned NOT NULL DEFAULT '0',KEY `from_ad` (`from_ad`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_adsense`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_ad_custom`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_custom`(`ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1', `ad_name` varchar(60) DEFAULT NULL, `add_time` int(10) unsigned NOT NULL DEFAULT '0', `content` mediumtext, `url` varchar(255) DEFAULT NULL, `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`ad_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_ad_custom`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_ad_position`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_position`(`position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `position_name` varchar(60) NOT NULL DEFAULT '', `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0', `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0', `position_desc` varchar(255) NOT NULL DEFAULT '', `position_style` text NOT NULL,PRIMARY KEY (`position_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ecs_ad_position`
--

INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES(1, '首页左边', 170, 260, '', '<table cellpadding="0" cellspacing="0">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES(3, '首页右边', 170, 260, '', '<table cellpadding="0" cellspacing="0">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES(6, '首页中间广告', 572, 256, 'library里面有个52asics.lbi文件', '<table cellpadding="0" cellspacing="0">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES(7, '详情页支付和配送', 920, 920, '', '<table cellpadding="0" cellspacing="0">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_affiliate_log`
--

CREATE TABLE IF NOT EXISTS `ecs_affiliate_log`(`log_id` mediumint(8) NOT NULL AUTO_INCREMENT, `order_id` mediumint(8) NOT NULL, `time` int(10) NOT NULL, `user_id` mediumint(8) NOT NULL, `user_name` varchar(60) DEFAULT NULL, `money` decimal(10,2) NOT NULL DEFAULT '0.00', `point` int(10) NOT NULL DEFAULT '0', `separate_type` tinyint(1) NOT NULL DEFAULT '0',PRIMARY KEY (`log_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_affiliate_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_agency`
--

CREATE TABLE IF NOT EXISTS `ecs_agency`(`agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `agency_name` varchar(255) NOT NULL, `agency_desc` text NOT NULL,PRIMARY KEY (`agency_id`),KEY `agency_name` (`agency_name`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_agency`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_area_region`
--

CREATE TABLE IF NOT EXISTS `ecs_area_region`(`shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0', `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`shipping_area_id`,`region_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_area_region`
--

INSERT INTO `ecs_area_region` (`shipping_area_id`, `region_id`) VALUES(1, 1),(4, 3),(4, 4),(4, 6),(4, 9),(4, 30),(4, 32);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_article`
--

CREATE TABLE IF NOT EXISTS `ecs_article`(`article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `cat_id` smallint(5) NOT NULL DEFAULT '0', `title` varchar(150) NOT NULL DEFAULT '', `content` longtext NOT NULL, `author` varchar(30) NOT NULL DEFAULT '', `author_email` varchar(60) NOT NULL DEFAULT '', `keywords` varchar(255) NOT NULL DEFAULT '', `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2', `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1', `add_time` int(10) unsigned NOT NULL DEFAULT '0', `file_url` varchar(255) NOT NULL DEFAULT '', `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0', `link` varchar(255) NOT NULL DEFAULT '', `description` varchar(255) DEFAULT NULL,PRIMARY KEY (`article_id`),KEY `cat_id` (`cat_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `ecs_article`
--

INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(1, 5, '购物流程', '<p><img alt="购物流程" src="/themes/52asics/images/liucheng.gif" /></p>', '', '', '', 0, 1, 1284206283, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(2, 5, '如何订购', '<h3>网上订购</h3>\r\n<ul>\r\n    <li>选择您心仪的鞋子款式（包括颜色，尺码）后，将商品添加到您的购物车</li>\r\n    <li>在购物车中可以对商品进行删除或修改其订购数量等 (点此查看您的购物车)</li>\r\n    <li>然后进入结算中心，请准确填写收货人信息并选择付款方式</li>\r\n    <li>确认信息，提交订单，按提示完成付款后即完成产品订购 (查看详细的购物流程)。</li>\r\n</ul>\r\n<h3>电话订购</h3>\r\n<p>拨打客服中心电话 <strong>400-666-5029</strong>，将您需要的产品名称以及收货信息告诉客服人员，在客服人员的引导下即可完成电话订购。</p>', '', '', '', 0, 1, 1284206283, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(3, 12, '咨询热点', '<p>咨询热点咨询热点</p>', '', '', '', 1, 1, 1284206283, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(4, 5, '常见问题', '<p><strong>问：我在贵站不能注册、登陆，是怎么回事？</strong></p>\r\n<p>答：这种情况大多是客户端的原因引起的，比如您IE的安全级别设置过高，没有打开COOKIES等，只要将IE设置恢复为默认设置即可。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：<a href="http://www.vsvm.net/">visvim</a>网上专卖店销售的是正品吗？</strong></p>\r\n<p>答：<a href="http://www.vsvm.net/">Visvim专卖店</a>(www.vsvm.net)销售的Visvim商品100%都是正品。质量绝对保证，均可享受专卖店同等服务。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：在线支付时，需要输入银行卡号和密码，请问贵站的在线支付安全吗？</strong></p>\r\n<p>答：在线支付过程中，最后的关键步骤是转入到银行网站完成的，也就是说，您输入银行卡号和密码是在银行网站完成的，而不是在本站或者在线支付公司的网站完成，安全性由银行把关，因此，您可放心使用。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：我放入购物车的商品，这次没有结算，下次来结算可以吗？</strong></p>\r\n<p>答：您在本站登陆时，可选择登陆有效期（可选一天、一月、一年，默认为不保存，即关闭IE就失效），在这个有效期内，只要您用同一台电脑再次访问本站，您的购物车会继续有效。但若您的电脑中的cookies信息丢失，那购物车中的商品也会丢失。因此，如果遇到喜欢但暂时不会购买的商品，请使用&ldquo;收藏&rdquo;功能永久性的收藏起来。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：我给管理员发了站内消息，为什么没有收到回复？</strong></p>\r\n<p>答：请注册为本站会员，登陆后在&ldquo;用户中心&rdquo;发送站内消息，管理员会及时回复您。如果是以未注册的游客身份发送，管理员无法回复消息（因为游客没有会员ID）。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：付款后是否需要与贵站联系？</strong></p>\r\n<p>答：请您在汇款后，尽快通过电话、传真或QQ、站内消息等方式与我们联系，告知您的汇款时间、汇款银行名称、汇款金额、汇款人姓名，以便我们查帐及为您办理相关业务。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：我已在网站留言板上留言，为什么没有显示出来？</strong></p>\r\n<p>答：为了避免网站受到垃圾信息带来的不良影响，本站留言须经管理员审核后才能显示。请您耐心等待，我们会尽快处理和回复您的留言。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：Visvim鞋尺码标准吗？ </strong></p>\r\n<p>答：Visvim鞋是按照国际标准皮鞋码生产的，由于外国脚型与中国脚型有所区别，所以会与实际的码数偏大（例如你平常穿37码鞋，那购买Visvim鞋就得购买36.5码），购买前请了解所穿的尺码。详细可参考网页方的尺码对照表。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：下订单后，去哪里付款？</strong></p>\r\n<p>答：目前Visvim网上专卖提供了4种方式付款。</p>\r\n<ul>\r\n    <li>银行柜台用现金汇款/卡内转帐/电子汇款（手续费为0.5%，到帐时间即时到帐或1天以内）</li>\r\n    <li>网上银行转帐（手续费各个银行不同，必须开通网上银行，具体开通方法请咨询开卡行，到帐时间1天以内）</li>\r\n    <li>支付宝在线支付（免手续费，必须开通网上银行，实时到帐 ）</li>\r\n    <li>货到付款，需要您所在的地区有顺丰速运的网点支持</li>\r\n</ul>\r\n<p>我们推荐你使用在线支付，可以免去转账手续费和来回银行的时间，而且还实时到帐，方便快速发货。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：买多双鞋到同一个地方是不是多一份配送费用？</strong></p>\r\n<p>答：我们是全场免邮寄费的，买多少双鞋子都是免邮费。&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：如果商品缺货，以后还会为顾客补货或订货吗？</strong></p>\r\n<p>答：您好，Visvim所有的产品都是提前几个季度提前预定生产的，所以商品缺货后基本不会再有补货，工厂不接受小批量产品的定单。Visvim网上专卖每个月都有商品更新，您可以留意最新的库存情况。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：如果购买的鞋子尺码不合适、款式不喜欢或质量出现问题可以退换货吗？</strong></p>\r\n<p>答：Visvim网上专卖所有商品，如果出现尺码不适和款式问题，可以换货，但是除非存在质量问题，否则一律不予退货。所以请您在购买之前详细咨询客服人员，在确认好尺寸、款式等方面之后再下订单。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：在线支付安全吗？</strong></p>\r\n<p>答：在线支付是通过国际安全认证的。这套在线支付系统成功在新浪、sohu、神州数码、NOKIA、e龙、金山软件、北京师范大学、Microsoft、中国红十字会等网站上应用，有很高的安全性！</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：为什么发货时间很长都没有送到我手上？ </strong></p>\r\n<p>答：原因有多方面：1是收货人的地区较偏远，2是收货人的地址信息不详细，3是没有留下电话、手机联络方式，使配送不员不能及时联系到收货人。如果你没有收到货，可以联系我们的工作人员查货。我们的联系电话是：400-666-5029，E-mail：service@vsvm.net</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：预存款是什么？</strong></p>\r\n<p>答：当您购买某一商品已汇款而缺货时，可以和工作人员联系转成预存款；当下次购买商品时，可直接使用预存款来订购商品。</p>\r\n<p>&nbsp;</p>\r\n<p><strong>问：我下了订单订货汇款后为什么会缺货？</strong></p>\r\n<p>答：公司经常调货出去等各种原因都可能造成库存的不准确，客服人员没得到更新库存导致，购物前请通过官网咨询热线 400-666-5029或在线客服与我们联系咨询是否有货。建议顾客采用在线支付方式（免手续费）和缺货时转成预存款等待下次购物时使用。</p>', '', '', '', 0, 1, 1284206283, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(6, -1, '用户协议', '', '', '', '', 0, 1, 1284206283, '', 0, '', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(40, 6, '货到付款', '<h3>货到付款说明</h3>\r\n<p>我们的货到付款服务由顺丰公司执行。顺丰快递配送范围：覆盖了国内31个省（青海省、西藏自治区暂未开通）近200个大中城市及900多个县级市或城镇。</p>\r\n<p>优点：配送速度较快，配送范围广，服务质量稳定、安全性能高。</p>\r\n<p>缺点：配送费用相对偏高，您若要货到付款，则还需多支付20元（10元的配置费和10元的手续费）给顺丰公司</p>\r\n<p>必须填写详细地址：为了确保您可以及时收到商品，请您在填写地址时一定尽可能的详细，如：XX省XX市XX区（XX县XX镇）XX路XX号。地址不详细，快递公司是无法派件的。</p>\r\n<p>特定地址无法配送：如：警察局、部队等政府机关，或有门禁的单位，配送人员是无法进入的，所以无法直接配送。</p>\r\n<p>解决办法：建议您可以通过留言告知我们的客服您可以到单位门口取件，或是可以将商品直接放到单位门口收发室，客服看到您的备注后会为您处理。</p>\r\n<h3>顺丰配送范围查询</h3>\r\n<p>如果您不确定您那里是否可以使用货到付款，请在这里查询</p>\r\n<p><iframe width="600" style="border:1px solid #3a68c4; height:300px;width:600;overflow-y:scroll" src="http://www.sf-express.com/tabid/552/mid/1724/ctlmode/none/default.aspx?Containersrc=[L]/Containers/Null/default&amp;returnUrl=."></iframe></p>', '', '', '', 0, 1, 1305271199, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(16, 7, '配送说明', '<p>我们会根据您的送货地址以及您选择的配送方式安排快递公司送货上门。</p>\r\n<h3>配送方式</h3>\r\n<p>全场所有的商品我们都采取使用快递派送的方式，我们将通过申通、圆通、中通、顺丰、EMS等快递公司为您送货上门。让您享受高速物流的服务。</p>\r\n<p>商品购买时客户可根据自己所在地区情况安排其配送方式，如果您没有指定快递公司，快递配送方式将由我们指定。普通快递一般默认为申通快递。</p>\r\n<h3>配送范围</h3>\r\n<p>全国各地。由于不同地区不同快递快递公司的配送范围不同，我们建议您在选择配送方式时最好使用您那已有的快递公司，或者您可以咨询我们的在线客服，我们会热忱地为您解忧，帮助您查询。</p>\r\n<h3>配送费用</h3>\r\n<p>全场所售的所有商品全国各地(不含港澳台地区)我们都包邮（使用普通快递），为您节省大笔的物流费，方便您开心地购买。如需指定使用顺丰、EMS发货需加收运费10元。</p>\r\n<h3>配送状况</h3>\r\n<p>您可以随时查看订单详情获知商品的送达情况，或直接与我们的在线客服联系，或者客服热线：400-666-9621 查看您的货物配送状态。我们会真诚地位您服务的！</p>\r\n<h3>配送时间</h3>\r\n<p>正常情况下，我们会在客户付款后24小时内发货。如要加急，请您和我们在线客服联系，请在订单上留言或者选择顺丰加急配送。</p>\r\n<h3>送达时间</h3>\r\n<p>邮政EMS一般是在3-5个工作日送达；其他普通快递是2-4个工作日送达；顺丰加急为1-3个工作日送达，详情需看地区情况。</p>\r\n<h3>货到付款</h3>\r\n<p>我们的货到付款是由顺丰公司执行的，您若要货到付款，则还需多加10元的配置费和10元的手续费给顺丰公司，详情请您咨询我们的在线客服。选择货到付款的客户请您注意所在地区是否在顺丰快递的派送范围，如有不清楚，可咨询我们的在线客服，我们会及时帮您查询确认的。</p>\r\n<h3>异常收货</h3>\r\n<p>如果您订购的商品是当季新品，有可能出现货品紧张。因此匡威官网报给客户的收货时间只限于正常情况，不作为最终承诺，匡威官网将尽全力控制配送时间，如发生特殊情况（调货延迟），匡威官网将及时与您沟通商品确切到达时间。敬请谅解！</p>', '', '', '', 0, 1, 1242577032, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(17, 7, '申通快递', '<p>申通快递：申通快递有限公司（以下简称“申通快递”）成立于2007年，总部设在上海，主要提供跨区域快递业务，是国内快递行业的龙头企业之一。</p>\r\n<p>申通官网： http://www.sto.cn</p>\r\n<h3>申通快递服务说明</h3>\r\n<p>优点：在配送前提供电话联系服务，提供先验货后签收服务。</p>\r\n<p>缺点：部分地区服务质量较差。</p>\r\n<p>必须填写详细地址：为了确保您可以及时收到商品，请您在填写地址时一定尽可能的详细，如：XX省XX市XX区（XX县XX镇）XX路XX号。地址不详细，快递公司是无法派件的。</p>\r\n<p>特定地址无法配送：如：警察局、部队等政府机关，或有门禁的单位，配送人员是无法进入的，所以无法直接配送。</p>\r\n<p>解决办法：建议您可以通过留言告知名鞋库客服您可以到单位门口取件，或是可以将商品直接放到单位门口收发室，客服看到您的备注后会为您处理。</p>\r\n<p>申通快递配送范围：可送达全国大部分地区，具体在下面输入查询。</p>\r\n<p align="center">&nbsp;</p>\r\n<form name="form1" style="border:1px solid #3a68c4; background:#c2e6ff; padding:15px; font-size:14px; width:500px" action="http://sto.cn/wdcx_all.asp" method="get">\r\n    <input name="chaxun" type="text" id="chaxun">       <input name="tiaojian" type="radio" value="wd" checked="">网点查询     <input name="tiaojian" type="radio" value="ps">派送范围查询     <input type="submit" name="Submit" value="查询"> <input name="cx" type="hidden" value="cx">\r\n</form>\r\n<p>&nbsp;</p>   ', '', '', '', 0, 1, 1242577041, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(18, 7, 'EMS快递', '<p><strong>EMS快递</strong>：中国速递服务公司为中国邮政集团公司直属全资公司，主要经营国际、国内EMS特快专递业务，是中国速递服务的最早供应商，也是目前中国速递行业的最大运营商和领导者。</p>\r\n<p><strong>EMS快递官方客服电话</strong>：11185</p>\r\n<p><strong>EMS官网</strong>： http://www.ems.com.cn</p>\r\n<p><strong>服务说明</strong></p>\r\n<p>EMS快递配送范围：可送达全国（除港澳台地区），包括偏远地区</p>\r\n<p>优点：配送范围广。</p>\r\n<p>缺点：</p>\r\n<ul>\r\n    <li>（1）配送前一般不会电话联系客户。</li>\r\n    <li>（2）不允许先验货后签收。</li>\r\n</ul>\r\n<p>由于EMS快递配送前不会与客户电话联系，因此可能会出现配送时收件地址无人签收，造成配送延迟。如出现以上情况，请您拨打当地11185进行查询。</p>\r\n<p>必须填写详细地址：为了确保您可以及时收到商品，请您在填写地址时一定尽可能的详细，如：XX省XX市XX区（XX县XX镇）XX路XX号。地址不详细，快递公司是无法派件的。</p>\r\n<p>特定地址无法配送：如：警察局、部队等政府机关，或有门禁的单位，配送人员是无法进入的，所以无法直接配送。</p>\r\n<p>解决办法：建议您可以通过留言告知名鞋库客服您可以到单位门口取件，或是可以将商品直接放到单位门口收发室，客服看到您的备注后会为您处理。</p>', '', '', '', 0, 1, 1242577127, '', 0, '', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(19, 7, '顺丰速递', '<h3>顺丰速运说明</h3>\r\n<p>我们全场是包普通快递的。如果您有急事需要尽早收到鞋子，您可以与我们的客服人员联系使用顺丰加急服务。</p>\r\n<p>顺丰快递配送范围：覆盖了国内31个省（青海省、西藏自治区暂未开通）近200个大中城市及900多个县级市或城镇。</p>\r\n<p>优点：配送速度较快，配送范围广，服务质量稳定、安全性能高。</p>\r\n<p>缺点：配送费用相对偏高，您若需使用顺丰快递，需向我们多支付10元的快递费</p>\r\n<p>必须填写详细地址：为了确保您可以及时收到商品，请您在填写地址时一定尽可能的详细，如：XX省XX市XX区（XX县XX镇）XX路XX号。地址不详细，快递公司是无法派件的。</p>\r\n<p>特定地址无法配送：如：警察局、部队等政府机关，或有门禁的单位，配送人员是无法进入的，所以无法直接配送。</p>\r\n<p>解决办法：建议您可以通过留言告知我们的客服您可以到单位门口取件，或是可以将商品直接放到单位门口收发室，客服看到您的备注后会为您处理。</p>\r\n<h3>顺丰配送范围查询</h3>\r\n<p>如果您不确定您那里是否可以使用货到付款，请在这里查询</p>\r\n<p><iframe width="600" style="border:1px solid #3a68c4; height:400px;width:600;overflow-y:scroll" src="http://www.sf-express.com/tabid/552/mid/1724/ctlmode/none/default.aspx?Containersrc=[L]/Containers/Null/default&amp;returnUrl=."></iframe></p>', '', '', '', 0, 1, 1242577178, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(20, 8, '正品保证', '<p>我们是一个销售<a href="http://www.vsvm.net/">VSVM</a>品牌鞋子的网上Visvm专卖店，在这里您不仅可以找到很多Visvim专柜的款式，更是在价格上略胜一筹，让您不仅买的舒心，买得开心，更为您买得放心！Visvim正品专卖所销售商品均为Visvim授权工厂直接供货，绝无、尾货、A货、B货。对于现在消费者对网上销售商品的疑虑，我们完全可以理解，因此我们特别承诺：假一赔三！免除您的后顾之忧。</p>\r\n<h3>正品渠道</h3>\r\n<p>很多Visvim的网络销售都会说自己的货是正品，说是专柜上直接销售的，其实专柜和网络销售是互有竞争力的。网络销售的价格很大程度上是比专柜的价格便宜近一半，当网络销售成为主流时，专柜的存在就会成为不必要了。从某种程度上说，专柜上的商品一般是不会拿到网络销售的，因为会冲击专柜的销售。</p>\r\n<p>Visvim正品专卖的货源渠道是直接与Visvim授权生产的工厂合作，其商品是工厂直接出货的，商品的包装绝对是完整，同时也绝对是洁净的弥补存在专柜的那种试穿过的情况。我们网站所有商品的各种资料齐全，商品外包装、商品标签、价格签、合格证、产品型号等购物凭证与您在正规专卖店购买的商品完全一致。</p>\r\n<h3>假一赔三</h3>\r\n<p>为了让消费者放心，我们郑重承诺，在我们所售出的商品中，您要是发现有存在假货，并能提供国家相关质检机构的证明文件，经确认后，我们将赔偿您所售商品的3倍售价的金额，以弥补对您的伤害和损失！</p>\r\n<p>赔付金额=买家实际支付商品价格的3倍</p>\r\n<p>同时我们所售的商品更是敢于接受专柜验货，不管您处于何地，不管您何时在我们的网站购买我们的商品，我们都支持您将我们的商品进行专柜的检验，免除您的一切担忧！</p>', '', '', '', 0, 1, 1242577199, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(21, 8, '退换政策', '<p>对于很多网络购买用户头疼的事莫过于网购的商品不满意或者是质量不行，抑或是尺码不符，在此我们承诺7天自由退换货，让您少了后顾之忧，放心大胆地选购您的商品！</p>\r\n<h3>一、退换货承诺</h3>\r\n<p>对于所售商品，我们为您提供7天自由退换货服务。</p>\r\n<p>郑重承诺：自客户收到商品之日起（以签收日期为准）7日内，如商品及包装保持我们出售时原状且配件齐全，我们将提供自由退换的服务。</p>\r\n<h3>二、退换货条件</h3>\r\n<h4>1、退货条件</h4>\r\n<ul>\r\n    <li>我们所售的商品存在非人为质量问题</li>\r\n    <li>商品的外包装、附件、吊牌等完好（请不要把胶带直接粘在鞋盒上，否则我们将拒收）</li>\r\n    <li>未经使用、洗涤、污损、加工等。</li>\r\n    <li>退货时间自签收商品日期起7日内。</li>\r\n</ul>\r\n<p>注：亦可换货，但仅限更换同系列或同等价格的商品。个别情况，如有差价多还少补。</p>\r\n<h4>2、换货条件</h4>\r\n<ul>\r\n    <li>我们所售的商品尺码不符，抑或是不满意。</li>\r\n    <li>商品的外包装、附件、吊牌等完好（请不要把胶带直接粘在鞋盒上，否则我们将拒收）</li>\r\n    <li>未经使用、洗涤、污损、加工等。</li>\r\n    <li>自签收商品日期起7日内。</li>\r\n    <li>仅限更换同系列或同等价格的商品。个别情况，如有差价需补上。</li>\r\n</ul>\r\n<h3>三、退换货配送及费用</h3>\r\n<p>1、退换货的配送方式同购买时的配送相同。</p>\r\n<p>2、个别情况，可加急配送。（仅限在顺丰快递的派送范围）</p>\r\n<p>3、符合退换货条件的，退换货产生的费用规定：</p>\r\n<ul>\r\n    <li>关于退换货的产生的运费，如果由于产品本身质量问题造成的退换，运费由我们承担。</li>\r\n    <li>由于款式、颜色、尺码、个人喜好等原因造成的退换货，运费由客户负责。</li>\r\n</ul>\r\n<h3>四、以下情况将不提供退换货服务：</h3>\r\n<ul>\r\n    <li>任何不符合退换货条件的商品。</li>\r\n    <li>任何非Asics网上专卖出售的商品。</li>\r\n    <li>任何已使用的无质量问题的商品。</li>\r\n    <li>任何因非正常使用及保管导致出现质量问题的商品。</li>\r\n    <li>商品的外包装破损（包括包裹填充物及外包装箱或外包装袋），商品附件、说明书、保修单、吊牌等有缺失。</li>\r\n</ul>\r\n<p>注：图片及信息仅供参考，不属质量问题。因拍摄灯光及不同显示器色差等问题可能造成商品图片与实物有一定色差，这不属于质量问题，一切以实物为准。</p>\r\n<h3>五、办理退换货</h3>\r\n<p>办理换货：我们在收到您的换货后48小时内，将您的换货商品发出；若您换货商品缺货，我们会在第一时间联系您，在取得您同意的情况下更换为其它商品或根据您的要求，进行退货或退款处理。</p>\r\n<p>办理退货：订单需要退货或者因为缺货取消，退款会在3个工作日内完成。</p>', '', '', '', 0, 1, 1242577293, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(22, 8, '退换流程', '<p><strong>符合退换货政策条件后，应进行的退换货流程：</strong></p>\r\n<p><strong>第一步</strong>：如果您需要办理退换货，请依照退换政策联系网站的在线客服，或拨打客服中心热线400-666-5029联系售后服务部，提供您的订单编号或相关订单信息（收货人、联系方式等）申请退换货服务。</p>\r\n<p><strong>重要提示</strong>：为了尽快帮您解决问题，请您在第一时间与我们的客服联系，以便我们能及时为您办理相关手续。切勿在未与Asics网上专卖客服联系前直接将商品寄出！</p>\r\n<p><strong>第二步</strong>：<strong>退换货条件</strong></p>\r\n<p><strong>1、退货条件</strong></p>\r\n<ul>\r\n    <li>我们所售的商品存在非人为质量问题</li>\r\n    <li>商品的外包装、附件、吊牌等完好（请不要把胶带直接粘在鞋盒上，否则我们将拒收） 未经使用、洗涤、污损、加工等。</li>\r\n    <li>退货时间自签收商品日期起7日内。</li>\r\n</ul>\r\n<p><strong>注</strong>：亦可换货，但仅限更换同系列或同等价格的商品。个别情况，如有差价多还少补。</p>\r\n<p><strong>2、换货条件</strong></p>\r\n<ul>\r\n    <li>我们所售的商品尺码不符，抑或是不满意。</li>\r\n    <li>商品的外包装、附件、吊牌等完好（请不要把胶带直接粘在鞋盒上，否则我们将拒收） 未经使用、洗涤、污损、加工等。</li>\r\n    <li>自签收商品日期起7日内。</li>\r\n    <li>仅限更换同系列或同等价格的商品。个别情况，如有差价多还少补。</li>\r\n</ul>\r\n<p><strong>第三步：将需退还的商品邮寄回Asics网上专卖</strong></p>\r\n<p>1. 请确保产品外包装、内附配件齐全。内附配件包括：鞋盒、鞋盒内填充物、标牌、标签、防潮纸及说明书、发票等。</p>\r\n<p>2. 请在寄回时在商品包装盒外务必再套上Asics网上专卖寄出的外包装盒，避免将快递胶带直接粘在商品的包装盒上，以确保商品盒子完好。</p>\r\n<p><strong>第四步：退款确认与换货确认</strong></p>\r\n<p><strong>退款确认</strong>：我们会通知您，已经确认收到您所退商品，并在1-2个工作日内对所退商品完成质检审核后，根据您选择的退款方式（详情请关注“退款流程”）完成退款手续。</p>\r\n<p><strong>换货确认</strong>：我们会通知您，已经确认收到您所换商品，并在1-2个工作日内对所退回商品完成质检审核后并及时帮您换货，并将换货物流信息以短信方式通知您。如有异常情况出现，我们客服会在第一时间与您联系。&nbsp;</p>\r\n', '', '', '', 0, 1, 1242577308, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(23, 8, '如何退款', '<p>符合退货条件及其他差额退款的，进行的<strong>退款流程</strong>如下：</p>\r\n<p>为了更快地处理您的退款要求，请您直接联系我们的在线客服，或拨打Asics网上专卖服务热线<strong style="font-weight: bold; ">400-666-5029</strong>;。</p>\r\n<p>1．顾客联系售后客服，提供订单信息，提出退换货申请；;</p>\r\n<p>2．顾客与客服确认退换货事项后，根据订单状态与客服确认退款方式，并将商品邮寄回Asics网上专卖，如有赠品，请将赠品一同退回。</p>\r\n<p><strong>退款方式</strong>：与支付方式相同，以顾客的支付方式退回相应的支付账号中;</p>\r\n<ul>\r\n    <li>1) 支付宝、财付通：如订单交易未成功，可直接通过支付宝申请退款；如订单交易已成功，则提供支付宝账号，我们将以即时到帐的方式退到顾客的支付宝账号内；;</li>\r\n    <li>2) 银行汇款退款：提供银行帐号，并注明开户行、分行名称以及收款人姓名；;</li>\r\n    <li>3) 邮政汇款退款：提供收款人姓名、详细地址和邮政编码;</li>\r\n    <li>4) 电子银联退款：提供银行帐号，并注明开户行、分行名称以及收款人姓名;</li>\r\n</ul>\r\n<p>3．我们售后部收到商品后通知顾客，并在1-2工作日内完成商品完成质检审核后进行退款操作。;</p>\r\n<p>4．如有异常情况出现，客服会在第一时间与您联系确认信息重新操作；;</p>\r\n<p>5．顾客查收货款。</p>\r\n<p><strong style="font-weight: bold; ">注意事项;</strong></p>\r\n<p>1．第三方支付平台帐号（支付宝帐号）处理退款，顾客可登陆第三方平台通过交易号、订单号等查询。;</p>\r\n<p>2．其他退款方式由于跨行或邮政汇款等原因，款项可能不会立刻到帐，因此请您耐心等候或与客服中心电话联系确认。;</p>', '', '', '', 0, 1, 1242577326, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(43, 10, '我的订单', '', '', '', '', 0, 1, 1305274740, '', 0, 'user.php?act=order_list', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(44, 10, '我的账户', '', '', '', '', 0, 1, 1305274793, '', 0, '/size.php', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(45, 10, '尺码选择', '', '', '', '', 0, 1, 1305274950, '', 0, '/size.php', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(46, 9, '错误反馈', '<p>&nbsp;<span class="Apple-style-span" style="font-family: Arial, Helvetica, Verdana, sans-serif; color: rgb(68, 68, 68); line-height: 26px; ">如果您在使用我们网站的时候，遇到页面打不开等错误，请在下面留言，我们会及时回复！</span></p>', '', '', '', 0, 1, 1305276077, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(47, 9, '投诉建议', '<ul>\r\n    <li><strong>客服投诉</strong></li>\r\n</ul>\r\n<p>如果您我们的某位客服交流不顺畅，或客服的服务不周到，您可以将对客服的意见直接投诉至销售经理：tousu@vsvm.net</p>\r\n<ul>\r\n    <li>\r\n    <p><strong>提出您的建议</strong></p>\r\n    </li>\r\n</ul>\r\n<p>如果您对<a target="_blank" href="http://www.vsvm.net/">VSVM官网</a>有任何建议，我们非常愿意倾听，我们的建议邮箱是：ideas@vsvm.net</p>\r\n<ul>\r\n    <li>\r\n    <p><strong>疑问和困惑</strong></p>\r\n    </li>\r\n</ul>\r\n<p>如果你有任何疑问，请致电：400-666-5029。</p>\r\n<p>我们的发展离不开您的支持，我们将汇总您的投诉与建议，您将有机会获得我们送出的精美礼包。再次感谢您的支持 !</p>', '', '', '', 0, 1, 1305276222, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(48, 9, '联系方式', '<ul>\r\n     <li>客服工作时间： 10：00 - 23：00</li>\r\n</ul>\r\n<p>如果您对<a href="http://www.cgame.cn/">中游网</a>正品专卖店的产品有任何疑问，或者对我们的服务有任何意见或建议，非常欢迎您直接与我们联络，我们将竭诚为您服务。</p>', '', '', '', 0, 1, 1305276486, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(41, 6, '网银/转账支付', '<h3>一、使用网银付款</h3>\r\n<p>网银在线是中国领先的提供电子支付解决方案提供商之一，致力于为国内企业提供完善的电子支付解决方案。 支持中国银行、工商银行、建设银行、农业银行、交通银行、招商银行、华夏银行、民生银行、兴业银行、光大银行、中信银行、上海浦发银行、广发银行、深圳发展银行、东亚银行、渤海银行、重庆银行、南京银行等多家银行银行卡在线支付。</p>\r\n<div><strong>支付限额：</strong>支付时，提示您的银行卡有支付限额，建议您联系我们的工作人员，采用分次付款的方式拍下。</div>\r\n<div>&nbsp;</div>\r\n<div><strong>支付常见问题：</strong></div>\r\n<div>&nbsp;</div>\r\n<div>1、支付中出现乱码：支付过程中，显示支付接口错误，请返回，建议您取消该订单，重新下单进行支付。</div>\r\n<div>2、支付窗口无法弹出：</div>\r\n<div>因为您的IE权限过高导致弹窗弹不出来，解决办法有两种：</div>\r\n<ul>\r\n    <li>打开IE的internet选项&gt;&gt;隐私，把&ldquo;启用弹出窗口阻止程序&rdquo;前面的勾去掉。</li>\r\n    <li>重新下单，付款方式改用支付宝。如果没有支付宝账号，在支付宝付款的页面选择&ldquo;我没有支付宝&rdquo;，然后跳转至银行卡付款即可！</li>\r\n</ul>\r\n<p><strong>退款相关：</strong>如果您支付后需要退款，我们会直接退回到您的支付宝帐户中，到账时间为办理退款后2个工作日（如遇节假日自动顺延）左右。</p>\r\n<p><strong>网银在线官方帮助：</strong>关于网银支付的问题，如果您遇到问题，可以咨询我们的热线。也可以咨询网银在线客服中心，</p>\r\n<h3>二、使用银行/柜台转账&nbsp;</h3>\r\n<p>使用银行转账前，请先联系我们的工作人员索取银行账户，点击这里联系我们的在线客服。</p>\r\n<h3>使用网上银行转账</h3>\r\n<p><strong>交易形式</strong>：网上银行支付是即时到帐交易。</p>\r\n<p><strong>插件问题</strong>：如果出现需要安装插件等原因不能支付的情况，请选择IE浏览器，并安装相应的插件，退出浏览器后重新登陆进行支付。</p>\r\n<p><strong>退款相关</strong>：如果您支付后需要退款，我们会通知您，和您核对银行账户及户名后退款，到账时间为办理退款后24小时左右。</p>\r\n<p><strong>其他问题</strong>：如果您在支付中遇到了其他无法解决的问题，您也可以联系各银行客户服务中心，或者拨打我们客服电话。</p>\r\n<h3>关于银行柜台转账</h3>\r\n<p>我们所讲的银行转账为线下银行转账，请您选择此付款方式后联系我们的在线客服或拨打我们的热线索要我们相关的银行账号及户名。匡威正品专卖店在此提醒您请您注意转账安全！如有其他问题，请您及时和我们联系。</p>', '', '', '', 0, 1, 1305271994, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(38, 6, '安全支付', '<p>我们支持支付宝、网上银行、柜台转账、货到付款的支付方式，您可以选择方便您的支付方式支付，我们随时欢迎您的订购！</p>\r\n<h3>一、关于支付宝</h3>\r\n<p><strong>交易形式</strong>：Visvim正品专卖已是支付宝的诚信商家，我们现采用的支付宝支付为即时到帐交易。如您有疑虑，您可以和我们的在线客服联系，我们会帮您切换至支付宝担保交易，即您可以在收到货再后到支付宝后台确认付款。</p>\r\n<p><strong>支付限额</strong>：支付时，提示您的银行卡有支付限额，建议您使用其他支付方式支付，或者选用相应支付方式像支付宝帐户分多次进行充值，然后使用支付宝余额进行支付。</p>\r\n<p><strong>支付常见问题</strong>：</p>\r\n<ul>\r\n    <li>支付中出现乱码：支付过程中，显示支付接口错误，请返回，建议您取消该订单，重新下单进行支付。</li>\r\n    <li>提交插件问题：如果出现需要安装插件等原因不能支付的情况，请选择IE浏览器，安装相应的插件，退出重新登陆进行支付。</li>\r\n</ul>\r\n<p><strong>退款相关</strong>：如果您支付后需要退款，我们会直接退回到您的支付宝帐户中，到账时间为办理退款后24小时左右。（未通过支付宝认证的，为保障您的权益，我们会另通知您换个方式退款。</p>\r\n<p><strong>支付宝官方帮助</strong>：关于支付宝支付、充值、认证等操作，如果您遇到问题，也可以咨询支付宝客服中心，支付宝官方客服电话：0571-88156688。</p>\r\n<h3>二、关于网上银行/柜台转账</h3>\r\n<p>我们所讲的银行转账为线下银行转账，请您选择此付款方式后联系我们的在线客服或拨打我们的热线 400-666-5029 所要我们相关的银行账号及户名。Visvim正品专卖店在此提醒您请您注意转账安全！如有其他问题，请您及时和我们联系。</p>\r\n<p><strong>交易形式</strong>：网上银行/柜台转账是即时到帐交易。</p>\r\n<p><strong>网银转账出现插件问题</strong>：如果出现需要安装插件等原因不能支付的情况，请选择IE浏览器，并安装相应的插件，退出浏览器后重新登陆进行支付。</p>\r\n<p><strong>退款相关</strong>：如果您支付后需要退款，我们会通知您，和您核对银行账户及户名后退款，到账时间为办理退款后24小时左右。</p>\r\n<p><strong>其他问题</strong>：如果您在支付中遇到了其他无法解决的问题，您也可以联系各银行客户服务中心，或者拨打我们客服电话。</p>\r\n<h3>&nbsp;</h3>\r\n<h3>三、关于货到付款</h3>\r\n<p>我们的货到付款是由顺丰公司执行的，您若要货到付款，则还需多加10元的配置费和10元的手续费给顺丰公司，详情请您咨询我们的在线客服。选择货到付款的客户请您注意所在地区是否在顺丰快递的派送范围，如有不清楚，可咨询我们的在线客服，我们会及时帮您查询确认的。</p>', '', '', '', 0, 1, 1305178945, '', 0, 'http://', '');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(39, 6, '支付宝', '<p><strong>交易形式</strong>：<a target="_blank" href="http://www.vsvm.net/">VSVM官网</a>已是支付宝的诚信商家，支持担保交易和即时到帐，您可以在收到货再后到支付宝后台确认付款。</p>\r\n<p><strong>支付限额</strong>：支付时，提示您的银行卡有支付限额，建议您使用其他支付方式支付，或者选用相应支付方式像支付宝帐户分多次进行充值，然后使用支付宝余额进行支付。</p>\r\n<p><strong>支付常见问题</strong>：</p>\r\n<ul>\r\n    <li>支付中出现乱码：支付过程中，显示支付接口错误，请返回，建议您取消该订单，重新下单进行支付。</li>\r\n    <li>提交插件问题：如果出现需要安装插件等原因不能支付的情况，请选择IE浏览器，安装相应的插件，退出重新登陆进行支付。</li>\r\n</ul>\r\n<p><strong>退款相关</strong>：如果您支付后需要退款，我们会直接退回到您的支付宝帐户中，到账时间为办理退款后24小时左右。（未通过支付宝认证的，为保障您的权益，我们会另通知您换个方式退款。</p>\r\n<p><strong>支付宝官方帮助</strong>：关于支付宝支付、充值、认证等操作，如果您遇到问题，可以咨询我们的热线 400-666-5029。也可以咨询支付宝客服中心，支付宝官方客服电话：0571-88156688。</p>', '', '', '', 0, 1, 1305178966, '', 0, 'http://', '安全支付');
INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES(5, 2, '关于我们', '<h1>关于珍品汇</h1>', '', '', '', 0, 1, 1284206283, '', 0, 'http://', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_article_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_article_cat`(`cat_id` smallint(5) NOT NULL AUTO_INCREMENT, `cat_name` varchar(255) NOT NULL DEFAULT '', `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1', `keywords` varchar(255) NOT NULL DEFAULT '', `cat_desc` varchar(255) NOT NULL DEFAULT '', `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50', `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0', `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`cat_id`),KEY `cat_type` (`cat_type`),KEY `sort_order` (`sort_order`),KEY `parent_id` (`parent_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `ecs_article_cat`
--

INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES(1, '系统分类', 2, '', '系统保留分类', 50, 0, 0),(2, '网店信息', 3, '', '网店信息分类', 50, 0, 1);
INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES(3, '网店帮助分类', 4, '', '网店帮助分类', 50, 0, 1),(5, '新手上路 ', 5, '', '', 50, 0, 3),(6, '支付方式', 5, '', '手机常识 ', 50, 0, 3);
INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES(7, '配送方式', 5, '', '配送方式', 50, 0, 3),(8, '服务保证 ', 5, '', '', 50, 0, 3),(9, '联系我们 ', 5, '', '联系我们 ', 50, 0, 3);
INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES(10, '会员中心', 5, '', '', 50, 0, 3),(12, '站内快讯', 1, '', '', 50, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_attribute`
--

CREATE TABLE IF NOT EXISTS `ecs_attribute`(`attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0', `attr_name` varchar(60) NOT NULL DEFAULT '', `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1', `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1', `attr_values` text NOT NULL, `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0', `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0', `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0', `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`attr_id`),KEY `cat_id` (`cat_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=215 ;

--
-- 转存表中的数据 `ecs_attribute`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_auction_log`
--

CREATE TABLE IF NOT EXISTS `ecs_auction_log`(`log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `act_id` mediumint(8) unsigned NOT NULL, `bid_user` mediumint(8) unsigned NOT NULL, `bid_price` decimal(10,2) unsigned NOT NULL, `bid_time` int(10) unsigned NOT NULL,PRIMARY KEY (`log_id`),KEY `act_id` (`act_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_auction_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_auto_manage`
--

CREATE TABLE IF NOT EXISTS `ecs_auto_manage`(`item_id` mediumint(8) NOT NULL, `type` varchar(10) NOT NULL, `starttime` int(10) NOT NULL, `endtime` int(10) NOT NULL,PRIMARY KEY (`item_id`,`type`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_auto_manage`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_back_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_back_goods`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `back_id` mediumint(8) unsigned DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `product_sn` varchar(60) DEFAULT NULL, `goods_name` varchar(120) DEFAULT NULL, `brand_name` varchar(60) DEFAULT NULL, `goods_sn` varchar(60) DEFAULT NULL, `is_real` tinyint(1) unsigned DEFAULT '0', `send_number` smallint(5) unsigned DEFAULT '0', `goods_attr` text,PRIMARY KEY (`rec_id`),KEY `back_id` (`back_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_back_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_back_order`
--

CREATE TABLE IF NOT EXISTS `ecs_back_order`(`back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `delivery_sn` varchar(20) NOT NULL, `order_sn` varchar(20) NOT NULL, `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `invoice_no` varchar(50) DEFAULT NULL, `add_time` int(10) unsigned DEFAULT '0', `shipping_id` tinyint(3) unsigned DEFAULT '0', `shipping_name` varchar(120) DEFAULT NULL, `user_id` mediumint(8) unsigned DEFAULT '0', `action_user` varchar(30) DEFAULT NULL, `consignee` varchar(60) DEFAULT NULL, `address` varchar(250) DEFAULT NULL, `country` smallint(5) unsigned DEFAULT '0', `province` smallint(5) unsigned DEFAULT '0', `city` smallint(5) unsigned DEFAULT '0', `district` smallint(5) unsigned DEFAULT '0', `sign_building` varchar(120) DEFAULT NULL, `email` varchar(60) DEFAULT NULL, `zipcode` varchar(60) DEFAULT NULL, `tel` varchar(60) DEFAULT NULL, `mobile` varchar(60) DEFAULT NULL, `best_time` varchar(120) DEFAULT NULL, `postscript` varchar(255) DEFAULT NULL, `how_oos` varchar(120) DEFAULT NULL, `insure_fee` decimal(10,2) unsigned DEFAULT '0.00', `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00', `update_time` int(10) unsigned DEFAULT '0', `suppliers_id` smallint(5) DEFAULT '0', `status` tinyint(1) unsigned NOT NULL DEFAULT '0', `return_time` int(10) unsigned DEFAULT '0', `agency_id` smallint(5) unsigned DEFAULT '0',PRIMARY KEY (`back_id`),KEY `user_id` (`user_id`),KEY `order_id` (`order_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_back_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_bonus_type`
--

CREATE TABLE IF NOT EXISTS `ecs_bonus_type`(`type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `type_name` varchar(60) NOT NULL DEFAULT '', `type_money` decimal(10,2) NOT NULL DEFAULT '0.00', `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0', `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `send_start_date` int(11) NOT NULL DEFAULT '0', `send_end_date` int(11) NOT NULL DEFAULT '0', `use_start_date` int(11) NOT NULL DEFAULT '0', `use_end_date` int(11) NOT NULL DEFAULT '0', `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',PRIMARY KEY (`type_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_bonus_type`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_booking_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_booking_goods`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `email` varchar(60) NOT NULL DEFAULT '', `link_man` varchar(60) NOT NULL DEFAULT '', `tel` varchar(60) NOT NULL DEFAULT '', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_desc` varchar(255) NOT NULL DEFAULT '', `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0', `booking_time` int(10) unsigned NOT NULL DEFAULT '0', `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0', `dispose_user` varchar(30) NOT NULL DEFAULT '', `dispose_time` int(10) unsigned NOT NULL DEFAULT '0', `dispose_note` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`rec_id`),KEY `user_id` (`user_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_booking_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_brand`
--

CREATE TABLE IF NOT EXISTS `ecs_brand`(`brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `brand_name` varchar(60) NOT NULL DEFAULT '', `brand_logo` varchar(80) NOT NULL DEFAULT '', `brand_desc` text NOT NULL, `site_url` varchar(255) NOT NULL DEFAULT '', `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50', `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',PRIMARY KEY (`brand_id`),KEY `is_show` (`is_show`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `ecs_brand`
--

INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show`) VALUES(3, 'CGAME', 'saestor://img/data/brandlogo/1322706462942512000.gif', '', 'http://www.Cgame.cn/', 50, 1),(35, '百丽', '', '', 'http://', 50, 1);
INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show`) VALUES(36, '南阳玉', '', '', '', 50, 1),(37, '宝玉满堂', '', '', '', 50, 1),(38, '兰蔻', '', '', '', 50, 1),(39, '娇韵诗', '', '', '', 50, 1);
INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show`) VALUES(40, '欧莱雅', '', '', '', 50, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_card`
--

CREATE TABLE IF NOT EXISTS `ecs_card`(`card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `card_name` varchar(120) NOT NULL DEFAULT '', `card_img` varchar(255) NOT NULL DEFAULT '', `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00', `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00', `card_desc` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`card_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_card`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_cart`
--

CREATE TABLE IF NOT EXISTS `ecs_cart`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_sn` varchar(60) NOT NULL DEFAULT '', `goods_name` varchar(120) NOT NULL DEFAULT '', `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00', `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0', `goods_attr` text NOT NULL, `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0', `extension_code` varchar(30) NOT NULL DEFAULT '', `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0', `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0', `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0', `goods_attr_id` varchar(255) NOT NULL DEFAULT '', `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`rec_id`),KEY `session_id` (`session_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `ecs_cart`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_category`
--

CREATE TABLE IF NOT EXISTS `ecs_category`(`cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `cat_name` varchar(90) NOT NULL DEFAULT '', `keywords` varchar(255) NOT NULL DEFAULT '', `cat_desc` varchar(255) NOT NULL DEFAULT '', `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0', `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50', `template_file` varchar(50) NOT NULL DEFAULT '', `measure_unit` varchar(15) NOT NULL DEFAULT '', `show_in_nav` tinyint(1) NOT NULL DEFAULT '0', `style` varchar(150) NOT NULL, `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1', `grade` tinyint(4) NOT NULL DEFAULT '0', `filter_attr` varchar(255) NOT NULL DEFAULT '0',PRIMARY KEY (`cat_id`),KEY `parent_id` (`parent_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- 转存表中的数据 `ecs_category`
--

INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(16, '名品箱包', '名品箱包', '', 0, 50, '', '件', 1, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(23, '倩碧', '倩碧', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(20, '珠宝玉器', '', '珠宝玉器', 0, 50, '', '双', 1, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(17, '特色礼品', '名牌礼品', '', 0, 50, '', '件', 1, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(18, '高档化妆品', '化妆品', '', 0, 50, '', '件', 1, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(24, '欧莱雅', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(25, '雅诗兰黛', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(26, '兰蔻', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(27, '碧欧泉', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(28, '香奈儿', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(29, '娇韵诗', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(30, '娇兰', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(31, '资生堂', '', '', 18, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(39, '兰蔻护肤', '', '', 26, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(40, '兰蔻彩妆', '', '', 26, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(41, '兰蔻香水', '', '', 26, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(42, '兰蔻男士', '', '', 0, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(43, '兰蔻男士', '', '', 26, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(44, '兰蔻小黑瓶', '', '', 26, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(45, '欧莱雅男士', '', '', 24, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(46, '眼霜', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(47, '润肤', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(48, '精华', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(49, '卸妆清洁', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(50, '日霜', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(51, '晚霜', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(52, '防晒/隔离', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(53, '面膜', '', '', 39, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(54, '兰蔻双层眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(55, '兰蔻菁纯臻颜眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(56, '兰蔻新紧致纤妍眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(57, '兰蔻精华眼膜霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(58, '兰蔻水份缘舒缓眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(59, '蔻金纯卓颜眼霜', '', '', 0, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(60, '兰蔻金纯卓颜眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(61, '兰蔻臻萃华光眼霜', '', '', 46, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(62, '兰蔻全新紧致纤妍面霜', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(63, '兰蔻全新水份缘舒缓日霜', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(64, '兰蔻菁纯臻颜日霜', '', '', 0, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(65, '兰蔻全新水份缘舒缓日霜(干性)', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(66, '兰蔻菁纯臻颜日霜', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(67, '兰蔻金纯卓颜日霜 SPF15', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(68, '兰蔻臻萃华光活肤面霜', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(69, '兰蔻智能愉悦臻白日霜', '', '', 50, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(70, '兰蔻全新水份缘舒缓凝霜', '', '', 47, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(71, '兰蔻臻白乳液（均衡型）', '', '', 47, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(72, '兰蔻臻白乳液（滋润型）', '', '', 47, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(73, '兰蔻新紧致纤妍眼部精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(74, '兰蔻智能愉悦臻白眼部精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(75, '兰蔻智能密钥臻白精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(76, '兰蔻金纯润白精华露', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(77, '兰蔻金纯卓颜精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(78, '兰蔻水份缘舒缓精华液', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(79, '兰蔻“精华肌底液”(小黑瓶)', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(80, '兰蔻新紧致纤妍精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(81, '兰蔻弹力修护臻白精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(82, '兰蔻“精华肌底液” 大容量装', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(83, '兰蔻菁纯臻颜夜间精华乳', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(84, '兰蔻“精华肌底液”加大容量装', '', '', 48, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(85, '兰蔻智能愉悦臻白柔肤水(滋润型)', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(86, '兰蔻金纯卓颜美容液', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(87, '兰蔻清滢眼部卸妆水', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(88, '兰蔻清滢洁肤水', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(89, '兰蔻清滢柔肤水(干性)', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(90, '兰蔻水凝保湿面膜', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(91, '兰蔻立体塑颜美容液', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(92, '兰蔻清滢柔肤洁面乳', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(93, '兰蔻深层清洁面膜', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(94, '兰蔻嫩肤水', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(95, '兰蔻清滢按摩洁面乳', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(96, '兰蔻清滢柔肤洁面乳(中性)', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(97, '蔻清滢洁面卸妆油', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(98, '兰蔻清滢洁面卸妆乳', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(99, '兰蔻智能愉悦臻白洁面泡沫', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(100, '兰蔻全新水份缘舒缓柔肤啫哩', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(101, '兰蔻金纯卓颜洁面乳', '', '', 49, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(102, '兰蔻智能愉悦臻白凝润面膜', '', '', 53, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(103, '兰蔻水凝保湿面膜', '', '', 53, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(104, '兰蔻智能愉悦臻白晚霜', '', '', 51, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(105, '兰蔻全新水份缘舒缓晚霜', '', '', 51, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(106, '兰蔻金纯卓颜晚霜', '', '', 51, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(107, '兰蔻菁纯臻颜晚霜', '', '', 51, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(108, '兰蔻立体塑颜晚霜', '', '', 51, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(109, '兰蔻全新柔皙遮瑕隔离乳BB霜', '', '', 52, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(110, '兰蔻全新兰蔻柔皙轻透防晒乳SPF30+/', '', '', 52, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(111, '兰蔻金纯卓颜防晒乳', '', '', 52, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(112, '兰蔻全新兰蔻柔皙轻透防晒乳SPF30/P', '', '', 52, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(113, '兰蔻精华肌底面膜', '', '', 53, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(114, '兰蔻深层清洁面膜', '', '', 53, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(115, '睫毛膏', '', '', 40, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(116, '眼影', '', '', 40, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(117, '粉底液', '', '', 40, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(118, '唇膏', '', '', 40, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(119, '粉饼', '', '', 40, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(120, '兰蔻滋润感光粉盒-（不含粉芯）', '', '', 119, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(121, '兰蔻滋润感光粉饼(不含粉盒)', '', '', 119, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(122, '兰蔻臻白宝石光彩散粉', '', '', 119, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(123, '兰蔻臻白宝石光彩粉饼（不含粉盒）', '', '', 119, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(124, '兰蔻清新恒采粉饼 SPF20 PA++(', '', '', 119, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(125, '兰蔻玫瑰双色眼影 兰蔻玫瑰双色眼影', '', '', 116, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(126, '兰蔻玫瑰四色眼影', '', '', 116, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(127, '兰蔻新玫瑰四色眼影', '', '', 116, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(128, '兰蔻妆前凝乳', '', '', 117, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(129, '兰蔻奇迹薄纱粉底液', '', '', 117, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(130, '兰蔻臻白宝石光彩粉底液', '', '', 117, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(131, '兰蔻滋润感光粉底乳', '', '', 117, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(132, '兰蔻抗皱粉底液', '', '', 117, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(133, '兰蔻新流光炫色唇彩', '', '', 118, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(134, '兰蔻菁纯柔亮唇蜜', '', '', 118, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(135, '兰蔻金纯玫瑰唇膏', '', '', 118, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(136, '兰蔻催眠防水睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(137, '兰蔻全新梦魅臻采睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(138, '兰蔻梦魅旋密睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(139, '兰蔻梦魅玛瑙亮泽睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(140, '兰蔻催眠睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(141, '兰蔻旋翘睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(142, '兰蔻微振电动睫毛膏', '', '', 115, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(143, '兰蔻璀璨香水', '', '', 41, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(144, '兰蔻奇迹香水', '', '', 41, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(145, '兰蔻梦魅香水', '', '', 41, 50, '', '', 0, '', 1, 0, '');
INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES(146, '兰蔻珍爱香水', '', '', 41, 50, '', '', 0, '', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_cat_recommend`
--

CREATE TABLE IF NOT EXISTS `ecs_cat_recommend`(`cat_id` smallint(5) NOT NULL, `recommend_type` tinyint(1) NOT NULL,PRIMARY KEY (`cat_id`,`recommend_type`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_cat_recommend`
--

INSERT INTO `ecs_cat_recommend` (`cat_id`, `recommend_type`) VALUES(16, 1),(16, 2),(16, 3),(17, 1),(17, 2),(17, 3),(18, 1),(18, 2),(18, 3),(19, 1),(19, 2),(19, 3),(20, 1),(20, 2),(20, 3),(23, 1),(23, 2),(23, 3),(24, 1),(24, 2),(24, 3),(25, 1),(25, 2),(25, 3),(26, 1),(26, 2),(26, 3),(27, 1),(27, 2),(27, 3),(28, 1),(28, 2),(28, 3);
INSERT INTO `ecs_cat_recommend` (`cat_id`, `recommend_type`) VALUES(29, 1),(29, 2),(29, 3),(30, 1),(30, 2),(30, 3),(31, 1),(31, 2),(31, 3),(32, 1),(32, 2),(32, 3);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_collect_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_collect_goods`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `add_time` int(11) unsigned NOT NULL DEFAULT '0', `is_attention` tinyint(1) NOT NULL DEFAULT '0',PRIMARY KEY (`rec_id`),KEY `user_id` (`user_id`),KEY `goods_id` (`goods_id`),KEY `is_attention` (`is_attention`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_collect_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_comment`
--

CREATE TABLE IF NOT EXISTS `ecs_comment`(`comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT, `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0', `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0', `email` varchar(60) NOT NULL DEFAULT '', `user_name` varchar(60) NOT NULL DEFAULT '', `content` text NOT NULL, `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0', `add_time` int(10) unsigned NOT NULL DEFAULT '0', `ip_address` varchar(15) NOT NULL DEFAULT '', `status` tinyint(3) unsigned NOT NULL DEFAULT '0', `parent_id` int(10) unsigned NOT NULL DEFAULT '0', `user_id` int(10) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`comment_id`),KEY `parent_id` (`parent_id`),KEY `id_value` (`id_value`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ecs_comment`
--

INSERT INTO `ecs_comment` (`comment_id`, `comment_type`, `id_value`, `email`, `user_name`, `content`, `comment_rank`, `add_time`, `ip_address`, `status`, `parent_id`, `user_id`) VALUES(7, 0, 526, 'adfasf@ae.net', '', 'adfasdf', 5, 1325867208, '114.91.77.129', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_crons`
--

CREATE TABLE IF NOT EXISTS `ecs_crons`(`cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `cron_code` varchar(20) NOT NULL, `cron_name` varchar(120) NOT NULL, `cron_desc` text, `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0', `cron_config` text NOT NULL, `thistime` int(10) NOT NULL DEFAULT '0', `nextime` int(10) NOT NULL, `day` tinyint(2) NOT NULL, `week` varchar(1) NOT NULL, `hour` varchar(2) NOT NULL, `minute` varchar(255) NOT NULL, `enable` tinyint(1) NOT NULL DEFAULT '1', `run_once` tinyint(1) NOT NULL DEFAULT '0', `allow_ip` varchar(100) NOT NULL DEFAULT '', `alow_files` varchar(255) NOT NULL,PRIMARY KEY (`cron_id`),KEY `nextime` (`nextime`),KEY `enable` (`enable`),KEY `cron_code` (`cron_code`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ecs_crons`
--

INSERT INTO `ecs_crons` (`cron_id`, `cron_code`, `cron_name`, `cron_desc`, `cron_order`, `cron_config`, `thistime`, `nextime`, `day`, `week`, `hour`, `minute`, `enable`, `run_once`, `allow_ip`, `alow_files`) VALUES(1, 'auto_manage', '自动处理', '自动处理商品的上架下架,和文章的发布取消', 0, 'a:1:{i:0;a:3:{s:4:"name";s:17:"auto_manage_count";s:4:"type";s:6:"select";s:5:"value";s:1:"5";}}', 0, 1305784800, 0, '', '22', '10', 1, 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_delivery_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_goods`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `product_id` mediumint(8) unsigned DEFAULT '0', `product_sn` varchar(60) DEFAULT NULL, `goods_name` varchar(120) DEFAULT NULL, `brand_name` varchar(60) DEFAULT NULL, `goods_sn` varchar(60) DEFAULT NULL, `is_real` tinyint(1) unsigned DEFAULT '0', `extension_code` varchar(30) DEFAULT NULL, `parent_id` mediumint(8) unsigned DEFAULT '0', `send_number` smallint(5) unsigned DEFAULT '0', `goods_attr` text,PRIMARY KEY (`rec_id`),KEY `delivery_id` (`delivery_id`,`goods_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_delivery_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_delivery_order`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_order`(`delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `delivery_sn` varchar(20) NOT NULL, `order_sn` varchar(20) NOT NULL, `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `invoice_no` varchar(50) DEFAULT NULL, `add_time` int(10) unsigned DEFAULT '0', `shipping_id` tinyint(3) unsigned DEFAULT '0', `shipping_name` varchar(120) DEFAULT NULL, `user_id` mediumint(8) unsigned DEFAULT '0', `action_user` varchar(30) DEFAULT NULL, `consignee` varchar(60) DEFAULT NULL, `address` varchar(250) DEFAULT NULL, `country` smallint(5) unsigned DEFAULT '0', `province` smallint(5) unsigned DEFAULT '0', `city` smallint(5) unsigned DEFAULT '0', `district` smallint(5) unsigned DEFAULT '0', `sign_building` varchar(120) DEFAULT NULL, `email` varchar(60) DEFAULT NULL, `zipcode` varchar(60) DEFAULT NULL, `tel` varchar(60) DEFAULT NULL, `mobile` varchar(60) DEFAULT NULL, `best_time` varchar(120) DEFAULT NULL, `postscript` varchar(255) DEFAULT NULL, `how_oos` varchar(120) DEFAULT NULL, `insure_fee` decimal(10,2) unsigned DEFAULT '0.00', `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00', `update_time` int(10) unsigned DEFAULT '0', `suppliers_id` smallint(5) DEFAULT '0', `status` tinyint(1) unsigned NOT NULL DEFAULT '0', `agency_id` smallint(5) unsigned DEFAULT '0',PRIMARY KEY (`delivery_id`),KEY `user_id` (`user_id`),KEY `order_id` (`order_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_delivery_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_email_list`
--

CREATE TABLE IF NOT EXISTS `ecs_email_list`(`id` mediumint(8) NOT NULL AUTO_INCREMENT, `email` varchar(60) NOT NULL, `stat` tinyint(1) NOT NULL DEFAULT '0', `hash` varchar(10) NOT NULL,PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_email_list`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_email_sendlist`
--

CREATE TABLE IF NOT EXISTS `ecs_email_sendlist`(`id` mediumint(8) NOT NULL AUTO_INCREMENT, `email` varchar(100) NOT NULL, `template_id` mediumint(8) NOT NULL, `email_content` text NOT NULL, `error` tinyint(1) NOT NULL DEFAULT '0', `pri` tinyint(10) NOT NULL, `last_send` int(10) NOT NULL,PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_email_sendlist`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_error_log`
--

CREATE TABLE IF NOT EXISTS `ecs_error_log`(`id` int(10) NOT NULL AUTO_INCREMENT, `info` varchar(255) NOT NULL, `file` varchar(100) NOT NULL, `time` int(10) NOT NULL,PRIMARY KEY (`id`),KEY `time` (`time`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_error_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_exchange_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_exchange_goods`(`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0', `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_exchange_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_favourable_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_favourable_activity`(`act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `act_name` varchar(255) NOT NULL, `start_time` int(10) unsigned NOT NULL, `end_time` int(10) unsigned NOT NULL, `user_rank` varchar(255) NOT NULL, `act_range` tinyint(3) unsigned NOT NULL, `act_range_ext` varchar(255) NOT NULL, `min_amount` decimal(10,2) unsigned NOT NULL, `max_amount` decimal(10,2) unsigned NOT NULL, `act_type` tinyint(3) unsigned NOT NULL, `act_type_ext` decimal(10,2) unsigned NOT NULL, `gift` text NOT NULL, `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',PRIMARY KEY (`act_id`),KEY `act_name` (`act_name`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_favourable_activity`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_feedback`
--

CREATE TABLE IF NOT EXISTS `ecs_feedback`(`msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `user_name` varchar(60) NOT NULL DEFAULT '', `user_email` varchar(60) NOT NULL DEFAULT '', `msg_title` varchar(200) NOT NULL DEFAULT '', `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0', `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `msg_content` text NOT NULL, `msg_time` int(10) unsigned NOT NULL DEFAULT '0', `message_img` varchar(255) NOT NULL DEFAULT '0', `order_id` int(11) unsigned NOT NULL DEFAULT '0', `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`msg_id`),KEY `user_id` (`user_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_feedback`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_friend_link`
--

CREATE TABLE IF NOT EXISTS `ecs_friend_link`(`link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `link_name` varchar(255) NOT NULL DEFAULT '', `link_url` varchar(255) NOT NULL DEFAULT '', `link_logo` varchar(255) NOT NULL DEFAULT '', `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',PRIMARY KEY (`link_id`),KEY `show_order` (`show_order`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ecs_friend_link`
--

INSERT INTO `ecs_friend_link` (`link_id`, `link_name`, `link_url`, `link_logo`, `show_order`) VALUES(1, '中游网', 'http://www.cgame.cn', 'http://www.cgame.cn/images/logo.gif', 50),(2, '化妆品代购', 'http://ecshops.sinaapp.com', '', 51);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_goods`(`goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0', `goods_sn` varchar(60) NOT NULL DEFAULT '', `goods_name` varchar(120) NOT NULL DEFAULT '', `goods_name_style` varchar(60) NOT NULL DEFAULT '+', `click_count` int(10) unsigned NOT NULL DEFAULT '0', `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0', `provider_name` varchar(100) NOT NULL DEFAULT '', `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0', `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000', `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0', `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0', `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1', `keywords` varchar(255) NOT NULL DEFAULT '', `goods_brief` varchar(255) NOT NULL DEFAULT '', `goods_desc` text NOT NULL, `goods_thumb` varchar(255) NOT NULL DEFAULT '', `goods_img` varchar(255) NOT NULL DEFAULT '', `original_img` varchar(255) NOT NULL DEFAULT '', `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1', `extension_code` varchar(30) NOT NULL DEFAULT '', `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1', `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1', `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0', `integral` int(10) unsigned NOT NULL DEFAULT '0', `add_time` int(10) unsigned NOT NULL DEFAULT '0', `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100', `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0', `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `last_update` int(10) unsigned NOT NULL DEFAULT '0', `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0', `seller_note` varchar(255) NOT NULL DEFAULT '', `give_integral` int(11) NOT NULL DEFAULT '-1', `rank_integral` int(11) NOT NULL DEFAULT '-1', `suppliers_id` smallint(5) unsigned DEFAULT NULL, `is_check` tinyint(1) unsigned DEFAULT NULL,PRIMARY KEY (`goods_id`),KEY `goods_sn` (`goods_sn`),KEY `cat_id` (`cat_id`),KEY `last_update` (`last_update`),KEY `brand_id` (`brand_id`),KEY `goods_weight` (`goods_weight`),KEY `promote_end_date` (`promote_end_date`),KEY `promote_start_date` (`promote_start_date`),KEY `goods_number` (`goods_number`),KEY `sort_order` (`sort_order`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=607 ;

--
-- 转存表中的数据 `ecs_goods`
--

INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`) VALUES(566, 75, 'cp000566', '兰蔻智能密钥臻白精华乳 ', '+', 0, 38, '', 100, 0.000, 830.00, 0.00, 0.00, 0, 0, 1, '', '', '', 'saestor://img/images/201112/thumb_img/566_thumb_G_1325207781654.jpg', 'saestor://img/images/201112/goods_img/566_G_1325207781076.jpg', 'saestor://img/images/201112/source_img/566_G_1325207781797.jpg', 1, '', 1, 1, 0, 0, 1325207781, 100, 0, 0, 0, 0, 0, 0, 1325207781, 0, '', -1, -1, 0, NULL);
INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`) VALUES(567, 82, 'cp000567', '兰蔻“精华肌底液” 大容量装', '+', 0, 38, '', 100, 0.000, 1480.00, 0.00, 0.00, 0, 0, 1, '', '', '', 'saestor://img/images/201112/thumb_img/567_thumb_G_1325207870480.jpg', 'saestor://img/images/201112/goods_img/567_G_1325207870994.jpg', 'saestor://img/images/201112/source_img/567_G_1325207870327.jpg', 1, '', 1, 1, 0, 0, 1325207870, 100, 0, 0, 0, 0, 0, 0, 1325207870, 0, '', -1, -1, 0, NULL);
 
-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_activity`(`act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `act_name` varchar(255) NOT NULL, `act_desc` text NOT NULL, `act_type` tinyint(3) unsigned NOT NULL, `goods_id` mediumint(8) unsigned NOT NULL, `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_name` varchar(255) NOT NULL, `start_time` int(10) unsigned NOT NULL, `end_time` int(10) unsigned NOT NULL, `is_finished` tinyint(3) unsigned NOT NULL, `ext_info` text NOT NULL,PRIMARY KEY (`act_id`),KEY `act_name` (`act_name`,`act_type`,`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_goods_activity`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_article`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_article`(`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_article`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_attr`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_attr`(`goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0', `attr_value` text NOT NULL, `attr_price` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`goods_attr_id`),KEY `goods_id` (`goods_id`),KEY `attr_id` (`attr_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1565 ;

--
-- 转存表中的数据 `ecs_goods_attr`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_cat`(`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`goods_id`,`cat_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_cat`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_gallery`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_gallery`(`img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `img_url` varchar(255) NOT NULL DEFAULT '', `img_desc` varchar(255) NOT NULL DEFAULT '', `thumb_url` varchar(255) NOT NULL DEFAULT '', `img_original` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`img_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=857 ;

--
-- 转存表中的数据 `ecs_goods_gallery`
--

 
-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_type`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_type`(`cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `cat_name` varchar(60) NOT NULL DEFAULT '', `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1', `attr_group` varchar(255) NOT NULL,PRIMARY KEY (`cat_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `ecs_goods_type`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_group_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_group_goods`(`parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00', `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_group_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_keywords`
--

CREATE TABLE IF NOT EXISTS `ecs_keywords`(`date` date NOT NULL DEFAULT '0000-00-00', `searchengine` varchar(20) NOT NULL DEFAULT '', `keyword` varchar(90) NOT NULL DEFAULT '', `count` mediumint(8) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`date`,`searchengine`,`keyword`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_keywords`
--

INSERT INTO `ecs_keywords` (`date`, `searchengine`, `keyword`, `count`) VALUES('2011-05-15', 'ecshop', 'ddd', 1),('2011-05-15', 'ecshop', 'esdad', 1),('2011-05-15', 'ecshop', '000225', 2),('2011-05-19', 'ecshop', 'ubiq', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_link_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_link_goods`(`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0', `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_link_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_mail_templates`
--

CREATE TABLE IF NOT EXISTS `ecs_mail_templates`(`template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT, `template_code` varchar(30) NOT NULL DEFAULT '', `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0', `template_subject` varchar(200) NOT NULL DEFAULT '', `template_content` text NOT NULL, `last_modify` int(10) unsigned NOT NULL DEFAULT '0', `last_send` int(10) unsigned NOT NULL DEFAULT '0', `type` varchar(10) NOT NULL,PRIMARY KEY (`template_id`),UNIQUE KEY `template_code` (`template_code`),KEY `type` (`type`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ecs_mail_templates`
--

INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(1, 'send_password', 1, '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href="{$reset_email}" target="_blank">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', 1194824789, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(2, 'order_confirm', 0, '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', 1158226370, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(3, 'deliver_notice', 1, '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href="{$confirm_url}" target="_blank">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href="{$send_msg_url}" target="_blank">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', 1194823291, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(4, 'order_cancel', 0, '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', 1156491130, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(5, 'order_invalid', 0, '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', 1156491164, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(6, 'send_bonus', 0, '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', 1156491184, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(7, 'group_buy', 1, '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href="{$shop_url}" target="_blank">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', 1194824668, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(8, 'register_validate', 1, '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href="{$validate_email}" target="_blank">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', 1162201031, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(9, 'virtual_card', 0, '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', 1162201031, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(10, 'attention_list', 0, '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', 1183851073, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(11, 'remind_of_new_order', 0, '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', 1196239170, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(12, 'goods_booking', 1, '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href="{$goods_link}" target="_blank">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', 0, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(13, 'user_message', 1, '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template');
INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES(14, 'recomment', 1, '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_member_price`
--

CREATE TABLE IF NOT EXISTS `ecs_member_price`(`price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `user_rank` tinyint(3) NOT NULL DEFAULT '0', `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',PRIMARY KEY (`price_id`),KEY `goods_id` (`goods_id`,`user_rank`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ecs_member_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_nav`
--

CREATE TABLE IF NOT EXISTS `ecs_nav`(`id` mediumint(8) NOT NULL AUTO_INCREMENT, `ctype` varchar(10) DEFAULT NULL, `cid` smallint(5) unsigned DEFAULT NULL, `name` varchar(255) NOT NULL, `ifshow` tinyint(1) NOT NULL, `vieworder` tinyint(1) NOT NULL, `opennew` tinyint(1) NOT NULL, `url` varchar(255) NOT NULL, `type` varchar(10) NOT NULL,PRIMARY KEY (`id`),KEY `type` (`type`),KEY `ifshow` (`ifshow`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `ecs_nav`
--

INSERT INTO `ecs_nav` (`id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type`) VALUES(7, 'c', 16, '名品箱包', 1, 2, 0, 'category-16-b0.html', 'middle'),(8, 'c', 17, '特色礼品', 1, 4, 0, 'category-17-b0.html', 'middle');
INSERT INTO `ecs_nav` (`id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type`) VALUES(9, 'c', 18, '高档化妆品', 1, 6, 0, 'category-18-b0.html', 'middle'),(11, 'c', 20, '珠宝玉器', 1, 10, 0, 'category-20-b0.html', 'middle');
INSERT INTO `ecs_nav` (`id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type`) VALUES(13, 'c', 29, '娇韵诗', 0, 12, 0, 'category.php?id=29', 'middle');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_action`
--

CREATE TABLE IF NOT EXISTS `ecs_order_action`(`action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `action_user` varchar(30) NOT NULL DEFAULT '', `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0', `action_note` varchar(255) NOT NULL DEFAULT '', `log_time` int(11) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`action_id`),KEY `order_id` (`order_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `ecs_order_action`
--

INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(1, 2, 'admin', 1, 0, 2, 0, '[售后] 1132', 1242142350),(2, 2, 'admin', 1, 1, 2, 0, '已经发货，注意接收', 1242142389);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(3, 1, 'admin', 1, 1, 2, 0, '已经发货，注意接收', 1242142432),(4, 2, '买家', 1, 2, 2, 0, '', 1242142449);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(5, 1, '买家', 1, 2, 2, 0, '', 1242142451),(6, 3, 'admin', 1, 1, 2, 0, '已经发货了，注意接收', 1242142589);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(7, 3, '买家', 1, 2, 2, 0, '', 1242142634),(8, 5, 'admin', 1, 3, 2, 0, '', 1242142869);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(9, 6, 'admin', 3, 0, 0, 0, '暂时缺货', 1242143337),(10, 7, 'admin', 1, 0, 0, 0, '', 1242143454);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(11, 1, 'admin', 1, 2, 2, 0, '[售后] 售后', 1242143773),(12, 2, 'admin', 4, 0, 0, 0, '质量问题', 1242144185);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(13, 12, 'buyer', 2, 0, 0, 0, '用户取消', 1242576313),(14, 13, 'admin', 1, 1, 0, 0, '11', 1242576445);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(15, 14, 'admin', 1, 3, 2, 0, '', 1242976715),(16, 14, 'admin', 1, 1, 2, 0, '已经发货，请接收', 1242976740);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(17, 15, 'admin', 1, 0, 0, 0, '', 1245044587),(18, 15, 'admin', 1, 0, 2, 0, '已经付款', 1245044644);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(19, 15, 'admin', 1, 4, 2, 0, '', 1245044964),(20, 15, 'admin', 1, 4, 2, 0, '北京供货商', 1245045061);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(21, 3, 'admin', 4, 0, 0, 0, '不喜欢这个颜色', 1245045334),(22, 15, 'admin', 1, 1, 2, 0, '', 1245045443);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(23, 15, 'admin', 4, 0, 0, 0, '退货', 1245045515),(24, 16, 'admin', 1, 4, 2, 0, '上海供货', 1245045723);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(25, 17, 'admin', 1, 1, 2, 0, '', 1245048189),(26, 17, 'admin', 4, 0, 0, 0, '退货', 1245048212);
INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES(27, 19, 'admin', 1, 1, 2, 0, '', 1245384050);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_order_goods`(`rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_name` varchar(120) NOT NULL DEFAULT '', `goods_sn` varchar(60) NOT NULL DEFAULT '', `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1', `market_price` decimal(10,2) NOT NULL DEFAULT '0.00', `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00', `goods_attr` text NOT NULL, `send_number` smallint(5) unsigned NOT NULL DEFAULT '0', `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0', `extension_code` varchar(30) NOT NULL DEFAULT '', `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0', `goods_attr_id` varchar(255) NOT NULL DEFAULT '', `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`rec_id`),KEY `order_id` (`order_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `ecs_order_goods`
--

INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(1, 1, 8, '飞利浦9@9v', 'ECS000008', 1, 478.79, 385.00, '颜色:黑 \n', 0, 1, '', 0, 0, '231', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(2, 2, 12, '摩托罗拉A810', 'ECS000012', 1, 1179.60, 960.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(3, 3, 17, '夏新N7', 'ECS000017', 1, 2760.00, 2300.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(4, 4, 22, '多普达Touch HD', 'ECS000022', 1, 7198.80, 5999.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(5, 5, 9, '诺基亚E66', 'ECS000009', 3, 2757.60, 2200.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(6, 5, 24, 'P806', 'ECS000024', 1, 2400.00, 2000.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(7, 6, 5, '索爱原装M2卡读卡器', 'ECS000005', 1, 24.00, 20.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(8, 7, 9, '诺基亚E66', 'ECS000009', 1, 2757.60, 2298.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(9, 8, 20, '三星BC01', 'ECS000020', 1, 336.00, 238.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(10, 8, 8, '飞利浦9@9v', 'ECS000008', 1, 478.79, 385.00, '颜色:黑 \n', 0, 1, '', 0, 0, '231', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(11, 9, 24, 'P806', 'ECS000024', 1, 2400.00, 2000.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(12, 10, 24, 'P806', 'ECS000024', 1, 2400.00, 0.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(13, 11, 23, '诺基亚N96', 'ECS000023', 1, 4440.00, 3800.00, '附加配件: 原装电池 [+100]', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(14, 12, 20, '三星BC01', 'ECS000020', 1, 336.00, 238.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(15, 13, 12, '摩托罗拉A810', 'ECS000012', 1, 1179.60, 960.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(16, 14, 15, '摩托罗拉A810', 'ECS000015', 5, 705.60, 588.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(17, 14, 20, '三星BC01', 'ECS000020', 1, 336.00, 238.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(18, 14, 22, '多普达Touch HD', 'ECS000022', 1, 7198.80, 5999.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(19, 14, 3, '诺基亚原装5800耳机', 'ECS000002', 4, 81.60, 68.00, '颜色:银色 \n', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(20, 14, 9, '诺基亚E66', 'ECS000009', 2, 2757.60, 2298.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(21, 15, 13, '诺基亚5320 XpressMusic', 'ECS000013', 3, 1583.20, 1210.00, '颜色:红[10] \n', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(22, 15, 14, '诺基亚5800XM', 'ECS000014', 1, 3150.00, 2493.75, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(23, 15, 24, 'P806', 'ECS000024', 4, 2400.00, 1900.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(24, 15, 9, '诺基亚E66', 'ECS000009', 1, 2757.60, 2183.10, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(25, 15, 8, '飞利浦9@9v', 'ECS000008', 3, 478.79, 379.05, '颜色:黑 \n', 0, 1, '', 0, 0, '231', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(26, 16, 12, '摩托罗拉A810', 'ECS000012', 2, 1179.60, 933.85, '', 2, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(27, 16, 1, 'KD876', 'ECS000000', 1, 1665.60, 1318.60, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(28, 17, 24, 'P806', 'ECS000024', 1, 2400.00, 1900.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(29, 18, 24, 'P806', 'ECS000024', 5, 2400.00, 100.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(30, 19, 12, '摩托罗拉A810', 'ECS000012', 2, 1179.60, 933.85, '', 2, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(31, 19, 24, 'P806', 'ECS000024', 2, 2400.00, 1850.00, '颜色:灰色 \n', 2, 1, '', 0, 0, '167', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(32, 20, 32, '诺基亚N85', 'ECS000032', 1, 3612.00, 3010.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(33, 20, 20, '三星BC01', 'ECS000020', 2, 336.00, 280.00, '', 0, 1, '', 0, 0, '', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(34, 20, 20, '三星BC01', 'ECS000020', 1, 336.00, 280.00, '尺码:37 \n', 0, 1, '', 0, 0, '271', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(35, 21, 23, '诺基亚N96', 'ECS000023', 1, 4440.00, 3700.00, '尺码:37 \n', 0, 1, '', 0, 0, '265', 0);
INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`, `product_id`) VALUES(36, 22, 33, '潮流拖鞋visvim拖鞋Christo民族带', '000225', 1, 2424.00, 1980.00, '尺码:38 \n', 0, 1, '', 0, 0, '287', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_info`
--

CREATE TABLE IF NOT EXISTS `ecs_order_info`(`order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `order_sn` varchar(20) NOT NULL DEFAULT '', `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0', `consignee` varchar(60) NOT NULL DEFAULT '', `country` smallint(5) unsigned NOT NULL DEFAULT '0', `province` smallint(5) unsigned NOT NULL DEFAULT '0', `city` smallint(5) unsigned NOT NULL DEFAULT '0', `district` smallint(5) unsigned NOT NULL DEFAULT '0', `address` varchar(255) NOT NULL DEFAULT '', `zipcode` varchar(60) NOT NULL DEFAULT '', `tel` varchar(60) NOT NULL DEFAULT '', `mobile` varchar(60) NOT NULL DEFAULT '', `email` varchar(60) NOT NULL DEFAULT '', `best_time` varchar(120) NOT NULL DEFAULT '', `sign_building` varchar(120) NOT NULL DEFAULT '', `postscript` varchar(255) NOT NULL DEFAULT '', `shipping_id` tinyint(3) NOT NULL DEFAULT '0', `shipping_name` varchar(120) NOT NULL DEFAULT '', `pay_id` tinyint(3) NOT NULL DEFAULT '0', `pay_name` varchar(120) NOT NULL DEFAULT '', `how_oos` varchar(120) NOT NULL DEFAULT '', `how_surplus` varchar(120) NOT NULL DEFAULT '', `pack_name` varchar(120) NOT NULL DEFAULT '', `card_name` varchar(120) NOT NULL DEFAULT '', `card_message` varchar(255) NOT NULL DEFAULT '', `inv_payee` varchar(120) NOT NULL DEFAULT '', `inv_content` varchar(120) NOT NULL DEFAULT '', `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00', `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00', `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00', `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00', `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00', `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00', `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00', `surplus` decimal(10,2) NOT NULL DEFAULT '0.00', `integral` int(10) unsigned NOT NULL DEFAULT '0', `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00', `bonus` decimal(10,2) NOT NULL DEFAULT '0.00', `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00', `from_ad` smallint(5) NOT NULL DEFAULT '0', `referer` varchar(255) NOT NULL DEFAULT '', `add_time` int(10) unsigned NOT NULL DEFAULT '0', `confirm_time` int(10) unsigned NOT NULL DEFAULT '0', `pay_time` int(10) unsigned NOT NULL DEFAULT '0', `shipping_time` int(10) unsigned NOT NULL DEFAULT '0', `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `invoice_no` varchar(255) NOT NULL DEFAULT '', `extension_code` varchar(30) NOT NULL DEFAULT '', `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `to_buyer` varchar(255) NOT NULL DEFAULT '', `pay_note` varchar(255) NOT NULL DEFAULT '', `agency_id` smallint(5) unsigned NOT NULL, `inv_type` varchar(60) NOT NULL, `tax` decimal(10,2) NOT NULL, `is_separate` tinyint(1) NOT NULL DEFAULT '0', `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `discount` decimal(10,2) NOT NULL,PRIMARY KEY (`order_id`),UNIQUE KEY `order_sn` (`order_sn`),KEY `user_id` (`user_id`),KEY `order_status` (`order_status`),KEY `shipping_status` (`shipping_status`),KEY `pay_status` (`pay_status`),KEY `shipping_id` (`shipping_id`),KEY `pay_id` (`pay_id`),KEY `extension_code` (`extension_code`,`extension_id`),KEY `agency_id` (`agency_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `ecs_order_info`
--

INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(1, '2009051298180', 1, 1, 2, 2, '刘先生', 1, 2, 52, 500, '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '中午', '法院', '', 5, '申通快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 385.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 400.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1242142274, 1242142274, 1242142274, 1242142432, 0, 0, 0, '122', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(2, '2009051255518', 1, 4, 0, 0, '刘先生', 1, 2, 52, 500, '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '中午', '法院', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '精品包装', '祝福贺卡', '晚来的祝福', '', '', 960.00, 10.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1242142324, 1242142324, 1242142324, 1242142389, 1, 1, 0, '111', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(3, '2009051267570', 1, 4, 0, 0, '刘先生', 1, 2, 52, 500, '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '中午', '法院', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 2300.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1242142549, 1242142549, 1242142549, 1242142589, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(4, '2009051230249', 1, 1, 0, 2, '刘先生', 1, 2, 52, 500, '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '中午', '法院', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 5999.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5989.00, 0, 0.00, 20.00, 0.00, 0, '本站', 1242142681, 1242142681, 1242142681, 0, 0, 0, 1, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(5, '2009051276258', 1, 1, 3, 2, '刘先生', 1, 2, 52, 500, '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '中午', '法院', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 8600.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8610.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1242142808, 1242142808, 1242142808, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(6, '2009051217221', 3, 3, 0, 0, '叶先生', 1, 2, 52, 510, '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 20.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 35.00, 0, '', 1242143292, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(7, '2009051227085', 3, 1, 0, 0, '叶先生', 1, 2, 52, 510, '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 2298.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1000.00, 0, 0.00, 0.00, 1198.10, 0, '', 1242143383, 1242143454, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 114.90);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(8, '2009051299732', 3, 0, 0, 0, '叶先生', 1, 2, 52, 510, '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 623.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 638.00, 0, '', 1242143444, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(9, '2009051210718', 3, 0, 0, 0, '叶先生', 1, 2, 52, 510, '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 2000.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 2015.00, 0, '', 1242143732, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(10, '2009051268194', 1, 1, 0, 2, '刘先生', 1, 2, 52, 500, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 17000, 0.00, 0.00, 0.00, 0, '', 1242143920, 1242143920, 1242143920, 0, 0, 0, 0, '', 'exchange_goods', 24, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(11, '2009051264945', 0, 1, 0, 0, '林小姐', 1, 2, 52, 500, '中关村海兴大厦', '', '135474510', '', 'linzi@116.com', '', '', '', 3, '城际快递', 2, '银行汇款/转帐', '', '', '', '', '', '', '', 3800.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 3810.00, 0, '管理员添加', 1242144250, 1242144363, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(12, '2009051712919', 1, 2, 0, 0, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 3, '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', 238.00, 10.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 253.00, 0, '本站', 1242576304, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(13, '2009051719232', 1, 1, 1, 0, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 3, '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', 960.00, 10.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 975.00, 0, '本站', 1242576341, 1242576445, 0, 1242576445, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(14, '2009052224892', 1, 1, 1, 2, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 14045.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 13806.60, 0, 0.00, 5.00, 0.00, 0, '本站', 1242976699, 1242976699, 1242976699, 1242976740, 0, 0, 2, '1123344', '', 0, '', '', 0, '', 0.00, 0, 0, 243.40);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(15, '2009061585887', 1, 4, 0, 0, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 17044.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 17054.00, 0, '本站', 1245044533, 1245044587, 1245044644, 1245045443, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(16, '2009061525429', 1, 1, 4, 2, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 3186.30, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3196.30, 0, 0.00, 0.00, 0.00, 0, '本站', 1245045672, 1245045672, 1245045672, 1245045723, 0, 0, 0, '2009061525121', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(17, '2009061503335', 1, 4, 0, 0, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 3, '城际快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 1900.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1245047978, 1245047978, 1245047978, 1245048189, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(18, '2009061510313', 1, 1, 0, 0, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 5, '申通快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 500.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, 0, 0.00, 0.00, 15.00, 0, '本站', 1245048585, 1245048585, 0, 0, 0, 0, 0, '', 'group_buy', 8, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(19, '2009061909851', 1, 1, 1, 2, '刘先生', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', 5, '申通快递', 1, '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', 5567.70, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5577.70, 0, 0.00, 0.00, 0.00, 0, '本站', 1245384008, 1245384008, 1245384008, 1245384049, 0, 0, 0, '232421', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(20, '2011051082971', 0, 0, 0, 0, 'aaaa', 1, 7, 104, 916, 'sdfdsfs', '232', '2342222', '', 'sss@sina.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 3850.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 3865.00, 0, '本站', 1305016436, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(21, '2011051342997', 0, 0, 0, 0, '胡总', 1, 2, 52, 503, '中杨', '', '12315', '', '110@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 3700.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 3715.00, 0, '本站', 1305270919, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);
INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES(22, '2011051530900', 0, 0, 0, 0, '测试', 1, 2, 52, 500, '测试地址', '', '13644545454', '', 'lincfan@163.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', 1980.00, 1510.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 3490.00, 0, '本站', 1305421290, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_pack`
--

CREATE TABLE IF NOT EXISTS `ecs_pack`(`pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `pack_name` varchar(120) NOT NULL DEFAULT '', `pack_img` varchar(255) NOT NULL DEFAULT '', `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00', `free_money` smallint(5) unsigned NOT NULL DEFAULT '0', `pack_desc` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`pack_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_pack`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_package_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_package_goods`(`package_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1', `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_package_goods`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_payment`
--

CREATE TABLE IF NOT EXISTS `ecs_payment`(`pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `pay_code` varchar(20) NOT NULL DEFAULT '', `pay_name` varchar(120) NOT NULL DEFAULT '', `pay_fee` varchar(10) NOT NULL DEFAULT '0', `pay_desc` text NOT NULL, `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0', `pay_config` text NOT NULL, `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`pay_id`),UNIQUE KEY `pay_code` (`pay_code`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ecs_payment`
--

INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES(1, 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', 0, 'a:0:{}', 1, 0, 1);
INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES(2, 'bank', '银行汇款/转帐', '0', '银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', 0, 'a:0:{}', 1, 0, 0);
INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES(3, 'cod', '货到付款', '0', '开通城市：×××\n货到付款区域：×××', 0, 'a:0:{}', 1, 1, 0);
INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES(4, 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>ECShop联合支付宝推出优惠套餐：无预付/年费，单笔费率1.5%，无流量限制。<br/><a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335319945672464113&market_type=from_agent_contract&pro_codes=6AECD60F4D75A7FB " target="_blank"><font color="red">立即在线申请</font></a>', 0, 'a:4:{i:0;a:3:{s:4:"name";s:14:"alipay_account";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:1;a:3:{s:4:"name";s:10:"alipay_key";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:2;a:3:{s:4:"name";s:14:"alipay_partner";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:3;a:3:{s:4:"name";s:17:"alipay_pay_method";s:4:"type";s:6:"select";s:5:"value";s:1:"2";}}', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_pay_log`
--

CREATE TABLE IF NOT EXISTS `ecs_pay_log`(`log_id` int(10) unsigned NOT NULL AUTO_INCREMENT, `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `order_amount` decimal(10,2) unsigned NOT NULL, `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`log_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ecs_pay_log`
--

INSERT INTO `ecs_pay_log` (`log_id`, `order_id`, `order_amount`, `order_type`, `is_paid`) VALUES(1, 21, 3715.00, 0, 0),(2, 22, 3490.00, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_plugins`
--

CREATE TABLE IF NOT EXISTS `ecs_plugins`(`code` varchar(30) NOT NULL DEFAULT '', `version` varchar(10) NOT NULL DEFAULT '', `library` varchar(255) NOT NULL DEFAULT '', `assign` tinyint(1) unsigned NOT NULL DEFAULT '0', `install_date` int(10) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`code`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_plugins`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_products`
--

CREATE TABLE IF NOT EXISTS `ecs_products`(`product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_attr` varchar(50) DEFAULT NULL, `product_sn` varchar(60) DEFAULT NULL, `product_number` smallint(5) unsigned DEFAULT '0',PRIMARY KEY (`product_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_products`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_region`
--

CREATE TABLE IF NOT EXISTS `ecs_region`(`region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0', `region_name` varchar(120) NOT NULL DEFAULT '', `region_type` tinyint(1) NOT NULL DEFAULT '2', `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`region_id`),KEY `parent_id` (`parent_id`),KEY `region_type` (`region_type`),KEY `agency_id` (`agency_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3409 ;

--
-- 转存表中的数据 `ecs_region`
--

INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1, 0, '中国', 0, 0),(2, 1, '北京', 1, 0),(3, 1, '安徽', 1, 0),(4, 1, '福建', 1, 0),(5, 1, '甘肃', 1, 0),(6, 1, '广东', 1, 0),(7, 1, '广西', 1, 0),(8, 1, '贵州', 1, 0),(9, 1, '海南', 1, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(10, 1, '河北', 1, 0),(11, 1, '河南', 1, 0),(12, 1, '黑龙江', 1, 0),(13, 1, '湖北', 1, 0),(14, 1, '湖南', 1, 0),(15, 1, '吉林', 1, 0),(16, 1, '江苏', 1, 0),(17, 1, '江西', 1, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(18, 1, '辽宁', 1, 0),(19, 1, '内蒙古', 1, 0),(20, 1, '宁夏', 1, 0),(21, 1, '青海', 1, 0),(22, 1, '山东', 1, 0),(23, 1, '山西', 1, 0),(24, 1, '陕西', 1, 0),(25, 1, '上海', 1, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(26, 1, '四川', 1, 0),(27, 1, '天津', 1, 0),(28, 1, '西藏', 1, 0),(29, 1, '新疆', 1, 0),(30, 1, '云南', 1, 0),(31, 1, '浙江', 1, 0),(32, 1, '重庆', 1, 0),(33, 1, '香港', 1, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(34, 1, '澳门', 1, 0),(35, 1, '台湾', 1, 0),(36, 3, '安庆', 2, 0),(37, 3, '蚌埠', 2, 0),(38, 3, '巢湖', 2, 0),(39, 3, '池州', 2, 0),(40, 3, '滁州', 2, 0),(41, 3, '阜阳', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(42, 3, '淮北', 2, 0),(43, 3, '淮南', 2, 0),(44, 3, '黄山', 2, 0),(45, 3, '六安', 2, 0),(46, 3, '马鞍山', 2, 0),(47, 3, '宿州', 2, 0),(48, 3, '铜陵', 2, 0),(49, 3, '芜湖', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(50, 3, '宣城', 2, 0),(51, 3, '亳州', 2, 0),(52, 2, '北京', 2, 0),(53, 4, '福州', 2, 0),(54, 4, '龙岩', 2, 0),(55, 4, '南平', 2, 0),(56, 4, '宁德', 2, 0),(57, 4, '莆田', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(58, 4, '泉州', 2, 0),(59, 4, '三明', 2, 0),(60, 4, '厦门', 2, 0),(61, 4, '漳州', 2, 0),(62, 5, '兰州', 2, 0),(63, 5, '白银', 2, 0),(64, 5, '定西', 2, 0),(65, 5, '甘南', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(66, 5, '嘉峪关', 2, 0),(67, 5, '金昌', 2, 0),(68, 5, '酒泉', 2, 0),(69, 5, '临夏', 2, 0),(70, 5, '陇南', 2, 0),(71, 5, '平凉', 2, 0),(72, 5, '庆阳', 2, 0),(73, 5, '天水', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(74, 5, '武威', 2, 0),(75, 5, '张掖', 2, 0),(76, 6, '广州', 2, 0),(77, 6, '深圳', 2, 0),(78, 6, '潮州', 2, 0),(79, 6, '东莞', 2, 0),(80, 6, '佛山', 2, 0),(81, 6, '河源', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(82, 6, '惠州', 2, 0),(83, 6, '江门', 2, 0),(84, 6, '揭阳', 2, 0),(85, 6, '茂名', 2, 0),(86, 6, '梅州', 2, 0),(87, 6, '清远', 2, 0),(88, 6, '汕头', 2, 0),(89, 6, '汕尾', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(90, 6, '韶关', 2, 0),(91, 6, '阳江', 2, 0),(92, 6, '云浮', 2, 0),(93, 6, '湛江', 2, 0),(94, 6, '肇庆', 2, 0),(95, 6, '中山', 2, 0),(96, 6, '珠海', 2, 0),(97, 7, '南宁', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(98, 7, '桂林', 2, 0),(99, 7, '百色', 2, 0),(100, 7, '北海', 2, 0),(101, 7, '崇左', 2, 0),(102, 7, '防城港', 2, 0),(103, 7, '贵港', 2, 0),(104, 7, '河池', 2, 0),(105, 7, '贺州', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(106, 7, '来宾', 2, 0),(107, 7, '柳州', 2, 0),(108, 7, '钦州', 2, 0),(109, 7, '梧州', 2, 0),(110, 7, '玉林', 2, 0),(111, 8, '贵阳', 2, 0),(112, 8, '安顺', 2, 0),(113, 8, '毕节', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(114, 8, '六盘水', 2, 0),(115, 8, '黔东南', 2, 0),(116, 8, '黔南', 2, 0),(117, 8, '黔西南', 2, 0),(118, 8, '铜仁', 2, 0),(119, 8, '遵义', 2, 0),(120, 9, '海口', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(121, 9, '三亚', 2, 0),(122, 9, '白沙', 2, 0),(123, 9, '保亭', 2, 0),(124, 9, '昌江', 2, 0),(125, 9, '澄迈县', 2, 0),(126, 9, '定安县', 2, 0),(127, 9, '东方', 2, 0),(128, 9, '乐东', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(129, 9, '临高县', 2, 0),(130, 9, '陵水', 2, 0),(131, 9, '琼海', 2, 0),(132, 9, '琼中', 2, 0),(133, 9, '屯昌县', 2, 0),(134, 9, '万宁', 2, 0),(135, 9, '文昌', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(136, 9, '五指山', 2, 0),(137, 9, '儋州', 2, 0),(138, 10, '石家庄', 2, 0),(139, 10, '保定', 2, 0),(140, 10, '沧州', 2, 0),(141, 10, '承德', 2, 0),(142, 10, '邯郸', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(143, 10, '衡水', 2, 0),(144, 10, '廊坊', 2, 0),(145, 10, '秦皇岛', 2, 0),(146, 10, '唐山', 2, 0),(147, 10, '邢台', 2, 0),(148, 10, '张家口', 2, 0),(149, 11, '郑州', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(150, 11, '洛阳', 2, 0),(151, 11, '开封', 2, 0),(152, 11, '安阳', 2, 0),(153, 11, '鹤壁', 2, 0),(154, 11, '济源', 2, 0),(155, 11, '焦作', 2, 0),(156, 11, '南阳', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(157, 11, '平顶山', 2, 0),(158, 11, '三门峡', 2, 0),(159, 11, '商丘', 2, 0),(160, 11, '新乡', 2, 0),(161, 11, '信阳', 2, 0),(162, 11, '许昌', 2, 0),(163, 11, '周口', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(164, 11, '驻马店', 2, 0),(165, 11, '漯河', 2, 0),(166, 11, '濮阳', 2, 0),(167, 12, '哈尔滨', 2, 0),(168, 12, '大庆', 2, 0),(169, 12, '大兴安岭', 2, 0),(170, 12, '鹤岗', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(171, 12, '黑河', 2, 0),(172, 12, '鸡西', 2, 0),(173, 12, '佳木斯', 2, 0),(174, 12, '牡丹江', 2, 0),(175, 12, '七台河', 2, 0),(176, 12, '齐齐哈尔', 2, 0),(177, 12, '双鸭山', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(178, 12, '绥化', 2, 0),(179, 12, '伊春', 2, 0),(180, 13, '武汉', 2, 0),(181, 13, '仙桃', 2, 0),(182, 13, '鄂州', 2, 0),(183, 13, '黄冈', 2, 0),(184, 13, '黄石', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(185, 13, '荆门', 2, 0),(186, 13, '荆州', 2, 0),(187, 13, '潜江', 2, 0),(188, 13, '神农架林区', 2, 0),(189, 13, '十堰', 2, 0),(190, 13, '随州', 2, 0),(191, 13, '天门', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(192, 13, '咸宁', 2, 0),(193, 13, '襄樊', 2, 0),(194, 13, '孝感', 2, 0),(195, 13, '宜昌', 2, 0),(196, 13, '恩施', 2, 0),(197, 14, '长沙', 2, 0),(198, 14, '张家界', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(199, 14, '常德', 2, 0),(200, 14, '郴州', 2, 0),(201, 14, '衡阳', 2, 0),(202, 14, '怀化', 2, 0),(203, 14, '娄底', 2, 0),(204, 14, '邵阳', 2, 0),(205, 14, '湘潭', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(206, 14, '湘西', 2, 0),(207, 14, '益阳', 2, 0),(208, 14, '永州', 2, 0),(209, 14, '岳阳', 2, 0),(210, 14, '株洲', 2, 0),(211, 15, '长春', 2, 0),(212, 15, '吉林', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(213, 15, '白城', 2, 0),(214, 15, '白山', 2, 0),(215, 15, '辽源', 2, 0),(216, 15, '四平', 2, 0),(217, 15, '松原', 2, 0),(218, 15, '通化', 2, 0),(219, 15, '延边', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(220, 16, '南京', 2, 0),(221, 16, '苏州', 2, 0),(222, 16, '无锡', 2, 0),(223, 16, '常州', 2, 0),(224, 16, '淮安', 2, 0),(225, 16, '连云港', 2, 0),(226, 16, '南通', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(227, 16, '宿迁', 2, 0),(228, 16, '泰州', 2, 0),(229, 16, '徐州', 2, 0),(230, 16, '盐城', 2, 0),(231, 16, '扬州', 2, 0),(232, 16, '镇江', 2, 0),(233, 17, '南昌', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(234, 17, '抚州', 2, 0),(235, 17, '赣州', 2, 0),(236, 17, '吉安', 2, 0),(237, 17, '景德镇', 2, 0),(238, 17, '九江', 2, 0),(239, 17, '萍乡', 2, 0),(240, 17, '上饶', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(241, 17, '新余', 2, 0),(242, 17, '宜春', 2, 0),(243, 17, '鹰潭', 2, 0),(244, 18, '沈阳', 2, 0),(245, 18, '大连', 2, 0),(246, 18, '鞍山', 2, 0),(247, 18, '本溪', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(248, 18, '朝阳', 2, 0),(249, 18, '丹东', 2, 0),(250, 18, '抚顺', 2, 0),(251, 18, '阜新', 2, 0),(252, 18, '葫芦岛', 2, 0),(253, 18, '锦州', 2, 0),(254, 18, '辽阳', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(255, 18, '盘锦', 2, 0),(256, 18, '铁岭', 2, 0),(257, 18, '营口', 2, 0),(258, 19, '呼和浩特', 2, 0),(259, 19, '阿拉善盟', 2, 0),(260, 19, '巴彦淖尔盟', 2, 0),(261, 19, '包头', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(262, 19, '赤峰', 2, 0),(263, 19, '鄂尔多斯', 2, 0),(264, 19, '呼伦贝尔', 2, 0),(265, 19, '通辽', 2, 0),(266, 19, '乌海', 2, 0),(267, 19, '乌兰察布市', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(268, 19, '锡林郭勒盟', 2, 0),(269, 19, '兴安盟', 2, 0),(270, 20, '银川', 2, 0),(271, 20, '固原', 2, 0),(272, 20, '石嘴山', 2, 0),(273, 20, '吴忠', 2, 0),(274, 20, '中卫', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(275, 21, '西宁', 2, 0),(276, 21, '果洛', 2, 0),(277, 21, '海北', 2, 0),(278, 21, '海东', 2, 0),(279, 21, '海南', 2, 0),(280, 21, '海西', 2, 0),(281, 21, '黄南', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(282, 21, '玉树', 2, 0),(283, 22, '济南', 2, 0),(284, 22, '青岛', 2, 0),(285, 22, '滨州', 2, 0),(286, 22, '德州', 2, 0),(287, 22, '东营', 2, 0),(288, 22, '菏泽', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(289, 22, '济宁', 2, 0),(290, 22, '莱芜', 2, 0),(291, 22, '聊城', 2, 0),(292, 22, '临沂', 2, 0),(293, 22, '日照', 2, 0),(294, 22, '泰安', 2, 0),(295, 22, '威海', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(296, 22, '潍坊', 2, 0),(297, 22, '烟台', 2, 0),(298, 22, '枣庄', 2, 0),(299, 22, '淄博', 2, 0),(300, 23, '太原', 2, 0),(301, 23, '长治', 2, 0),(302, 23, '大同', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(303, 23, '晋城', 2, 0),(304, 23, '晋中', 2, 0),(305, 23, '临汾', 2, 0),(306, 23, '吕梁', 2, 0),(307, 23, '朔州', 2, 0),(308, 23, '忻州', 2, 0),(309, 23, '阳泉', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(310, 23, '运城', 2, 0),(311, 24, '西安', 2, 0),(312, 24, '安康', 2, 0),(313, 24, '宝鸡', 2, 0),(314, 24, '汉中', 2, 0),(315, 24, '商洛', 2, 0),(316, 24, '铜川', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(317, 24, '渭南', 2, 0),(318, 24, '咸阳', 2, 0),(319, 24, '延安', 2, 0),(320, 24, '榆林', 2, 0),(321, 25, '上海', 2, 0),(322, 26, '成都', 2, 0),(323, 26, '绵阳', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(324, 26, '阿坝', 2, 0),(325, 26, '巴中', 2, 0),(326, 26, '达州', 2, 0),(327, 26, '德阳', 2, 0),(328, 26, '甘孜', 2, 0),(329, 26, '广安', 2, 0),(330, 26, '广元', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(331, 26, '乐山', 2, 0),(332, 26, '凉山', 2, 0),(333, 26, '眉山', 2, 0),(334, 26, '南充', 2, 0),(335, 26, '内江', 2, 0),(336, 26, '攀枝花', 2, 0),(337, 26, '遂宁', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(338, 26, '雅安', 2, 0),(339, 26, '宜宾', 2, 0),(340, 26, '资阳', 2, 0),(341, 26, '自贡', 2, 0),(342, 26, '泸州', 2, 0),(343, 27, '天津', 2, 0),(344, 28, '拉萨', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(345, 28, '阿里', 2, 0),(346, 28, '昌都', 2, 0),(347, 28, '林芝', 2, 0),(348, 28, '那曲', 2, 0),(349, 28, '日喀则', 2, 0),(350, 28, '山南', 2, 0),(351, 29, '乌鲁木齐', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(352, 29, '阿克苏', 2, 0),(353, 29, '阿拉尔', 2, 0),(354, 29, '巴音郭楞', 2, 0),(355, 29, '博尔塔拉', 2, 0),(356, 29, '昌吉', 2, 0),(357, 29, '哈密', 2, 0),(358, 29, '和田', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(359, 29, '喀什', 2, 0),(360, 29, '克拉玛依', 2, 0),(361, 29, '克孜勒苏', 2, 0),(362, 29, '石河子', 2, 0),(363, 29, '图木舒克', 2, 0),(364, 29, '吐鲁番', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(365, 29, '五家渠', 2, 0),(366, 29, '伊犁', 2, 0),(367, 30, '昆明', 2, 0),(368, 30, '怒江', 2, 0),(369, 30, '普洱', 2, 0),(370, 30, '丽江', 2, 0),(371, 30, '保山', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(372, 30, '楚雄', 2, 0),(373, 30, '大理', 2, 0),(374, 30, '德宏', 2, 0),(375, 30, '迪庆', 2, 0),(376, 30, '红河', 2, 0),(377, 30, '临沧', 2, 0),(378, 30, '曲靖', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(379, 30, '文山', 2, 0),(380, 30, '西双版纳', 2, 0),(381, 30, '玉溪', 2, 0),(382, 30, '昭通', 2, 0),(383, 31, '杭州', 2, 0),(384, 31, '湖州', 2, 0),(385, 31, '嘉兴', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(386, 31, '金华', 2, 0),(387, 31, '丽水', 2, 0),(388, 31, '宁波', 2, 0),(389, 31, '绍兴', 2, 0),(390, 31, '台州', 2, 0),(391, 31, '温州', 2, 0),(392, 31, '舟山', 2, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(393, 31, '衢州', 2, 0),(394, 32, '重庆', 2, 0),(395, 33, '香港', 2, 0),(396, 34, '澳门', 2, 0),(397, 35, '台湾', 2, 0),(398, 36, '迎江区', 3, 0),(399, 36, '大观区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(400, 36, '宜秀区', 3, 0),(401, 36, '桐城市', 3, 0),(402, 36, '怀宁县', 3, 0),(403, 36, '枞阳县', 3, 0),(404, 36, '潜山县', 3, 0),(405, 36, '太湖县', 3, 0),(406, 36, '宿松县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(407, 36, '望江县', 3, 0),(408, 36, '岳西县', 3, 0),(409, 37, '中市区', 3, 0),(410, 37, '东市区', 3, 0),(411, 37, '西市区', 3, 0),(412, 37, '郊区', 3, 0),(413, 37, '怀远县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(414, 37, '五河县', 3, 0),(415, 37, '固镇县', 3, 0),(416, 38, '居巢区', 3, 0),(417, 38, '庐江县', 3, 0),(418, 38, '无为县', 3, 0),(419, 38, '含山县', 3, 0),(420, 38, '和县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(421, 39, '贵池区', 3, 0),(422, 39, '东至县', 3, 0),(423, 39, '石台县', 3, 0),(424, 39, '青阳县', 3, 0),(425, 40, '琅琊区', 3, 0),(426, 40, '南谯区', 3, 0),(427, 40, '天长市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(428, 40, '明光市', 3, 0),(429, 40, '来安县', 3, 0),(430, 40, '全椒县', 3, 0),(431, 40, '定远县', 3, 0),(432, 40, '凤阳县', 3, 0),(433, 41, '蚌山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(434, 41, '龙子湖区', 3, 0),(435, 41, '禹会区', 3, 0),(436, 41, '淮上区', 3, 0),(437, 41, '颍州区', 3, 0),(438, 41, '颍东区', 3, 0),(439, 41, '颍泉区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(440, 41, '界首市', 3, 0),(441, 41, '临泉县', 3, 0),(442, 41, '太和县', 3, 0),(443, 41, '阜南县', 3, 0),(444, 41, '颖上县', 3, 0),(445, 42, '相山区', 3, 0),(446, 42, '杜集区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(447, 42, '烈山区', 3, 0),(448, 42, '濉溪县', 3, 0),(449, 43, '田家庵区', 3, 0),(450, 43, '大通区', 3, 0),(451, 43, '谢家集区', 3, 0),(452, 43, '八公山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(453, 43, '潘集区', 3, 0),(454, 43, '凤台县', 3, 0),(455, 44, '屯溪区', 3, 0),(456, 44, '黄山区', 3, 0),(457, 44, '徽州区', 3, 0),(458, 44, '歙县', 3, 0),(459, 44, '休宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(460, 44, '黟县', 3, 0),(461, 44, '祁门县', 3, 0),(462, 45, '金安区', 3, 0),(463, 45, '裕安区', 3, 0),(464, 45, '寿县', 3, 0),(465, 45, '霍邱县', 3, 0),(466, 45, '舒城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(467, 45, '金寨县', 3, 0),(468, 45, '霍山县', 3, 0),(469, 46, '雨山区', 3, 0),(470, 46, '花山区', 3, 0),(471, 46, '金家庄区', 3, 0),(472, 46, '当涂县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(473, 47, '埇桥区', 3, 0),(474, 47, '砀山县', 3, 0),(475, 47, '萧县', 3, 0),(476, 47, '灵璧县', 3, 0),(477, 47, '泗县', 3, 0),(478, 48, '铜官山区', 3, 0),(479, 48, '狮子山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(480, 48, '郊区', 3, 0),(481, 48, '铜陵县', 3, 0),(482, 49, '镜湖区', 3, 0),(483, 49, '弋江区', 3, 0),(484, 49, '鸠江区', 3, 0),(485, 49, '三山区', 3, 0),(486, 49, '芜湖县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(487, 49, '繁昌县', 3, 0),(488, 49, '南陵县', 3, 0),(489, 50, '宣州区', 3, 0),(490, 50, '宁国市', 3, 0),(491, 50, '郎溪县', 3, 0),(492, 50, '广德县', 3, 0),(493, 50, '泾县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(494, 50, '绩溪县', 3, 0),(495, 50, '旌德县', 3, 0),(496, 51, '涡阳县', 3, 0),(497, 51, '蒙城县', 3, 0),(498, 51, '利辛县', 3, 0),(499, 51, '谯城区', 3, 0),(500, 52, '东城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(501, 52, '西城区', 3, 0),(502, 52, '海淀区', 3, 0),(503, 52, '朝阳区', 3, 0),(504, 52, '崇文区', 3, 0),(505, 52, '宣武区', 3, 0),(506, 52, '丰台区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(507, 52, '石景山区', 3, 0),(508, 52, '房山区', 3, 0),(509, 52, '门头沟区', 3, 0),(510, 52, '通州区', 3, 0),(511, 52, '顺义区', 3, 0),(512, 52, '昌平区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(513, 52, '怀柔区', 3, 0),(514, 52, '平谷区', 3, 0),(515, 52, '大兴区', 3, 0),(516, 52, '密云县', 3, 0),(517, 52, '延庆县', 3, 0),(518, 53, '鼓楼区', 3, 0),(519, 53, '台江区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(520, 53, '仓山区', 3, 0),(521, 53, '马尾区', 3, 0),(522, 53, '晋安区', 3, 0),(523, 53, '福清市', 3, 0),(524, 53, '长乐市', 3, 0),(525, 53, '闽侯县', 3, 0),(526, 53, '连江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(527, 53, '罗源县', 3, 0),(528, 53, '闽清县', 3, 0),(529, 53, '永泰县', 3, 0),(530, 53, '平潭县', 3, 0),(531, 54, '新罗区', 3, 0),(532, 54, '漳平市', 3, 0),(533, 54, '长汀县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(534, 54, '永定县', 3, 0),(535, 54, '上杭县', 3, 0),(536, 54, '武平县', 3, 0),(537, 54, '连城县', 3, 0),(538, 55, '延平区', 3, 0),(539, 55, '邵武市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(540, 55, '武夷山市', 3, 0),(541, 55, '建瓯市', 3, 0),(542, 55, '建阳市', 3, 0),(543, 55, '顺昌县', 3, 0),(544, 55, '浦城县', 3, 0),(545, 55, '光泽县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(546, 55, '松溪县', 3, 0),(547, 55, '政和县', 3, 0),(548, 56, '蕉城区', 3, 0),(549, 56, '福安市', 3, 0),(550, 56, '福鼎市', 3, 0),(551, 56, '霞浦县', 3, 0),(552, 56, '古田县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(553, 56, '屏南县', 3, 0),(554, 56, '寿宁县', 3, 0),(555, 56, '周宁县', 3, 0),(556, 56, '柘荣县', 3, 0),(557, 57, '城厢区', 3, 0),(558, 57, '涵江区', 3, 0),(559, 57, '荔城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(560, 57, '秀屿区', 3, 0),(561, 57, '仙游县', 3, 0),(562, 58, '鲤城区', 3, 0),(563, 58, '丰泽区', 3, 0),(564, 58, '洛江区', 3, 0),(565, 58, '清濛开发区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(566, 58, '泉港区', 3, 0),(567, 58, '石狮市', 3, 0),(568, 58, '晋江市', 3, 0),(569, 58, '南安市', 3, 0),(570, 58, '惠安县', 3, 0),(571, 58, '安溪县', 3, 0),(572, 58, '永春县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(573, 58, '德化县', 3, 0),(574, 58, '金门县', 3, 0),(575, 59, '梅列区', 3, 0),(576, 59, '三元区', 3, 0),(577, 59, '永安市', 3, 0),(578, 59, '明溪县', 3, 0),(579, 59, '清流县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(580, 59, '宁化县', 3, 0),(581, 59, '大田县', 3, 0),(582, 59, '尤溪县', 3, 0),(583, 59, '沙县', 3, 0),(584, 59, '将乐县', 3, 0),(585, 59, '泰宁县', 3, 0),(586, 59, '建宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(587, 60, '思明区', 3, 0),(588, 60, '海沧区', 3, 0),(589, 60, '湖里区', 3, 0),(590, 60, '集美区', 3, 0),(591, 60, '同安区', 3, 0),(592, 60, '翔安区', 3, 0),(593, 61, '芗城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(594, 61, '龙文区', 3, 0),(595, 61, '龙海市', 3, 0),(596, 61, '云霄县', 3, 0),(597, 61, '漳浦县', 3, 0),(598, 61, '诏安县', 3, 0),(599, 61, '长泰县', 3, 0),(600, 61, '东山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(601, 61, '南靖县', 3, 0),(602, 61, '平和县', 3, 0),(603, 61, '华安县', 3, 0),(604, 62, '皋兰县', 3, 0),(605, 62, '城关区', 3, 0),(606, 62, '七里河区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(607, 62, '西固区', 3, 0),(608, 62, '安宁区', 3, 0),(609, 62, '红古区', 3, 0),(610, 62, '永登县', 3, 0),(611, 62, '榆中县', 3, 0),(612, 63, '白银区', 3, 0),(613, 63, '平川区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(614, 63, '会宁县', 3, 0),(615, 63, '景泰县', 3, 0),(616, 63, '靖远县', 3, 0),(617, 64, '临洮县', 3, 0),(618, 64, '陇西县', 3, 0),(619, 64, '通渭县', 3, 0),(620, 64, '渭源县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(621, 64, '漳县', 3, 0),(622, 64, '岷县', 3, 0),(623, 64, '安定区', 3, 0),(624, 64, '安定区', 3, 0),(625, 65, '合作市', 3, 0),(626, 65, '临潭县', 3, 0),(627, 65, '卓尼县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(628, 65, '舟曲县', 3, 0),(629, 65, '迭部县', 3, 0),(630, 65, '玛曲县', 3, 0),(631, 65, '碌曲县', 3, 0),(632, 65, '夏河县', 3, 0),(633, 66, '嘉峪关市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(634, 67, '金川区', 3, 0),(635, 67, '永昌县', 3, 0),(636, 68, '肃州区', 3, 0),(637, 68, '玉门市', 3, 0),(638, 68, '敦煌市', 3, 0),(639, 68, '金塔县', 3, 0),(640, 68, '瓜州县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(641, 68, '肃北', 3, 0),(642, 68, '阿克塞', 3, 0),(643, 69, '临夏市', 3, 0),(644, 69, '临夏县', 3, 0),(645, 69, '康乐县', 3, 0),(646, 69, '永靖县', 3, 0),(647, 69, '广河县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(648, 69, '和政县', 3, 0),(649, 69, '东乡族自治县', 3, 0),(650, 69, '积石山', 3, 0),(651, 70, '成县', 3, 0),(652, 70, '徽县', 3, 0),(653, 70, '康县', 3, 0),(654, 70, '礼县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(655, 70, '两当县', 3, 0),(656, 70, '文县', 3, 0),(657, 70, '西和县', 3, 0),(658, 70, '宕昌县', 3, 0),(659, 70, '武都区', 3, 0),(660, 71, '崇信县', 3, 0),(661, 71, '华亭县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(662, 71, '静宁县', 3, 0),(663, 71, '灵台县', 3, 0),(664, 71, '崆峒区', 3, 0),(665, 71, '庄浪县', 3, 0),(666, 71, '泾川县', 3, 0),(667, 72, '合水县', 3, 0),(668, 72, '华池县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(669, 72, '环县', 3, 0),(670, 72, '宁县', 3, 0),(671, 72, '庆城县', 3, 0),(672, 72, '西峰区', 3, 0),(673, 72, '镇原县', 3, 0),(674, 72, '正宁县', 3, 0),(675, 73, '甘谷县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(676, 73, '秦安县', 3, 0),(677, 73, '清水县', 3, 0),(678, 73, '秦州区', 3, 0),(679, 73, '麦积区', 3, 0),(680, 73, '武山县', 3, 0),(681, 73, '张家川', 3, 0),(682, 74, '古浪县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(683, 74, '民勤县', 3, 0),(684, 74, '天祝', 3, 0),(685, 74, '凉州区', 3, 0),(686, 75, '高台县', 3, 0),(687, 75, '临泽县', 3, 0),(688, 75, '民乐县', 3, 0),(689, 75, '山丹县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(690, 75, '肃南', 3, 0),(691, 75, '甘州区', 3, 0),(692, 76, '从化市', 3, 0),(693, 76, '天河区', 3, 0),(694, 76, '东山区', 3, 0),(695, 76, '白云区', 3, 0),(696, 76, '海珠区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(697, 76, '荔湾区', 3, 0),(698, 76, '越秀区', 3, 0),(699, 76, '黄埔区', 3, 0),(700, 76, '番禺区', 3, 0),(701, 76, '花都区', 3, 0),(702, 76, '增城区', 3, 0),(703, 76, '从化区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(704, 76, '市郊', 3, 0),(705, 77, '福田区', 3, 0),(706, 77, '罗湖区', 3, 0),(707, 77, '南山区', 3, 0),(708, 77, '宝安区', 3, 0),(709, 77, '龙岗区', 3, 0),(710, 77, '盐田区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(711, 78, '湘桥区', 3, 0),(712, 78, '潮安县', 3, 0),(713, 78, '饶平县', 3, 0),(714, 79, '南城区', 3, 0),(715, 79, '东城区', 3, 0),(716, 79, '万江区', 3, 0),(717, 79, '莞城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(718, 79, '石龙镇', 3, 0),(719, 79, '虎门镇', 3, 0),(720, 79, '麻涌镇', 3, 0),(721, 79, '道滘镇', 3, 0),(722, 79, '石碣镇', 3, 0),(723, 79, '沙田镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(724, 79, '望牛墩镇', 3, 0),(725, 79, '洪梅镇', 3, 0),(726, 79, '茶山镇', 3, 0),(727, 79, '寮步镇', 3, 0),(728, 79, '大岭山镇', 3, 0),(729, 79, '大朗镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(730, 79, '黄江镇', 3, 0),(731, 79, '樟木头', 3, 0),(732, 79, '凤岗镇', 3, 0),(733, 79, '塘厦镇', 3, 0),(734, 79, '谢岗镇', 3, 0),(735, 79, '厚街镇', 3, 0),(736, 79, '清溪镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(737, 79, '常平镇', 3, 0),(738, 79, '桥头镇', 3, 0),(739, 79, '横沥镇', 3, 0),(740, 79, '东坑镇', 3, 0),(741, 79, '企石镇', 3, 0),(742, 79, '石排镇', 3, 0),(743, 79, '长安镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(744, 79, '中堂镇', 3, 0),(745, 79, '高埗镇', 3, 0),(746, 80, '禅城区', 3, 0),(747, 80, '南海区', 3, 0),(748, 80, '顺德区', 3, 0),(749, 80, '三水区', 3, 0),(750, 80, '高明区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(751, 81, '东源县', 3, 0),(752, 81, '和平县', 3, 0),(753, 81, '源城区', 3, 0),(754, 81, '连平县', 3, 0),(755, 81, '龙川县', 3, 0),(756, 81, '紫金县', 3, 0),(757, 82, '惠阳区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(758, 82, '惠城区', 3, 0),(759, 82, '大亚湾', 3, 0),(760, 82, '博罗县', 3, 0),(761, 82, '惠东县', 3, 0),(762, 82, '龙门县', 3, 0),(763, 83, '江海区', 3, 0),(764, 83, '蓬江区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(765, 83, '新会区', 3, 0),(766, 83, '台山市', 3, 0),(767, 83, '开平市', 3, 0),(768, 83, '鹤山市', 3, 0),(769, 83, '恩平市', 3, 0),(770, 84, '榕城区', 3, 0),(771, 84, '普宁市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(772, 84, '揭东县', 3, 0),(773, 84, '揭西县', 3, 0),(774, 84, '惠来县', 3, 0),(775, 85, '茂南区', 3, 0),(776, 85, '茂港区', 3, 0),(777, 85, '高州市', 3, 0),(778, 85, '化州市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(779, 85, '信宜市', 3, 0),(780, 85, '电白县', 3, 0),(781, 86, '梅县', 3, 0),(782, 86, '梅江区', 3, 0),(783, 86, '兴宁市', 3, 0),(784, 86, '大埔县', 3, 0),(785, 86, '丰顺县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(786, 86, '五华县', 3, 0),(787, 86, '平远县', 3, 0),(788, 86, '蕉岭县', 3, 0),(789, 87, '清城区', 3, 0),(790, 87, '英德市', 3, 0),(791, 87, '连州市', 3, 0),(792, 87, '佛冈县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(793, 87, '阳山县', 3, 0),(794, 87, '清新县', 3, 0),(795, 87, '连山', 3, 0),(796, 87, '连南', 3, 0),(797, 88, '南澳县', 3, 0),(798, 88, '潮阳区', 3, 0),(799, 88, '澄海区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(800, 88, '龙湖区', 3, 0),(801, 88, '金平区', 3, 0),(802, 88, '濠江区', 3, 0),(803, 88, '潮南区', 3, 0),(804, 89, '城区', 3, 0),(805, 89, '陆丰市', 3, 0),(806, 89, '海丰县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(807, 89, '陆河县', 3, 0),(808, 90, '曲江县', 3, 0),(809, 90, '浈江区', 3, 0),(810, 90, '武江区', 3, 0),(811, 90, '曲江区', 3, 0),(812, 90, '乐昌市', 3, 0),(813, 90, '南雄市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(814, 90, '始兴县', 3, 0),(815, 90, '仁化县', 3, 0),(816, 90, '翁源县', 3, 0),(817, 90, '新丰县', 3, 0),(818, 90, '乳源', 3, 0),(819, 91, '江城区', 3, 0),(820, 91, '阳春市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(821, 91, '阳西县', 3, 0),(822, 91, '阳东县', 3, 0),(823, 92, '云城区', 3, 0),(824, 92, '罗定市', 3, 0),(825, 92, '新兴县', 3, 0),(826, 92, '郁南县', 3, 0),(827, 92, '云安县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(828, 93, '赤坎区', 3, 0),(829, 93, '霞山区', 3, 0),(830, 93, '坡头区', 3, 0),(831, 93, '麻章区', 3, 0),(832, 93, '廉江市', 3, 0),(833, 93, '雷州市', 3, 0),(834, 93, '吴川市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(835, 93, '遂溪县', 3, 0),(836, 93, '徐闻县', 3, 0),(837, 94, '肇庆市', 3, 0),(838, 94, '高要市', 3, 0),(839, 94, '四会市', 3, 0),(840, 94, '广宁县', 3, 0),(841, 94, '怀集县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(842, 94, '封开县', 3, 0),(843, 94, '德庆县', 3, 0),(844, 95, '石岐街道', 3, 0),(845, 95, '东区街道', 3, 0),(846, 95, '西区街道', 3, 0),(847, 95, '环城街道', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(848, 95, '中山港街道', 3, 0),(849, 95, '五桂山街道', 3, 0),(850, 96, '香洲区', 3, 0),(851, 96, '斗门区', 3, 0),(852, 96, '金湾区', 3, 0),(853, 97, '邕宁区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(854, 97, '青秀区', 3, 0),(855, 97, '兴宁区', 3, 0),(856, 97, '良庆区', 3, 0),(857, 97, '西乡塘区', 3, 0),(858, 97, '江南区', 3, 0),(859, 97, '武鸣县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(860, 97, '隆安县', 3, 0),(861, 97, '马山县', 3, 0),(862, 97, '上林县', 3, 0),(863, 97, '宾阳县', 3, 0),(864, 97, '横县', 3, 0),(865, 98, '秀峰区', 3, 0),(866, 98, '叠彩区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(867, 98, '象山区', 3, 0),(868, 98, '七星区', 3, 0),(869, 98, '雁山区', 3, 0),(870, 98, '阳朔县', 3, 0),(871, 98, '临桂县', 3, 0),(872, 98, '灵川县', 3, 0),(873, 98, '全州县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(874, 98, '平乐县', 3, 0),(875, 98, '兴安县', 3, 0),(876, 98, '灌阳县', 3, 0),(877, 98, '荔浦县', 3, 0),(878, 98, '资源县', 3, 0),(879, 98, '永福县', 3, 0),(880, 98, '龙胜', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(881, 98, '恭城', 3, 0),(882, 99, '右江区', 3, 0),(883, 99, '凌云县', 3, 0),(884, 99, '平果县', 3, 0),(885, 99, '西林县', 3, 0),(886, 99, '乐业县', 3, 0),(887, 99, '德保县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(888, 99, '田林县', 3, 0),(889, 99, '田阳县', 3, 0),(890, 99, '靖西县', 3, 0),(891, 99, '田东县', 3, 0),(892, 99, '那坡县', 3, 0),(893, 99, '隆林', 3, 0),(894, 100, '海城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(895, 100, '银海区', 3, 0),(896, 100, '铁山港区', 3, 0),(897, 100, '合浦县', 3, 0),(898, 101, '江州区', 3, 0),(899, 101, '凭祥市', 3, 0),(900, 101, '宁明县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(901, 101, '扶绥县', 3, 0),(902, 101, '龙州县', 3, 0),(903, 101, '大新县', 3, 0),(904, 101, '天等县', 3, 0),(905, 102, '港口区', 3, 0),(906, 102, '防城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(907, 102, '东兴市', 3, 0),(908, 102, '上思县', 3, 0),(909, 103, '港北区', 3, 0),(910, 103, '港南区', 3, 0),(911, 103, '覃塘区', 3, 0),(912, 103, '桂平市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(913, 103, '平南县', 3, 0),(914, 104, '金城江区', 3, 0),(915, 104, '宜州市', 3, 0),(916, 104, '天峨县', 3, 0),(917, 104, '凤山县', 3, 0),(918, 104, '南丹县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(919, 104, '东兰县', 3, 0),(920, 104, '都安', 3, 0),(921, 104, '罗城', 3, 0),(922, 104, '巴马', 3, 0),(923, 104, '环江', 3, 0),(924, 104, '大化', 3, 0),(925, 105, '八步区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(926, 105, '钟山县', 3, 0),(927, 105, '昭平县', 3, 0),(928, 105, '富川', 3, 0),(929, 106, '兴宾区', 3, 0),(930, 106, '合山市', 3, 0),(931, 106, '象州县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(932, 106, '武宣县', 3, 0),(933, 106, '忻城县', 3, 0),(934, 106, '金秀', 3, 0),(935, 107, '城中区', 3, 0),(936, 107, '鱼峰区', 3, 0),(937, 107, '柳北区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(938, 107, '柳南区', 3, 0),(939, 107, '柳江县', 3, 0),(940, 107, '柳城县', 3, 0),(941, 107, '鹿寨县', 3, 0),(942, 107, '融安县', 3, 0),(943, 107, '融水', 3, 0),(944, 107, '三江', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(945, 108, '钦南区', 3, 0),(946, 108, '钦北区', 3, 0),(947, 108, '灵山县', 3, 0),(948, 108, '浦北县', 3, 0),(949, 109, '万秀区', 3, 0),(950, 109, '蝶山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(951, 109, '长洲区', 3, 0),(952, 109, '岑溪市', 3, 0),(953, 109, '苍梧县', 3, 0),(954, 109, '藤县', 3, 0),(955, 109, '蒙山县', 3, 0),(956, 110, '玉州区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(957, 110, '北流市', 3, 0),(958, 110, '容县', 3, 0),(959, 110, '陆川县', 3, 0),(960, 110, '博白县', 3, 0),(961, 110, '兴业县', 3, 0),(962, 111, '南明区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(963, 111, '云岩区', 3, 0),(964, 111, '花溪区', 3, 0),(965, 111, '乌当区', 3, 0),(966, 111, '白云区', 3, 0),(967, 111, '小河区', 3, 0),(968, 111, '金阳新区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(969, 111, '新天园区', 3, 0),(970, 111, '清镇市', 3, 0),(971, 111, '开阳县', 3, 0),(972, 111, '修文县', 3, 0),(973, 111, '息烽县', 3, 0),(974, 112, '西秀区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(975, 112, '关岭', 3, 0),(976, 112, '镇宁', 3, 0),(977, 112, '紫云', 3, 0),(978, 112, '平坝县', 3, 0),(979, 112, '普定县', 3, 0),(980, 113, '毕节市', 3, 0),(981, 113, '大方县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(982, 113, '黔西县', 3, 0),(983, 113, '金沙县', 3, 0),(984, 113, '织金县', 3, 0),(985, 113, '纳雍县', 3, 0),(986, 113, '赫章县', 3, 0),(987, 113, '威宁', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(988, 114, '钟山区', 3, 0),(989, 114, '六枝特区', 3, 0),(990, 114, '水城县', 3, 0),(991, 114, '盘县', 3, 0),(992, 115, '凯里市', 3, 0),(993, 115, '黄平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(994, 115, '施秉县', 3, 0),(995, 115, '三穗县', 3, 0),(996, 115, '镇远县', 3, 0),(997, 115, '岑巩县', 3, 0),(998, 115, '天柱县', 3, 0),(999, 115, '锦屏县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1000, 115, '剑河县', 3, 0),(1001, 115, '台江县', 3, 0),(1002, 115, '黎平县', 3, 0),(1003, 115, '榕江县', 3, 0),(1004, 115, '从江县', 3, 0),(1005, 115, '雷山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1006, 115, '麻江县', 3, 0),(1007, 115, '丹寨县', 3, 0),(1008, 116, '都匀市', 3, 0),(1009, 116, '福泉市', 3, 0),(1010, 116, '荔波县', 3, 0),(1011, 116, '贵定县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1012, 116, '瓮安县', 3, 0),(1013, 116, '独山县', 3, 0),(1014, 116, '平塘县', 3, 0),(1015, 116, '罗甸县', 3, 0),(1016, 116, '长顺县', 3, 0),(1017, 116, '龙里县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1018, 116, '惠水县', 3, 0),(1019, 116, '三都', 3, 0),(1020, 117, '兴义市', 3, 0),(1021, 117, '兴仁县', 3, 0),(1022, 117, '普安县', 3, 0),(1023, 117, '晴隆县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1024, 117, '贞丰县', 3, 0),(1025, 117, '望谟县', 3, 0),(1026, 117, '册亨县', 3, 0),(1027, 117, '安龙县', 3, 0),(1028, 118, '铜仁市', 3, 0),(1029, 118, '江口县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1030, 118, '石阡县', 3, 0),(1031, 118, '思南县', 3, 0),(1032, 118, '德江县', 3, 0),(1033, 118, '玉屏', 3, 0),(1034, 118, '印江', 3, 0),(1035, 118, '沿河', 3, 0),(1036, 118, '松桃', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1037, 118, '万山特区', 3, 0),(1038, 119, '红花岗区', 3, 0),(1039, 119, '务川县', 3, 0),(1040, 119, '道真县', 3, 0),(1041, 119, '汇川区', 3, 0),(1042, 119, '赤水市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1043, 119, '仁怀市', 3, 0),(1044, 119, '遵义县', 3, 0),(1045, 119, '桐梓县', 3, 0),(1046, 119, '绥阳县', 3, 0),(1047, 119, '正安县', 3, 0),(1048, 119, '凤冈县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1049, 119, '湄潭县', 3, 0),(1050, 119, '余庆县', 3, 0),(1051, 119, '习水县', 3, 0),(1052, 119, '道真', 3, 0),(1053, 119, '务川', 3, 0),(1054, 120, '秀英区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1055, 120, '龙华区', 3, 0),(1056, 120, '琼山区', 3, 0),(1057, 120, '美兰区', 3, 0),(1058, 137, '市区', 3, 0),(1059, 137, '洋浦开发区', 3, 0),(1060, 137, '那大镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1061, 137, '王五镇', 3, 0),(1062, 137, '雅星镇', 3, 0),(1063, 137, '大成镇', 3, 0),(1064, 137, '中和镇', 3, 0),(1065, 137, '峨蔓镇', 3, 0),(1066, 137, '南丰镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1067, 137, '白马井镇', 3, 0),(1068, 137, '兰洋镇', 3, 0),(1069, 137, '和庆镇', 3, 0),(1070, 137, '海头镇', 3, 0),(1071, 137, '排浦镇', 3, 0),(1072, 137, '东成镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1073, 137, '光村镇', 3, 0),(1074, 137, '木棠镇', 3, 0),(1075, 137, '新州镇', 3, 0),(1076, 137, '三都镇', 3, 0),(1077, 137, '其他', 3, 0),(1078, 138, '长安区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1079, 138, '桥东区', 3, 0),(1080, 138, '桥西区', 3, 0),(1081, 138, '新华区', 3, 0),(1082, 138, '裕华区', 3, 0),(1083, 138, '井陉矿区', 3, 0),(1084, 138, '高新区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1085, 138, '辛集市', 3, 0),(1086, 138, '藁城市', 3, 0),(1087, 138, '晋州市', 3, 0),(1088, 138, '新乐市', 3, 0),(1089, 138, '鹿泉市', 3, 0),(1090, 138, '井陉县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1091, 138, '正定县', 3, 0),(1092, 138, '栾城县', 3, 0),(1093, 138, '行唐县', 3, 0),(1094, 138, '灵寿县', 3, 0),(1095, 138, '高邑县', 3, 0),(1096, 138, '深泽县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1097, 138, '赞皇县', 3, 0),(1098, 138, '无极县', 3, 0),(1099, 138, '平山县', 3, 0),(1100, 138, '元氏县', 3, 0),(1101, 138, '赵县', 3, 0),(1102, 139, '新市区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1103, 139, '南市区', 3, 0),(1104, 139, '北市区', 3, 0),(1105, 139, '涿州市', 3, 0),(1106, 139, '定州市', 3, 0),(1107, 139, '安国市', 3, 0),(1108, 139, '高碑店市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1109, 139, '满城县', 3, 0),(1110, 139, '清苑县', 3, 0),(1111, 139, '涞水县', 3, 0),(1112, 139, '阜平县', 3, 0),(1113, 139, '徐水县', 3, 0),(1114, 139, '定兴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1115, 139, '唐县', 3, 0),(1116, 139, '高阳县', 3, 0),(1117, 139, '容城县', 3, 0),(1118, 139, '涞源县', 3, 0),(1119, 139, '望都县', 3, 0),(1120, 139, '安新县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1121, 139, '易县', 3, 0),(1122, 139, '曲阳县', 3, 0),(1123, 139, '蠡县', 3, 0),(1124, 139, '顺平县', 3, 0),(1125, 139, '博野县', 3, 0),(1126, 139, '雄县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1127, 140, '运河区', 3, 0),(1128, 140, '新华区', 3, 0),(1129, 140, '泊头市', 3, 0),(1130, 140, '任丘市', 3, 0),(1131, 140, '黄骅市', 3, 0),(1132, 140, '河间市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1133, 140, '沧县', 3, 0),(1134, 140, '青县', 3, 0),(1135, 140, '东光县', 3, 0),(1136, 140, '海兴县', 3, 0),(1137, 140, '盐山县', 3, 0),(1138, 140, '肃宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1139, 140, '南皮县', 3, 0),(1140, 140, '吴桥县', 3, 0),(1141, 140, '献县', 3, 0),(1142, 140, '孟村', 3, 0),(1143, 141, '双桥区', 3, 0),(1144, 141, '双滦区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1145, 141, '鹰手营子矿区', 3, 0),(1146, 141, '承德县', 3, 0),(1147, 141, '兴隆县', 3, 0),(1148, 141, '平泉县', 3, 0),(1149, 141, '滦平县', 3, 0),(1150, 141, '隆化县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1151, 141, '丰宁', 3, 0),(1152, 141, '宽城', 3, 0),(1153, 141, '围场', 3, 0),(1154, 142, '从台区', 3, 0),(1155, 142, '复兴区', 3, 0),(1156, 142, '邯山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1157, 142, '峰峰矿区', 3, 0),(1158, 142, '武安市', 3, 0),(1159, 142, '邯郸县', 3, 0),(1160, 142, '临漳县', 3, 0),(1161, 142, '成安县', 3, 0),(1162, 142, '大名县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1163, 142, '涉县', 3, 0),(1164, 142, '磁县', 3, 0),(1165, 142, '肥乡县', 3, 0),(1166, 142, '永年县', 3, 0),(1167, 142, '邱县', 3, 0),(1168, 142, '鸡泽县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1169, 142, '广平县', 3, 0),(1170, 142, '馆陶县', 3, 0),(1171, 142, '魏县', 3, 0),(1172, 142, '曲周县', 3, 0),(1173, 143, '桃城区', 3, 0),(1174, 143, '冀州市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1175, 143, '深州市', 3, 0),(1176, 143, '枣强县', 3, 0),(1177, 143, '武邑县', 3, 0),(1178, 143, '武强县', 3, 0),(1179, 143, '饶阳县', 3, 0),(1180, 143, '安平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1181, 143, '故城县', 3, 0),(1182, 143, '景县', 3, 0),(1183, 143, '阜城县', 3, 0),(1184, 144, '安次区', 3, 0),(1185, 144, '广阳区', 3, 0),(1186, 144, '霸州市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1187, 144, '三河市', 3, 0),(1188, 144, '固安县', 3, 0),(1189, 144, '永清县', 3, 0),(1190, 144, '香河县', 3, 0),(1191, 144, '大城县', 3, 0),(1192, 144, '文安县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1193, 144, '大厂', 3, 0),(1194, 145, '海港区', 3, 0),(1195, 145, '山海关区', 3, 0),(1196, 145, '北戴河区', 3, 0),(1197, 145, '昌黎县', 3, 0),(1198, 145, '抚宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1199, 145, '卢龙县', 3, 0),(1200, 145, '青龙', 3, 0),(1201, 146, '路北区', 3, 0),(1202, 146, '路南区', 3, 0),(1203, 146, '古冶区', 3, 0),(1204, 146, '开平区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1205, 146, '丰南区', 3, 0),(1206, 146, '丰润区', 3, 0),(1207, 146, '遵化市', 3, 0),(1208, 146, '迁安市', 3, 0),(1209, 146, '滦县', 3, 0),(1210, 146, '滦南县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1211, 146, '乐亭县', 3, 0),(1212, 146, '迁西县', 3, 0),(1213, 146, '玉田县', 3, 0),(1214, 146, '唐海县', 3, 0),(1215, 147, '桥东区', 3, 0),(1216, 147, '桥西区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1217, 147, '南宫市', 3, 0),(1218, 147, '沙河市', 3, 0),(1219, 147, '邢台县', 3, 0),(1220, 147, '临城县', 3, 0),(1221, 147, '内丘县', 3, 0),(1222, 147, '柏乡县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1223, 147, '隆尧县', 3, 0),(1224, 147, '任县', 3, 0),(1225, 147, '南和县', 3, 0),(1226, 147, '宁晋县', 3, 0),(1227, 147, '巨鹿县', 3, 0),(1228, 147, '新河县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1229, 147, '广宗县', 3, 0),(1230, 147, '平乡县', 3, 0),(1231, 147, '威县', 3, 0),(1232, 147, '清河县', 3, 0),(1233, 147, '临西县', 3, 0),(1234, 148, '桥西区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1235, 148, '桥东区', 3, 0),(1236, 148, '宣化区', 3, 0),(1237, 148, '下花园区', 3, 0),(1238, 148, '宣化县', 3, 0),(1239, 148, '张北县', 3, 0),(1240, 148, '康保县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1241, 148, '沽源县', 3, 0),(1242, 148, '尚义县', 3, 0),(1243, 148, '蔚县', 3, 0),(1244, 148, '阳原县', 3, 0),(1245, 148, '怀安县', 3, 0),(1246, 148, '万全县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1247, 148, '怀来县', 3, 0),(1248, 148, '涿鹿县', 3, 0),(1249, 148, '赤城县', 3, 0),(1250, 148, '崇礼县', 3, 0),(1251, 149, '金水区', 3, 0),(1252, 149, '邙山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1253, 149, '二七区', 3, 0),(1254, 149, '管城区', 3, 0),(1255, 149, '中原区', 3, 0),(1256, 149, '上街区', 3, 0),(1257, 149, '惠济区', 3, 0),(1258, 149, '郑东新区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1259, 149, '经济技术开发区', 3, 0),(1260, 149, '高新开发区', 3, 0),(1261, 149, '出口加工区', 3, 0),(1262, 149, '巩义市', 3, 0),(1263, 149, '荥阳市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1264, 149, '新密市', 3, 0),(1265, 149, '新郑市', 3, 0),(1266, 149, '登封市', 3, 0),(1267, 149, '中牟县', 3, 0),(1268, 150, '西工区', 3, 0),(1269, 150, '老城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1270, 150, '涧西区', 3, 0),(1271, 150, '瀍河回族区', 3, 0),(1272, 150, '洛龙区', 3, 0),(1273, 150, '吉利区', 3, 0),(1274, 150, '偃师市', 3, 0),(1275, 150, '孟津县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1276, 150, '新安县', 3, 0),(1277, 150, '栾川县', 3, 0),(1278, 150, '嵩县', 3, 0),(1279, 150, '汝阳县', 3, 0),(1280, 150, '宜阳县', 3, 0),(1281, 150, '洛宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1282, 150, '伊川县', 3, 0),(1283, 151, '鼓楼区', 3, 0),(1284, 151, '龙亭区', 3, 0),(1285, 151, '顺河回族区', 3, 0),(1286, 151, '金明区', 3, 0),(1287, 151, '禹王台区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1288, 151, '杞县', 3, 0),(1289, 151, '通许县', 3, 0),(1290, 151, '尉氏县', 3, 0),(1291, 151, '开封县', 3, 0),(1292, 151, '兰考县', 3, 0),(1293, 152, '北关区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1294, 152, '文峰区', 3, 0),(1295, 152, '殷都区', 3, 0),(1296, 152, '龙安区', 3, 0),(1297, 152, '林州市', 3, 0),(1298, 152, '安阳县', 3, 0),(1299, 152, '汤阴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1300, 152, '滑县', 3, 0),(1301, 152, '内黄县', 3, 0),(1302, 153, '淇滨区', 3, 0),(1303, 153, '山城区', 3, 0),(1304, 153, '鹤山区', 3, 0),(1305, 153, '浚县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1306, 153, '淇县', 3, 0),(1307, 154, '济源市', 3, 0),(1308, 155, '解放区', 3, 0),(1309, 155, '中站区', 3, 0),(1310, 155, '马村区', 3, 0),(1311, 155, '山阳区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1312, 155, '沁阳市', 3, 0),(1313, 155, '孟州市', 3, 0),(1314, 155, '修武县', 3, 0),(1315, 155, '博爱县', 3, 0),(1316, 155, '武陟县', 3, 0),(1317, 155, '温县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1318, 156, '卧龙区', 3, 0),(1319, 156, '宛城区', 3, 0),(1320, 156, '邓州市', 3, 0),(1321, 156, '南召县', 3, 0),(1322, 156, '方城县', 3, 0),(1323, 156, '西峡县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1324, 156, '镇平县', 3, 0),(1325, 156, '内乡县', 3, 0),(1326, 156, '淅川县', 3, 0),(1327, 156, '社旗县', 3, 0),(1328, 156, '唐河县', 3, 0),(1329, 156, '新野县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1330, 156, '桐柏县', 3, 0),(1331, 157, '新华区', 3, 0),(1332, 157, '卫东区', 3, 0),(1333, 157, '湛河区', 3, 0),(1334, 157, '石龙区', 3, 0),(1335, 157, '舞钢市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1336, 157, '汝州市', 3, 0),(1337, 157, '宝丰县', 3, 0),(1338, 157, '叶县', 3, 0),(1339, 157, '鲁山县', 3, 0),(1340, 157, '郏县', 3, 0),(1341, 158, '湖滨区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1342, 158, '义马市', 3, 0),(1343, 158, '灵宝市', 3, 0),(1344, 158, '渑池县', 3, 0),(1345, 158, '陕县', 3, 0),(1346, 158, '卢氏县', 3, 0),(1347, 159, '梁园区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1348, 159, '睢阳区', 3, 0),(1349, 159, '永城市', 3, 0),(1350, 159, '民权县', 3, 0),(1351, 159, '睢县', 3, 0),(1352, 159, '宁陵县', 3, 0),(1353, 159, '虞城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1354, 159, '柘城县', 3, 0),(1355, 159, '夏邑县', 3, 0),(1356, 160, '卫滨区', 3, 0),(1357, 160, '红旗区', 3, 0),(1358, 160, '凤泉区', 3, 0),(1359, 160, '牧野区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1360, 160, '卫辉市', 3, 0),(1361, 160, '辉县市', 3, 0),(1362, 160, '新乡县', 3, 0),(1363, 160, '获嘉县', 3, 0),(1364, 160, '原阳县', 3, 0),(1365, 160, '延津县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1366, 160, '封丘县', 3, 0),(1367, 160, '长垣县', 3, 0),(1368, 161, '浉河区', 3, 0),(1369, 161, '平桥区', 3, 0),(1370, 161, '罗山县', 3, 0),(1371, 161, '光山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1372, 161, '新县', 3, 0),(1373, 161, '商城县', 3, 0),(1374, 161, '固始县', 3, 0),(1375, 161, '潢川县', 3, 0),(1376, 161, '淮滨县', 3, 0),(1377, 161, '息县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1378, 162, '魏都区', 3, 0),(1379, 162, '禹州市', 3, 0),(1380, 162, '长葛市', 3, 0),(1381, 162, '许昌县', 3, 0),(1382, 162, '鄢陵县', 3, 0),(1383, 162, '襄城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1384, 163, '川汇区', 3, 0),(1385, 163, '项城市', 3, 0),(1386, 163, '扶沟县', 3, 0),(1387, 163, '西华县', 3, 0),(1388, 163, '商水县', 3, 0),(1389, 163, '沈丘县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1390, 163, '郸城县', 3, 0),(1391, 163, '淮阳县', 3, 0),(1392, 163, '太康县', 3, 0),(1393, 163, '鹿邑县', 3, 0),(1394, 164, '驿城区', 3, 0),(1395, 164, '西平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1396, 164, '上蔡县', 3, 0),(1397, 164, '平舆县', 3, 0),(1398, 164, '正阳县', 3, 0),(1399, 164, '确山县', 3, 0),(1400, 164, '泌阳县', 3, 0),(1401, 164, '汝南县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1402, 164, '遂平县', 3, 0),(1403, 164, '新蔡县', 3, 0),(1404, 165, '郾城区', 3, 0),(1405, 165, '源汇区', 3, 0),(1406, 165, '召陵区', 3, 0),(1407, 165, '舞阳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1408, 165, '临颍县', 3, 0),(1409, 166, '华龙区', 3, 0),(1410, 166, '清丰县', 3, 0),(1411, 166, '南乐县', 3, 0),(1412, 166, '范县', 3, 0),(1413, 166, '台前县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1414, 166, '濮阳县', 3, 0),(1415, 167, '道里区', 3, 0),(1416, 167, '南岗区', 3, 0),(1417, 167, '动力区', 3, 0),(1418, 167, '平房区', 3, 0),(1419, 167, '香坊区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1420, 167, '太平区', 3, 0),(1421, 167, '道外区', 3, 0),(1422, 167, '阿城区', 3, 0),(1423, 167, '呼兰区', 3, 0),(1424, 167, '松北区', 3, 0),(1425, 167, '尚志市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1426, 167, '双城市', 3, 0),(1427, 167, '五常市', 3, 0),(1428, 167, '方正县', 3, 0),(1429, 167, '宾县', 3, 0),(1430, 167, '依兰县', 3, 0),(1431, 167, '巴彦县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1432, 167, '通河县', 3, 0),(1433, 167, '木兰县', 3, 0),(1434, 167, '延寿县', 3, 0),(1435, 168, '萨尔图区', 3, 0),(1436, 168, '红岗区', 3, 0),(1437, 168, '龙凤区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1438, 168, '让胡路区', 3, 0),(1439, 168, '大同区', 3, 0),(1440, 168, '肇州县', 3, 0),(1441, 168, '肇源县', 3, 0),(1442, 168, '林甸县', 3, 0),(1443, 168, '杜尔伯特', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1444, 169, '呼玛县', 3, 0),(1445, 169, '漠河县', 3, 0),(1446, 169, '塔河县', 3, 0),(1447, 170, '兴山区', 3, 0),(1448, 170, '工农区', 3, 0),(1449, 170, '南山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1450, 170, '兴安区', 3, 0),(1451, 170, '向阳区', 3, 0),(1452, 170, '东山区', 3, 0),(1453, 170, '萝北县', 3, 0),(1454, 170, '绥滨县', 3, 0),(1455, 171, '爱辉区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1456, 171, '五大连池市', 3, 0),(1457, 171, '北安市', 3, 0),(1458, 171, '嫩江县', 3, 0),(1459, 171, '逊克县', 3, 0),(1460, 171, '孙吴县', 3, 0),(1461, 172, '鸡冠区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1462, 172, '恒山区', 3, 0),(1463, 172, '城子河区', 3, 0),(1464, 172, '滴道区', 3, 0),(1465, 172, '梨树区', 3, 0),(1466, 172, '虎林市', 3, 0),(1467, 172, '密山市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1468, 172, '鸡东县', 3, 0),(1469, 173, '前进区', 3, 0),(1470, 173, '郊区', 3, 0),(1471, 173, '向阳区', 3, 0),(1472, 173, '东风区', 3, 0),(1473, 173, '同江市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1474, 173, '富锦市', 3, 0),(1475, 173, '桦南县', 3, 0),(1476, 173, '桦川县', 3, 0),(1477, 173, '汤原县', 3, 0),(1478, 173, '抚远县', 3, 0),(1479, 174, '爱民区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1480, 174, '东安区', 3, 0),(1481, 174, '阳明区', 3, 0),(1482, 174, '西安区', 3, 0),(1483, 174, '绥芬河市', 3, 0),(1484, 174, '海林市', 3, 0),(1485, 174, '宁安市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1486, 174, '穆棱市', 3, 0),(1487, 174, '东宁县', 3, 0),(1488, 174, '林口县', 3, 0),(1489, 175, '桃山区', 3, 0),(1490, 175, '新兴区', 3, 0),(1491, 175, '茄子河区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1492, 175, '勃利县', 3, 0),(1493, 176, '龙沙区', 3, 0),(1494, 176, '昂昂溪区', 3, 0),(1495, 176, '铁峰区', 3, 0),(1496, 176, '建华区', 3, 0),(1497, 176, '富拉尔基区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1498, 176, '碾子山区', 3, 0),(1499, 176, '梅里斯达斡尔区', 3, 0),(1500, 176, '讷河市', 3, 0),(1501, 176, '龙江县', 3, 0),(1502, 176, '依安县', 3, 0),(1503, 176, '泰来县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1504, 176, '甘南县', 3, 0),(1505, 176, '富裕县', 3, 0),(1506, 176, '克山县', 3, 0),(1507, 176, '克东县', 3, 0),(1508, 176, '拜泉县', 3, 0),(1509, 177, '尖山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1510, 177, '岭东区', 3, 0),(1511, 177, '四方台区', 3, 0),(1512, 177, '宝山区', 3, 0),(1513, 177, '集贤县', 3, 0),(1514, 177, '友谊县', 3, 0),(1515, 177, '宝清县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1516, 177, '饶河县', 3, 0),(1517, 178, '北林区', 3, 0),(1518, 178, '安达市', 3, 0),(1519, 178, '肇东市', 3, 0),(1520, 178, '海伦市', 3, 0),(1521, 178, '望奎县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1522, 178, '兰西县', 3, 0),(1523, 178, '青冈县', 3, 0),(1524, 178, '庆安县', 3, 0),(1525, 178, '明水县', 3, 0),(1526, 178, '绥棱县', 3, 0),(1527, 179, '伊春区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1528, 179, '带岭区', 3, 0),(1529, 179, '南岔区', 3, 0),(1530, 179, '金山屯区', 3, 0),(1531, 179, '西林区', 3, 0),(1532, 179, '美溪区', 3, 0),(1533, 179, '乌马河区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1534, 179, '翠峦区', 3, 0),(1535, 179, '友好区', 3, 0),(1536, 179, '上甘岭区', 3, 0),(1537, 179, '五营区', 3, 0),(1538, 179, '红星区', 3, 0),(1539, 179, '新青区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1540, 179, '汤旺河区', 3, 0),(1541, 179, '乌伊岭区', 3, 0),(1542, 179, '铁力市', 3, 0),(1543, 179, '嘉荫县', 3, 0),(1544, 180, '江岸区', 3, 0),(1545, 180, '武昌区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1546, 180, '江汉区', 3, 0),(1547, 180, '硚口区', 3, 0),(1548, 180, '汉阳区', 3, 0),(1549, 180, '青山区', 3, 0),(1550, 180, '洪山区', 3, 0),(1551, 180, '东西湖区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1552, 180, '汉南区', 3, 0),(1553, 180, '蔡甸区', 3, 0),(1554, 180, '江夏区', 3, 0),(1555, 180, '黄陂区', 3, 0),(1556, 180, '新洲区', 3, 0),(1557, 180, '经济开发区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1558, 181, '仙桃市', 3, 0),(1559, 182, '鄂城区', 3, 0),(1560, 182, '华容区', 3, 0),(1561, 182, '梁子湖区', 3, 0),(1562, 183, '黄州区', 3, 0),(1563, 183, '麻城市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1564, 183, '武穴市', 3, 0),(1565, 183, '团风县', 3, 0),(1566, 183, '红安县', 3, 0),(1567, 183, '罗田县', 3, 0),(1568, 183, '英山县', 3, 0),(1569, 183, '浠水县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1570, 183, '蕲春县', 3, 0),(1571, 183, '黄梅县', 3, 0),(1572, 184, '黄石港区', 3, 0),(1573, 184, '西塞山区', 3, 0),(1574, 184, '下陆区', 3, 0),(1575, 184, '铁山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1576, 184, '大冶市', 3, 0),(1577, 184, '阳新县', 3, 0),(1578, 185, '东宝区', 3, 0),(1579, 185, '掇刀区', 3, 0),(1580, 185, '钟祥市', 3, 0),(1581, 185, '京山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1582, 185, '沙洋县', 3, 0),(1583, 186, '沙市区', 3, 0),(1584, 186, '荆州区', 3, 0),(1585, 186, '石首市', 3, 0),(1586, 186, '洪湖市', 3, 0),(1587, 186, '松滋市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1588, 186, '公安县', 3, 0),(1589, 186, '监利县', 3, 0),(1590, 186, '江陵县', 3, 0),(1591, 187, '潜江市', 3, 0),(1592, 188, '神农架林区', 3, 0),(1593, 189, '张湾区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1594, 189, '茅箭区', 3, 0),(1595, 189, '丹江口市', 3, 0),(1596, 189, '郧县', 3, 0),(1597, 189, '郧西县', 3, 0),(1598, 189, '竹山县', 3, 0),(1599, 189, '竹溪县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1600, 189, '房县', 3, 0),(1601, 190, '曾都区', 3, 0),(1602, 190, '广水市', 3, 0),(1603, 191, '天门市', 3, 0),(1604, 192, '咸安区', 3, 0),(1605, 192, '赤壁市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1606, 192, '嘉鱼县', 3, 0),(1607, 192, '通城县', 3, 0),(1608, 192, '崇阳县', 3, 0),(1609, 192, '通山县', 3, 0),(1610, 193, '襄城区', 3, 0),(1611, 193, '樊城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1612, 193, '襄阳区', 3, 0),(1613, 193, '老河口市', 3, 0),(1614, 193, '枣阳市', 3, 0),(1615, 193, '宜城市', 3, 0),(1616, 193, '南漳县', 3, 0),(1617, 193, '谷城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1618, 193, '保康县', 3, 0),(1619, 194, '孝南区', 3, 0),(1620, 194, '应城市', 3, 0),(1621, 194, '安陆市', 3, 0),(1622, 194, '汉川市', 3, 0),(1623, 194, '孝昌县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1624, 194, '大悟县', 3, 0),(1625, 194, '云梦县', 3, 0),(1626, 195, '长阳', 3, 0),(1627, 195, '五峰', 3, 0),(1628, 195, '西陵区', 3, 0),(1629, 195, '伍家岗区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1630, 195, '点军区', 3, 0),(1631, 195, '猇亭区', 3, 0),(1632, 195, '夷陵区', 3, 0),(1633, 195, '宜都市', 3, 0),(1634, 195, '当阳市', 3, 0),(1635, 195, '枝江市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1636, 195, '远安县', 3, 0),(1637, 195, '兴山县', 3, 0),(1638, 195, '秭归县', 3, 0),(1639, 196, '恩施市', 3, 0),(1640, 196, '利川市', 3, 0),(1641, 196, '建始县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1642, 196, '巴东县', 3, 0),(1643, 196, '宣恩县', 3, 0),(1644, 196, '咸丰县', 3, 0),(1645, 196, '来凤县', 3, 0),(1646, 196, '鹤峰县', 3, 0),(1647, 197, '岳麓区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1648, 197, '芙蓉区', 3, 0),(1649, 197, '天心区', 3, 0),(1650, 197, '开福区', 3, 0),(1651, 197, '雨花区', 3, 0),(1652, 197, '开发区', 3, 0),(1653, 197, '浏阳市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1654, 197, '长沙县', 3, 0),(1655, 197, '望城县', 3, 0),(1656, 197, '宁乡县', 3, 0),(1657, 198, '永定区', 3, 0),(1658, 198, '武陵源区', 3, 0),(1659, 198, '慈利县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1660, 198, '桑植县', 3, 0),(1661, 199, '武陵区', 3, 0),(1662, 199, '鼎城区', 3, 0),(1663, 199, '津市市', 3, 0),(1664, 199, '安乡县', 3, 0),(1665, 199, '汉寿县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1666, 199, '澧县', 3, 0),(1667, 199, '临澧县', 3, 0),(1668, 199, '桃源县', 3, 0),(1669, 199, '石门县', 3, 0),(1670, 200, '北湖区', 3, 0),(1671, 200, '苏仙区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1672, 200, '资兴市', 3, 0),(1673, 200, '桂阳县', 3, 0),(1674, 200, '宜章县', 3, 0),(1675, 200, '永兴县', 3, 0),(1676, 200, '嘉禾县', 3, 0),(1677, 200, '临武县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1678, 200, '汝城县', 3, 0),(1679, 200, '桂东县', 3, 0),(1680, 200, '安仁县', 3, 0),(1681, 201, '雁峰区', 3, 0),(1682, 201, '珠晖区', 3, 0),(1683, 201, '石鼓区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1684, 201, '蒸湘区', 3, 0),(1685, 201, '南岳区', 3, 0),(1686, 201, '耒阳市', 3, 0),(1687, 201, '常宁市', 3, 0),(1688, 201, '衡阳县', 3, 0),(1689, 201, '衡南县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1690, 201, '衡山县', 3, 0),(1691, 201, '衡东县', 3, 0),(1692, 201, '祁东县', 3, 0),(1693, 202, '鹤城区', 3, 0),(1694, 202, '靖州', 3, 0),(1695, 202, '麻阳', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1696, 202, '通道', 3, 0),(1697, 202, '新晃', 3, 0),(1698, 202, '芷江', 3, 0),(1699, 202, '沅陵县', 3, 0),(1700, 202, '辰溪县', 3, 0),(1701, 202, '溆浦县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1702, 202, '中方县', 3, 0),(1703, 202, '会同县', 3, 0),(1704, 202, '洪江市', 3, 0),(1705, 203, '娄星区', 3, 0),(1706, 203, '冷水江市', 3, 0),(1707, 203, '涟源市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1708, 203, '双峰县', 3, 0),(1709, 203, '新化县', 3, 0),(1710, 204, '城步', 3, 0),(1711, 204, '双清区', 3, 0),(1712, 204, '大祥区', 3, 0),(1713, 204, '北塔区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1714, 204, '武冈市', 3, 0),(1715, 204, '邵东县', 3, 0),(1716, 204, '新邵县', 3, 0),(1717, 204, '邵阳县', 3, 0),(1718, 204, '隆回县', 3, 0),(1719, 204, '洞口县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1720, 204, '绥宁县', 3, 0),(1721, 204, '新宁县', 3, 0),(1722, 205, '岳塘区', 3, 0),(1723, 205, '雨湖区', 3, 0),(1724, 205, '湘乡市', 3, 0),(1725, 205, '韶山市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1726, 205, '湘潭县', 3, 0),(1727, 206, '吉首市', 3, 0),(1728, 206, '泸溪县', 3, 0),(1729, 206, '凤凰县', 3, 0),(1730, 206, '花垣县', 3, 0),(1731, 206, '保靖县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1732, 206, '古丈县', 3, 0),(1733, 206, '永顺县', 3, 0),(1734, 206, '龙山县', 3, 0),(1735, 207, '赫山区', 3, 0),(1736, 207, '资阳区', 3, 0),(1737, 207, '沅江市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1738, 207, '南县', 3, 0),(1739, 207, '桃江县', 3, 0),(1740, 207, '安化县', 3, 0),(1741, 208, '江华', 3, 0),(1742, 208, '冷水滩区', 3, 0),(1743, 208, '零陵区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1744, 208, '祁阳县', 3, 0),(1745, 208, '东安县', 3, 0),(1746, 208, '双牌县', 3, 0),(1747, 208, '道县', 3, 0),(1748, 208, '江永县', 3, 0),(1749, 208, '宁远县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1750, 208, '蓝山县', 3, 0),(1751, 208, '新田县', 3, 0),(1752, 209, '岳阳楼区', 3, 0),(1753, 209, '君山区', 3, 0),(1754, 209, '云溪区', 3, 0),(1755, 209, '汨罗市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1756, 209, '临湘市', 3, 0),(1757, 209, '岳阳县', 3, 0),(1758, 209, '华容县', 3, 0),(1759, 209, '湘阴县', 3, 0),(1760, 209, '平江县', 3, 0),(1761, 210, '天元区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1762, 210, '荷塘区', 3, 0),(1763, 210, '芦淞区', 3, 0),(1764, 210, '石峰区', 3, 0),(1765, 210, '醴陵市', 3, 0),(1766, 210, '株洲县', 3, 0),(1767, 210, '攸县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1768, 210, '茶陵县', 3, 0),(1769, 210, '炎陵县', 3, 0),(1770, 211, '朝阳区', 3, 0),(1771, 211, '宽城区', 3, 0),(1772, 211, '二道区', 3, 0),(1773, 211, '南关区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1774, 211, '绿园区', 3, 0),(1775, 211, '双阳区', 3, 0),(1776, 211, '净月潭开发区', 3, 0),(1777, 211, '高新技术开发区', 3, 0),(1778, 211, '经济技术开发区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1779, 211, '汽车产业开发区', 3, 0),(1780, 211, '德惠市', 3, 0),(1781, 211, '九台市', 3, 0),(1782, 211, '榆树市', 3, 0),(1783, 211, '农安县', 3, 0),(1784, 212, '船营区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1785, 212, '昌邑区', 3, 0),(1786, 212, '龙潭区', 3, 0),(1787, 212, '丰满区', 3, 0),(1788, 212, '蛟河市', 3, 0),(1789, 212, '桦甸市', 3, 0),(1790, 212, '舒兰市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1791, 212, '磐石市', 3, 0),(1792, 212, '永吉县', 3, 0),(1793, 213, '洮北区', 3, 0),(1794, 213, '洮南市', 3, 0),(1795, 213, '大安市', 3, 0),(1796, 213, '镇赉县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1797, 213, '通榆县', 3, 0),(1798, 214, '江源区', 3, 0),(1799, 214, '八道江区', 3, 0),(1800, 214, '长白', 3, 0),(1801, 214, '临江市', 3, 0),(1802, 214, '抚松县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1803, 214, '靖宇县', 3, 0),(1804, 215, '龙山区', 3, 0),(1805, 215, '西安区', 3, 0),(1806, 215, '东丰县', 3, 0),(1807, 215, '东辽县', 3, 0),(1808, 216, '铁西区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1809, 216, '铁东区', 3, 0),(1810, 216, '伊通', 3, 0),(1811, 216, '公主岭市', 3, 0),(1812, 216, '双辽市', 3, 0),(1813, 216, '梨树县', 3, 0),(1814, 217, '前郭尔罗斯', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1815, 217, '宁江区', 3, 0),(1816, 217, '长岭县', 3, 0),(1817, 217, '乾安县', 3, 0),(1818, 217, '扶余县', 3, 0),(1819, 218, '东昌区', 3, 0),(1820, 218, '二道江区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1821, 218, '梅河口市', 3, 0),(1822, 218, '集安市', 3, 0),(1823, 218, '通化县', 3, 0),(1824, 218, '辉南县', 3, 0),(1825, 218, '柳河县', 3, 0),(1826, 219, '延吉市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1827, 219, '图们市', 3, 0),(1828, 219, '敦化市', 3, 0),(1829, 219, '珲春市', 3, 0),(1830, 219, '龙井市', 3, 0),(1831, 219, '和龙市', 3, 0),(1832, 219, '安图县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1833, 219, '汪清县', 3, 0),(1834, 220, '玄武区', 3, 0),(1835, 220, '鼓楼区', 3, 0),(1836, 220, '白下区', 3, 0),(1837, 220, '建邺区', 3, 0),(1838, 220, '秦淮区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1839, 220, '雨花台区', 3, 0),(1840, 220, '下关区', 3, 0),(1841, 220, '栖霞区', 3, 0),(1842, 220, '浦口区', 3, 0),(1843, 220, '江宁区', 3, 0),(1844, 220, '六合区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1845, 220, '溧水县', 3, 0),(1846, 220, '高淳县', 3, 0),(1847, 221, '沧浪区', 3, 0),(1848, 221, '金阊区', 3, 0),(1849, 221, '平江区', 3, 0),(1850, 221, '虎丘区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1851, 221, '吴中区', 3, 0),(1852, 221, '相城区', 3, 0),(1853, 221, '园区', 3, 0),(1854, 221, '新区', 3, 0),(1855, 221, '常熟市', 3, 0),(1856, 221, '张家港市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1857, 221, '玉山镇', 3, 0),(1858, 221, '巴城镇', 3, 0),(1859, 221, '周市镇', 3, 0),(1860, 221, '陆家镇', 3, 0),(1861, 221, '花桥镇', 3, 0),(1862, 221, '淀山湖镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1863, 221, '张浦镇', 3, 0),(1864, 221, '周庄镇', 3, 0),(1865, 221, '千灯镇', 3, 0),(1866, 221, '锦溪镇', 3, 0),(1867, 221, '开发区', 3, 0),(1868, 221, '吴江市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1869, 221, '太仓市', 3, 0),(1870, 222, '崇安区', 3, 0),(1871, 222, '北塘区', 3, 0),(1872, 222, '南长区', 3, 0),(1873, 222, '锡山区', 3, 0),(1874, 222, '惠山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1875, 222, '滨湖区', 3, 0),(1876, 222, '新区', 3, 0),(1877, 222, '江阴市', 3, 0),(1878, 222, '宜兴市', 3, 0),(1879, 223, '天宁区', 3, 0),(1880, 223, '钟楼区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1881, 223, '戚墅堰区', 3, 0),(1882, 223, '郊区', 3, 0),(1883, 223, '新北区', 3, 0),(1884, 223, '武进区', 3, 0),(1885, 223, '溧阳市', 3, 0),(1886, 223, '金坛市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1887, 224, '清河区', 3, 0),(1888, 224, '清浦区', 3, 0),(1889, 224, '楚州区', 3, 0),(1890, 224, '淮阴区', 3, 0),(1891, 224, '涟水县', 3, 0),(1892, 224, '洪泽县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1893, 224, '盱眙县', 3, 0),(1894, 224, '金湖县', 3, 0),(1895, 225, '新浦区', 3, 0),(1896, 225, '连云区', 3, 0),(1897, 225, '海州区', 3, 0),(1898, 225, '赣榆县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1899, 225, '东海县', 3, 0),(1900, 225, '灌云县', 3, 0),(1901, 225, '灌南县', 3, 0),(1902, 226, '崇川区', 3, 0),(1903, 226, '港闸区', 3, 0),(1904, 226, '经济开发区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1905, 226, '启东市', 3, 0),(1906, 226, '如皋市', 3, 0),(1907, 226, '通州市', 3, 0),(1908, 226, '海门市', 3, 0),(1909, 226, '海安县', 3, 0),(1910, 226, '如东县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1911, 227, '宿城区', 3, 0),(1912, 227, '宿豫区', 3, 0),(1913, 227, '宿豫县', 3, 0),(1914, 227, '沭阳县', 3, 0),(1915, 227, '泗阳县', 3, 0),(1916, 227, '泗洪县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1917, 228, '海陵区', 3, 0),(1918, 228, '高港区', 3, 0),(1919, 228, '兴化市', 3, 0),(1920, 228, '靖江市', 3, 0),(1921, 228, '泰兴市', 3, 0),(1922, 228, '姜堰市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1923, 229, '云龙区', 3, 0),(1924, 229, '鼓楼区', 3, 0),(1925, 229, '九里区', 3, 0),(1926, 229, '贾汪区', 3, 0),(1927, 229, '泉山区', 3, 0),(1928, 229, '新沂市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1929, 229, '邳州市', 3, 0),(1930, 229, '丰县', 3, 0),(1931, 229, '沛县', 3, 0),(1932, 229, '铜山县', 3, 0),(1933, 229, '睢宁县', 3, 0),(1934, 230, '城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1935, 230, '亭湖区', 3, 0),(1936, 230, '盐都区', 3, 0),(1937, 230, '盐都县', 3, 0),(1938, 230, '东台市', 3, 0),(1939, 230, '大丰市', 3, 0),(1940, 230, '响水县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1941, 230, '滨海县', 3, 0),(1942, 230, '阜宁县', 3, 0),(1943, 230, '射阳县', 3, 0),(1944, 230, '建湖县', 3, 0),(1945, 231, '广陵区', 3, 0),(1946, 231, '维扬区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1947, 231, '邗江区', 3, 0),(1948, 231, '仪征市', 3, 0),(1949, 231, '高邮市', 3, 0),(1950, 231, '江都市', 3, 0),(1951, 231, '宝应县', 3, 0),(1952, 232, '京口区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1953, 232, '润州区', 3, 0),(1954, 232, '丹徒区', 3, 0),(1955, 232, '丹阳市', 3, 0),(1956, 232, '扬中市', 3, 0),(1957, 232, '句容市', 3, 0),(1958, 233, '东湖区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1959, 233, '西湖区', 3, 0),(1960, 233, '青云谱区', 3, 0),(1961, 233, '湾里区', 3, 0),(1962, 233, '青山湖区', 3, 0),(1963, 233, '红谷滩新区', 3, 0),(1964, 233, '昌北区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1965, 233, '高新区', 3, 0),(1966, 233, '南昌县', 3, 0),(1967, 233, '新建县', 3, 0),(1968, 233, '安义县', 3, 0),(1969, 233, '进贤县', 3, 0),(1970, 234, '临川区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1971, 234, '南城县', 3, 0),(1972, 234, '黎川县', 3, 0),(1973, 234, '南丰县', 3, 0),(1974, 234, '崇仁县', 3, 0),(1975, 234, '乐安县', 3, 0),(1976, 234, '宜黄县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1977, 234, '金溪县', 3, 0),(1978, 234, '资溪县', 3, 0),(1979, 234, '东乡县', 3, 0),(1980, 234, '广昌县', 3, 0),(1981, 235, '章贡区', 3, 0),(1982, 235, '于都县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1983, 235, '瑞金市', 3, 0),(1984, 235, '南康市', 3, 0),(1985, 235, '赣县', 3, 0),(1986, 235, '信丰县', 3, 0),(1987, 235, '大余县', 3, 0),(1988, 235, '上犹县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1989, 235, '崇义县', 3, 0),(1990, 235, '安远县', 3, 0),(1991, 235, '龙南县', 3, 0),(1992, 235, '定南县', 3, 0),(1993, 235, '全南县', 3, 0),(1994, 235, '宁都县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(1995, 235, '兴国县', 3, 0),(1996, 235, '会昌县', 3, 0),(1997, 235, '寻乌县', 3, 0),(1998, 235, '石城县', 3, 0),(1999, 236, '安福县', 3, 0),(2000, 236, '吉州区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2001, 236, '青原区', 3, 0),(2002, 236, '井冈山市', 3, 0),(2003, 236, '吉安县', 3, 0),(2004, 236, '吉水县', 3, 0),(2005, 236, '峡江县', 3, 0),(2006, 236, '新干县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2007, 236, '永丰县', 3, 0),(2008, 236, '泰和县', 3, 0),(2009, 236, '遂川县', 3, 0),(2010, 236, '万安县', 3, 0),(2011, 236, '永新县', 3, 0),(2012, 237, '珠山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2013, 237, '昌江区', 3, 0),(2014, 237, '乐平市', 3, 0),(2015, 237, '浮梁县', 3, 0),(2016, 238, '浔阳区', 3, 0),(2017, 238, '庐山区', 3, 0),(2018, 238, '瑞昌市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2019, 238, '九江县', 3, 0),(2020, 238, '武宁县', 3, 0),(2021, 238, '修水县', 3, 0),(2022, 238, '永修县', 3, 0),(2023, 238, '德安县', 3, 0),(2024, 238, '星子县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2025, 238, '都昌县', 3, 0),(2026, 238, '湖口县', 3, 0),(2027, 238, '彭泽县', 3, 0),(2028, 239, '安源区', 3, 0),(2029, 239, '湘东区', 3, 0),(2030, 239, '莲花县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2031, 239, '芦溪县', 3, 0),(2032, 239, '上栗县', 3, 0),(2033, 240, '信州区', 3, 0),(2034, 240, '德兴市', 3, 0),(2035, 240, '上饶县', 3, 0),(2036, 240, '广丰县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2037, 240, '玉山县', 3, 0),(2038, 240, '铅山县', 3, 0),(2039, 240, '横峰县', 3, 0),(2040, 240, '弋阳县', 3, 0),(2041, 240, '余干县', 3, 0),(2042, 240, '波阳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2043, 240, '万年县', 3, 0),(2044, 240, '婺源县', 3, 0),(2045, 241, '渝水区', 3, 0),(2046, 241, '分宜县', 3, 0),(2047, 242, '袁州区', 3, 0),(2048, 242, '丰城市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2049, 242, '樟树市', 3, 0),(2050, 242, '高安市', 3, 0),(2051, 242, '奉新县', 3, 0),(2052, 242, '万载县', 3, 0),(2053, 242, '上高县', 3, 0),(2054, 242, '宜丰县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2055, 242, '靖安县', 3, 0),(2056, 242, '铜鼓县', 3, 0),(2057, 243, '月湖区', 3, 0),(2058, 243, '贵溪市', 3, 0),(2059, 243, '余江县', 3, 0),(2060, 244, '沈河区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2061, 244, '皇姑区', 3, 0),(2062, 244, '和平区', 3, 0),(2063, 244, '大东区', 3, 0),(2064, 244, '铁西区', 3, 0),(2065, 244, '苏家屯区', 3, 0),(2066, 244, '东陵区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2067, 244, '沈北新区', 3, 0),(2068, 244, '于洪区', 3, 0),(2069, 244, '浑南新区', 3, 0),(2070, 244, '新民市', 3, 0),(2071, 244, '辽中县', 3, 0),(2072, 244, '康平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2073, 244, '法库县', 3, 0),(2074, 245, '西岗区', 3, 0),(2075, 245, '中山区', 3, 0),(2076, 245, '沙河口区', 3, 0),(2077, 245, '甘井子区', 3, 0),(2078, 245, '旅顺口区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2079, 245, '金州区', 3, 0),(2080, 245, '开发区', 3, 0),(2081, 245, '瓦房店市', 3, 0),(2082, 245, '普兰店市', 3, 0),(2083, 245, '庄河市', 3, 0),(2084, 245, '长海县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2085, 246, '铁东区', 3, 0),(2086, 246, '铁西区', 3, 0),(2087, 246, '立山区', 3, 0),(2088, 246, '千山区', 3, 0),(2089, 246, '岫岩', 3, 0),(2090, 246, '海城市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2091, 246, '台安县', 3, 0),(2092, 247, '本溪', 3, 0),(2093, 247, '平山区', 3, 0),(2094, 247, '明山区', 3, 0),(2095, 247, '溪湖区', 3, 0),(2096, 247, '南芬区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2097, 247, '桓仁', 3, 0),(2098, 248, '双塔区', 3, 0),(2099, 248, '龙城区', 3, 0),(2100, 248, '喀喇沁左翼蒙古族自治县', 3, 0),(2101, 248, '北票市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2102, 248, '凌源市', 3, 0),(2103, 248, '朝阳县', 3, 0),(2104, 248, '建平县', 3, 0),(2105, 249, '振兴区', 3, 0),(2106, 249, '元宝区', 3, 0),(2107, 249, '振安区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2108, 249, '宽甸', 3, 0),(2109, 249, '东港市', 3, 0),(2110, 249, '凤城市', 3, 0),(2111, 250, '顺城区', 3, 0),(2112, 250, '新抚区', 3, 0),(2113, 250, '东洲区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2114, 250, '望花区', 3, 0),(2115, 250, '清原', 3, 0),(2116, 250, '新宾', 3, 0),(2117, 250, '抚顺县', 3, 0),(2118, 251, '阜新', 3, 0),(2119, 251, '海州区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2120, 251, '新邱区', 3, 0),(2121, 251, '太平区', 3, 0),(2122, 251, '清河门区', 3, 0),(2123, 251, '细河区', 3, 0),(2124, 251, '彰武县', 3, 0),(2125, 252, '龙港区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2126, 252, '南票区', 3, 0),(2127, 252, '连山区', 3, 0),(2128, 252, '兴城市', 3, 0),(2129, 252, '绥中县', 3, 0),(2130, 252, '建昌县', 3, 0),(2131, 253, '太和区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2132, 253, '古塔区', 3, 0),(2133, 253, '凌河区', 3, 0),(2134, 253, '凌海市', 3, 0),(2135, 253, '北镇市', 3, 0),(2136, 253, '黑山县', 3, 0),(2137, 253, '义县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2138, 254, '白塔区', 3, 0),(2139, 254, '文圣区', 3, 0),(2140, 254, '宏伟区', 3, 0),(2141, 254, '太子河区', 3, 0),(2142, 254, '弓长岭区', 3, 0),(2143, 254, '灯塔市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2144, 254, '辽阳县', 3, 0),(2145, 255, '双台子区', 3, 0),(2146, 255, '兴隆台区', 3, 0),(2147, 255, '大洼县', 3, 0),(2148, 255, '盘山县', 3, 0),(2149, 256, '银州区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2150, 256, '清河区', 3, 0),(2151, 256, '调兵山市', 3, 0),(2152, 256, '开原市', 3, 0),(2153, 256, '铁岭县', 3, 0),(2154, 256, '西丰县', 3, 0),(2155, 256, '昌图县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2156, 257, '站前区', 3, 0),(2157, 257, '西市区', 3, 0),(2158, 257, '鲅鱼圈区', 3, 0),(2159, 257, '老边区', 3, 0),(2160, 257, '盖州市', 3, 0),(2161, 257, '大石桥市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2162, 258, '回民区', 3, 0),(2163, 258, '玉泉区', 3, 0),(2164, 258, '新城区', 3, 0),(2165, 258, '赛罕区', 3, 0),(2166, 258, '清水河县', 3, 0),(2167, 258, '土默特左旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2168, 258, '托克托县', 3, 0),(2169, 258, '和林格尔县', 3, 0),(2170, 258, '武川县', 3, 0),(2171, 259, '阿拉善左旗', 3, 0),(2172, 259, '阿拉善右旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2173, 259, '额济纳旗', 3, 0),(2174, 260, '临河区', 3, 0),(2175, 260, '五原县', 3, 0),(2176, 260, '磴口县', 3, 0),(2177, 260, '乌拉特前旗', 3, 0),(2178, 260, '乌拉特中旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2179, 260, '乌拉特后旗', 3, 0),(2180, 260, '杭锦后旗', 3, 0),(2181, 261, '昆都仑区', 3, 0),(2182, 261, '青山区', 3, 0),(2183, 261, '东河区', 3, 0),(2184, 261, '九原区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2185, 261, '石拐区', 3, 0),(2186, 261, '白云矿区', 3, 0),(2187, 261, '土默特右旗', 3, 0),(2188, 261, '固阳县', 3, 0),(2189, 261, '达尔罕茂明安联合旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2190, 262, '红山区', 3, 0),(2191, 262, '元宝山区', 3, 0),(2192, 262, '松山区', 3, 0),(2193, 262, '阿鲁科尔沁旗', 3, 0),(2194, 262, '巴林左旗', 3, 0),(2195, 262, '巴林右旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2196, 262, '林西县', 3, 0),(2197, 262, '克什克腾旗', 3, 0),(2198, 262, '翁牛特旗', 3, 0),(2199, 262, '喀喇沁旗', 3, 0),(2200, 262, '宁城县', 3, 0),(2201, 262, '敖汉旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2202, 263, '东胜区', 3, 0),(2203, 263, '达拉特旗', 3, 0),(2204, 263, '准格尔旗', 3, 0),(2205, 263, '鄂托克前旗', 3, 0),(2206, 263, '鄂托克旗', 3, 0),(2207, 263, '杭锦旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2208, 263, '乌审旗', 3, 0),(2209, 263, '伊金霍洛旗', 3, 0),(2210, 264, '海拉尔区', 3, 0),(2211, 264, '莫力达瓦', 3, 0),(2212, 264, '满洲里市', 3, 0),(2213, 264, '牙克石市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2214, 264, '扎兰屯市', 3, 0),(2215, 264, '额尔古纳市', 3, 0),(2216, 264, '根河市', 3, 0),(2217, 264, '阿荣旗', 3, 0),(2218, 264, '鄂伦春自治旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2219, 264, '鄂温克族自治旗', 3, 0),(2220, 264, '陈巴尔虎旗', 3, 0),(2221, 264, '新巴尔虎左旗', 3, 0),(2222, 264, '新巴尔虎右旗', 3, 0),(2223, 265, '科尔沁区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2224, 265, '霍林郭勒市', 3, 0),(2225, 265, '科尔沁左翼中旗', 3, 0),(2226, 265, '科尔沁左翼后旗', 3, 0),(2227, 265, '开鲁县', 3, 0),(2228, 265, '库伦旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2229, 265, '奈曼旗', 3, 0),(2230, 265, '扎鲁特旗', 3, 0),(2231, 266, '海勃湾区', 3, 0),(2232, 266, '乌达区', 3, 0),(2233, 266, '海南区', 3, 0),(2234, 267, '化德县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2235, 267, '集宁区', 3, 0),(2236, 267, '丰镇市', 3, 0),(2237, 267, '卓资县', 3, 0),(2238, 267, '商都县', 3, 0),(2239, 267, '兴和县', 3, 0),(2240, 267, '凉城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2241, 267, '察哈尔右翼前旗', 3, 0),(2242, 267, '察哈尔右翼中旗', 3, 0),(2243, 267, '察哈尔右翼后旗', 3, 0),(2244, 267, '四子王旗', 3, 0),(2245, 268, '二连浩特市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2246, 268, '锡林浩特市', 3, 0),(2247, 268, '阿巴嘎旗', 3, 0),(2248, 268, '苏尼特左旗', 3, 0),(2249, 268, '苏尼特右旗', 3, 0),(2250, 268, '东乌珠穆沁旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2251, 268, '西乌珠穆沁旗', 3, 0),(2252, 268, '太仆寺旗', 3, 0),(2253, 268, '镶黄旗', 3, 0),(2254, 268, '正镶白旗', 3, 0),(2255, 268, '正蓝旗', 3, 0),(2256, 268, '多伦县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2257, 269, '乌兰浩特市', 3, 0),(2258, 269, '阿尔山市', 3, 0),(2259, 269, '科尔沁右翼前旗', 3, 0),(2260, 269, '科尔沁右翼中旗', 3, 0),(2261, 269, '扎赉特旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2262, 269, '突泉县', 3, 0),(2263, 270, '西夏区', 3, 0),(2264, 270, '金凤区', 3, 0),(2265, 270, '兴庆区', 3, 0),(2266, 270, '灵武市', 3, 0),(2267, 270, '永宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2268, 270, '贺兰县', 3, 0),(2269, 271, '原州区', 3, 0),(2270, 271, '海原县', 3, 0),(2271, 271, '西吉县', 3, 0),(2272, 271, '隆德县', 3, 0),(2273, 271, '泾源县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2274, 271, '彭阳县', 3, 0),(2275, 272, '惠农县', 3, 0),(2276, 272, '大武口区', 3, 0),(2277, 272, '惠农区', 3, 0),(2278, 272, '陶乐县', 3, 0),(2279, 272, '平罗县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2280, 273, '利通区', 3, 0),(2281, 273, '中卫县', 3, 0),(2282, 273, '青铜峡市', 3, 0),(2283, 273, '中宁县', 3, 0),(2284, 273, '盐池县', 3, 0),(2285, 273, '同心县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2286, 274, '沙坡头区', 3, 0),(2287, 274, '海原县', 3, 0),(2288, 274, '中宁县', 3, 0),(2289, 275, '城中区', 3, 0),(2290, 275, '城东区', 3, 0),(2291, 275, '城西区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2292, 275, '城北区', 3, 0),(2293, 275, '湟中县', 3, 0),(2294, 275, '湟源县', 3, 0),(2295, 275, '大通', 3, 0),(2296, 276, '玛沁县', 3, 0),(2297, 276, '班玛县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2298, 276, '甘德县', 3, 0),(2299, 276, '达日县', 3, 0),(2300, 276, '久治县', 3, 0),(2301, 276, '玛多县', 3, 0),(2302, 277, '海晏县', 3, 0),(2303, 277, '祁连县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2304, 277, '刚察县', 3, 0),(2305, 277, '门源', 3, 0),(2306, 278, '平安县', 3, 0),(2307, 278, '乐都县', 3, 0),(2308, 278, '民和', 3, 0),(2309, 278, '互助', 3, 0),(2310, 278, '化隆', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2311, 278, '循化', 3, 0),(2312, 279, '共和县', 3, 0),(2313, 279, '同德县', 3, 0),(2314, 279, '贵德县', 3, 0),(2315, 279, '兴海县', 3, 0),(2316, 279, '贵南县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2317, 280, '德令哈市', 3, 0),(2318, 280, '格尔木市', 3, 0),(2319, 280, '乌兰县', 3, 0),(2320, 280, '都兰县', 3, 0),(2321, 280, '天峻县', 3, 0),(2322, 281, '同仁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2323, 281, '尖扎县', 3, 0),(2324, 281, '泽库县', 3, 0),(2325, 281, '河南蒙古族自治县', 3, 0),(2326, 282, '玉树县', 3, 0),(2327, 282, '杂多县', 3, 0),(2328, 282, '称多县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2329, 282, '治多县', 3, 0),(2330, 282, '囊谦县', 3, 0),(2331, 282, '曲麻莱县', 3, 0),(2332, 283, '市中区', 3, 0),(2333, 283, '历下区', 3, 0),(2334, 283, '天桥区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2335, 283, '槐荫区', 3, 0),(2336, 283, '历城区', 3, 0),(2337, 283, '长清区', 3, 0),(2338, 283, '章丘市', 3, 0),(2339, 283, '平阴县', 3, 0),(2340, 283, '济阳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2341, 283, '商河县', 3, 0),(2342, 284, '市南区', 3, 0),(2343, 284, '市北区', 3, 0),(2344, 284, '城阳区', 3, 0),(2345, 284, '四方区', 3, 0),(2346, 284, '李沧区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2347, 284, '黄岛区', 3, 0),(2348, 284, '崂山区', 3, 0),(2349, 284, '胶州市', 3, 0),(2350, 284, '即墨市', 3, 0),(2351, 284, '平度市', 3, 0),(2352, 284, '胶南市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2353, 284, '莱西市', 3, 0),(2354, 285, '滨城区', 3, 0),(2355, 285, '惠民县', 3, 0),(2356, 285, '阳信县', 3, 0),(2357, 285, '无棣县', 3, 0),(2358, 285, '沾化县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2359, 285, '博兴县', 3, 0),(2360, 285, '邹平县', 3, 0),(2361, 286, '德城区', 3, 0),(2362, 286, '陵县', 3, 0),(2363, 286, '乐陵市', 3, 0),(2364, 286, '禹城市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2365, 286, '宁津县', 3, 0),(2366, 286, '庆云县', 3, 0),(2367, 286, '临邑县', 3, 0),(2368, 286, '齐河县', 3, 0),(2369, 286, '平原县', 3, 0),(2370, 286, '夏津县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2371, 286, '武城县', 3, 0),(2372, 287, '东营区', 3, 0),(2373, 287, '河口区', 3, 0),(2374, 287, '垦利县', 3, 0),(2375, 287, '利津县', 3, 0),(2376, 287, '广饶县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2377, 288, '牡丹区', 3, 0),(2378, 288, '曹县', 3, 0),(2379, 288, '单县', 3, 0),(2380, 288, '成武县', 3, 0),(2381, 288, '巨野县', 3, 0),(2382, 288, '郓城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2383, 288, '鄄城县', 3, 0),(2384, 288, '定陶县', 3, 0),(2385, 288, '东明县', 3, 0),(2386, 289, '市中区', 3, 0),(2387, 289, '任城区', 3, 0),(2388, 289, '曲阜市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2389, 289, '兖州市', 3, 0),(2390, 289, '邹城市', 3, 0),(2391, 289, '微山县', 3, 0),(2392, 289, '鱼台县', 3, 0),(2393, 289, '金乡县', 3, 0),(2394, 289, '嘉祥县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2395, 289, '汶上县', 3, 0),(2396, 289, '泗水县', 3, 0),(2397, 289, '梁山县', 3, 0),(2398, 290, '莱城区', 3, 0),(2399, 290, '钢城区', 3, 0),(2400, 291, '东昌府区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2401, 291, '临清市', 3, 0),(2402, 291, '阳谷县', 3, 0),(2403, 291, '莘县', 3, 0),(2404, 291, '茌平县', 3, 0),(2405, 291, '东阿县', 3, 0),(2406, 291, '冠县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2407, 291, '高唐县', 3, 0),(2408, 292, '兰山区', 3, 0),(2409, 292, '罗庄区', 3, 0),(2410, 292, '河东区', 3, 0),(2411, 292, '沂南县', 3, 0),(2412, 292, '郯城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2413, 292, '沂水县', 3, 0),(2414, 292, '苍山县', 3, 0),(2415, 292, '费县', 3, 0),(2416, 292, '平邑县', 3, 0),(2417, 292, '莒南县', 3, 0),(2418, 292, '蒙阴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2419, 292, '临沭县', 3, 0),(2420, 293, '东港区', 3, 0),(2421, 293, '岚山区', 3, 0),(2422, 293, '五莲县', 3, 0),(2423, 293, '莒县', 3, 0),(2424, 294, '泰山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2425, 294, '岱岳区', 3, 0),(2426, 294, '新泰市', 3, 0),(2427, 294, '肥城市', 3, 0),(2428, 294, '宁阳县', 3, 0),(2429, 294, '东平县', 3, 0),(2430, 295, '荣成市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2431, 295, '乳山市', 3, 0),(2432, 295, '环翠区', 3, 0),(2433, 295, '文登市', 3, 0),(2434, 296, '潍城区', 3, 0),(2435, 296, '寒亭区', 3, 0),(2436, 296, '坊子区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2437, 296, '奎文区', 3, 0),(2438, 296, '青州市', 3, 0),(2439, 296, '诸城市', 3, 0),(2440, 296, '寿光市', 3, 0),(2441, 296, '安丘市', 3, 0),(2442, 296, '高密市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2443, 296, '昌邑市', 3, 0),(2444, 296, '临朐县', 3, 0),(2445, 296, '昌乐县', 3, 0),(2446, 297, '芝罘区', 3, 0),(2447, 297, '福山区', 3, 0),(2448, 297, '牟平区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2449, 297, '莱山区', 3, 0),(2450, 297, '开发区', 3, 0),(2451, 297, '龙口市', 3, 0),(2452, 297, '莱阳市', 3, 0),(2453, 297, '莱州市', 3, 0),(2454, 297, '蓬莱市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2455, 297, '招远市', 3, 0),(2456, 297, '栖霞市', 3, 0),(2457, 297, '海阳市', 3, 0),(2458, 297, '长岛县', 3, 0),(2459, 298, '市中区', 3, 0),(2460, 298, '山亭区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2461, 298, '峄城区', 3, 0),(2462, 298, '台儿庄区', 3, 0),(2463, 298, '薛城区', 3, 0),(2464, 298, '滕州市', 3, 0),(2465, 299, '张店区', 3, 0),(2466, 299, '临淄区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2467, 299, '淄川区', 3, 0),(2468, 299, '博山区', 3, 0),(2469, 299, '周村区', 3, 0),(2470, 299, '桓台县', 3, 0),(2471, 299, '高青县', 3, 0),(2472, 299, '沂源县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2473, 300, '杏花岭区', 3, 0),(2474, 300, '小店区', 3, 0),(2475, 300, '迎泽区', 3, 0),(2476, 300, '尖草坪区', 3, 0),(2477, 300, '万柏林区', 3, 0),(2478, 300, '晋源区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2479, 300, '高新开发区', 3, 0),(2480, 300, '民营经济开发区', 3, 0),(2481, 300, '经济技术开发区', 3, 0),(2482, 300, '清徐县', 3, 0),(2483, 300, '阳曲县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2484, 300, '娄烦县', 3, 0),(2485, 300, '古交市', 3, 0),(2486, 301, '城区', 3, 0),(2487, 301, '郊区', 3, 0),(2488, 301, '沁县', 3, 0),(2489, 301, '潞城市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2490, 301, '长治县', 3, 0),(2491, 301, '襄垣县', 3, 0),(2492, 301, '屯留县', 3, 0),(2493, 301, '平顺县', 3, 0),(2494, 301, '黎城县', 3, 0),(2495, 301, '壶关县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2496, 301, '长子县', 3, 0),(2497, 301, '武乡县', 3, 0),(2498, 301, '沁源县', 3, 0),(2499, 302, '城区', 3, 0),(2500, 302, '矿区', 3, 0),(2501, 302, '南郊区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2502, 302, '新荣区', 3, 0),(2503, 302, '阳高县', 3, 0),(2504, 302, '天镇县', 3, 0),(2505, 302, '广灵县', 3, 0),(2506, 302, '灵丘县', 3, 0),(2507, 302, '浑源县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2508, 302, '左云县', 3, 0),(2509, 302, '大同县', 3, 0),(2510, 303, '城区', 3, 0),(2511, 303, '高平市', 3, 0),(2512, 303, '沁水县', 3, 0),(2513, 303, '阳城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2514, 303, '陵川县', 3, 0),(2515, 303, '泽州县', 3, 0),(2516, 304, '榆次区', 3, 0),(2517, 304, '介休市', 3, 0),(2518, 304, '榆社县', 3, 0),(2519, 304, '左权县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2520, 304, '和顺县', 3, 0),(2521, 304, '昔阳县', 3, 0),(2522, 304, '寿阳县', 3, 0),(2523, 304, '太谷县', 3, 0),(2524, 304, '祁县', 3, 0),(2525, 304, '平遥县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2526, 304, '灵石县', 3, 0),(2527, 305, '尧都区', 3, 0),(2528, 305, '侯马市', 3, 0),(2529, 305, '霍州市', 3, 0),(2530, 305, '曲沃县', 3, 0),(2531, 305, '翼城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2532, 305, '襄汾县', 3, 0),(2533, 305, '洪洞县', 3, 0),(2534, 305, '吉县', 3, 0),(2535, 305, '安泽县', 3, 0),(2536, 305, '浮山县', 3, 0),(2537, 305, '古县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2538, 305, '乡宁县', 3, 0),(2539, 305, '大宁县', 3, 0),(2540, 305, '隰县', 3, 0),(2541, 305, '永和县', 3, 0),(2542, 305, '蒲县', 3, 0),(2543, 305, '汾西县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2544, 306, '离石市', 3, 0),(2545, 306, '离石区', 3, 0),(2546, 306, '孝义市', 3, 0),(2547, 306, '汾阳市', 3, 0),(2548, 306, '文水县', 3, 0),(2549, 306, '交城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2550, 306, '兴县', 3, 0),(2551, 306, '临县', 3, 0),(2552, 306, '柳林县', 3, 0),(2553, 306, '石楼县', 3, 0),(2554, 306, '岚县', 3, 0),(2555, 306, '方山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2556, 306, '中阳县', 3, 0),(2557, 306, '交口县', 3, 0),(2558, 307, '朔城区', 3, 0),(2559, 307, '平鲁区', 3, 0),(2560, 307, '山阴县', 3, 0),(2561, 307, '应县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2562, 307, '右玉县', 3, 0),(2563, 307, '怀仁县', 3, 0),(2564, 308, '忻府区', 3, 0),(2565, 308, '原平市', 3, 0),(2566, 308, '定襄县', 3, 0),(2567, 308, '五台县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2568, 308, '代县', 3, 0),(2569, 308, '繁峙县', 3, 0),(2570, 308, '宁武县', 3, 0),(2571, 308, '静乐县', 3, 0),(2572, 308, '神池县', 3, 0),(2573, 308, '五寨县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2574, 308, '岢岚县', 3, 0),(2575, 308, '河曲县', 3, 0),(2576, 308, '保德县', 3, 0),(2577, 308, '偏关县', 3, 0),(2578, 309, '城区', 3, 0),(2579, 309, '矿区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2580, 309, '郊区', 3, 0),(2581, 309, '平定县', 3, 0),(2582, 309, '盂县', 3, 0),(2583, 310, '盐湖区', 3, 0),(2584, 310, '永济市', 3, 0),(2585, 310, '河津市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2586, 310, '临猗县', 3, 0),(2587, 310, '万荣县', 3, 0),(2588, 310, '闻喜县', 3, 0),(2589, 310, '稷山县', 3, 0),(2590, 310, '新绛县', 3, 0),(2591, 310, '绛县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2592, 310, '垣曲县', 3, 0),(2593, 310, '夏县', 3, 0),(2594, 310, '平陆县', 3, 0),(2595, 310, '芮城县', 3, 0),(2596, 311, '莲湖区', 3, 0),(2597, 311, '新城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2598, 311, '碑林区', 3, 0),(2599, 311, '雁塔区', 3, 0),(2600, 311, '灞桥区', 3, 0),(2601, 311, '未央区', 3, 0),(2602, 311, '阎良区', 3, 0),(2603, 311, '临潼区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2604, 311, '长安区', 3, 0),(2605, 311, '蓝田县', 3, 0),(2606, 311, '周至县', 3, 0),(2607, 311, '户县', 3, 0),(2608, 311, '高陵县', 3, 0),(2609, 312, '汉滨区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2610, 312, '汉阴县', 3, 0),(2611, 312, '石泉县', 3, 0),(2612, 312, '宁陕县', 3, 0),(2613, 312, '紫阳县', 3, 0),(2614, 312, '岚皋县', 3, 0),(2615, 312, '平利县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2616, 312, '镇坪县', 3, 0),(2617, 312, '旬阳县', 3, 0),(2618, 312, '白河县', 3, 0),(2619, 313, '陈仓区', 3, 0),(2620, 313, '渭滨区', 3, 0),(2621, 313, '金台区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2622, 313, '凤翔县', 3, 0),(2623, 313, '岐山县', 3, 0),(2624, 313, '扶风县', 3, 0),(2625, 313, '眉县', 3, 0),(2626, 313, '陇县', 3, 0),(2627, 313, '千阳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2628, 313, '麟游县', 3, 0),(2629, 313, '凤县', 3, 0),(2630, 313, '太白县', 3, 0),(2631, 314, '汉台区', 3, 0),(2632, 314, '南郑县', 3, 0),(2633, 314, '城固县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2634, 314, '洋县', 3, 0),(2635, 314, '西乡县', 3, 0),(2636, 314, '勉县', 3, 0),(2637, 314, '宁强县', 3, 0),(2638, 314, '略阳县', 3, 0),(2639, 314, '镇巴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2640, 314, '留坝县', 3, 0),(2641, 314, '佛坪县', 3, 0),(2642, 315, '商州区', 3, 0),(2643, 315, '洛南县', 3, 0),(2644, 315, '丹凤县', 3, 0),(2645, 315, '商南县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2646, 315, '山阳县', 3, 0),(2647, 315, '镇安县', 3, 0),(2648, 315, '柞水县', 3, 0),(2649, 316, '耀州区', 3, 0),(2650, 316, '王益区', 3, 0),(2651, 316, '印台区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2652, 316, '宜君县', 3, 0),(2653, 317, '临渭区', 3, 0),(2654, 317, '韩城市', 3, 0),(2655, 317, '华阴市', 3, 0),(2656, 317, '华县', 3, 0),(2657, 317, '潼关县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2658, 317, '大荔县', 3, 0),(2659, 317, '合阳县', 3, 0),(2660, 317, '澄城县', 3, 0),(2661, 317, '蒲城县', 3, 0),(2662, 317, '白水县', 3, 0),(2663, 317, '富平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2664, 318, '秦都区', 3, 0),(2665, 318, '渭城区', 3, 0),(2666, 318, '杨陵区', 3, 0),(2667, 318, '兴平市', 3, 0),(2668, 318, '三原县', 3, 0),(2669, 318, '泾阳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2670, 318, '乾县', 3, 0),(2671, 318, '礼泉县', 3, 0),(2672, 318, '永寿县', 3, 0),(2673, 318, '彬县', 3, 0),(2674, 318, '长武县', 3, 0),(2675, 318, '旬邑县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2676, 318, '淳化县', 3, 0),(2677, 318, '武功县', 3, 0),(2678, 319, '吴起县', 3, 0),(2679, 319, '宝塔区', 3, 0),(2680, 319, '延长县', 3, 0),(2681, 319, '延川县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2682, 319, '子长县', 3, 0),(2683, 319, '安塞县', 3, 0),(2684, 319, '志丹县', 3, 0),(2685, 319, '甘泉县', 3, 0),(2686, 319, '富县', 3, 0),(2687, 319, '洛川县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2688, 319, '宜川县', 3, 0),(2689, 319, '黄龙县', 3, 0),(2690, 319, '黄陵县', 3, 0),(2691, 320, '榆阳区', 3, 0),(2692, 320, '神木县', 3, 0),(2693, 320, '府谷县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2694, 320, '横山县', 3, 0),(2695, 320, '靖边县', 3, 0),(2696, 320, '定边县', 3, 0),(2697, 320, '绥德县', 3, 0),(2698, 320, '米脂县', 3, 0),(2699, 320, '佳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2700, 320, '吴堡县', 3, 0),(2701, 320, '清涧县', 3, 0),(2702, 320, '子洲县', 3, 0),(2703, 321, '长宁区', 3, 0),(2704, 321, '闸北区', 3, 0),(2705, 321, '闵行区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2706, 321, '徐汇区', 3, 0),(2707, 321, '浦东新区', 3, 0),(2708, 321, '杨浦区', 3, 0),(2709, 321, '普陀区', 3, 0),(2710, 321, '静安区', 3, 0),(2711, 321, '卢湾区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2712, 321, '虹口区', 3, 0),(2713, 321, '黄浦区', 3, 0),(2714, 321, '南汇区', 3, 0),(2715, 321, '松江区', 3, 0),(2716, 321, '嘉定区', 3, 0),(2717, 321, '宝山区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2718, 321, '青浦区', 3, 0),(2719, 321, '金山区', 3, 0),(2720, 321, '奉贤区', 3, 0),(2721, 321, '崇明县', 3, 0),(2722, 322, '青羊区', 3, 0),(2723, 322, '锦江区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2724, 322, '金牛区', 3, 0),(2725, 322, '武侯区', 3, 0),(2726, 322, '成华区', 3, 0),(2727, 322, '龙泉驿区', 3, 0),(2728, 322, '青白江区', 3, 0),(2729, 322, '新都区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2730, 322, '温江区', 3, 0),(2731, 322, '高新区', 3, 0),(2732, 322, '高新西区', 3, 0),(2733, 322, '都江堰市', 3, 0),(2734, 322, '彭州市', 3, 0),(2735, 322, '邛崃市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2736, 322, '崇州市', 3, 0),(2737, 322, '金堂县', 3, 0),(2738, 322, '双流县', 3, 0),(2739, 322, '郫县', 3, 0),(2740, 322, '大邑县', 3, 0),(2741, 322, '蒲江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2742, 322, '新津县', 3, 0),(2743, 322, '都江堰市', 3, 0),(2744, 322, '彭州市', 3, 0),(2745, 322, '邛崃市', 3, 0),(2746, 322, '崇州市', 3, 0),(2747, 322, '金堂县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2748, 322, '双流县', 3, 0),(2749, 322, '郫县', 3, 0),(2750, 322, '大邑县', 3, 0),(2751, 322, '蒲江县', 3, 0),(2752, 322, '新津县', 3, 0),(2753, 323, '涪城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2754, 323, '游仙区', 3, 0),(2755, 323, '江油市', 3, 0),(2756, 323, '盐亭县', 3, 0),(2757, 323, '三台县', 3, 0),(2758, 323, '平武县', 3, 0),(2759, 323, '安县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2760, 323, '梓潼县', 3, 0),(2761, 323, '北川县', 3, 0),(2762, 324, '马尔康县', 3, 0),(2763, 324, '汶川县', 3, 0),(2764, 324, '理县', 3, 0),(2765, 324, '茂县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2766, 324, '松潘县', 3, 0),(2767, 324, '九寨沟县', 3, 0),(2768, 324, '金川县', 3, 0),(2769, 324, '小金县', 3, 0),(2770, 324, '黑水县', 3, 0),(2771, 324, '壤塘县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2772, 324, '阿坝县', 3, 0),(2773, 324, '若尔盖县', 3, 0),(2774, 324, '红原县', 3, 0),(2775, 325, '巴州区', 3, 0),(2776, 325, '通江县', 3, 0),(2777, 325, '南江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2778, 325, '平昌县', 3, 0),(2779, 326, '通川区', 3, 0),(2780, 326, '万源市', 3, 0),(2781, 326, '达县', 3, 0),(2782, 326, '宣汉县', 3, 0),(2783, 326, '开江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2784, 326, '大竹县', 3, 0),(2785, 326, '渠县', 3, 0),(2786, 327, '旌阳区', 3, 0),(2787, 327, '广汉市', 3, 0),(2788, 327, '什邡市', 3, 0),(2789, 327, '绵竹市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2790, 327, '罗江县', 3, 0),(2791, 327, '中江县', 3, 0),(2792, 328, '康定县', 3, 0),(2793, 328, '丹巴县', 3, 0),(2794, 328, '泸定县', 3, 0),(2795, 328, '炉霍县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2796, 328, '九龙县', 3, 0),(2797, 328, '甘孜县', 3, 0),(2798, 328, '雅江县', 3, 0),(2799, 328, '新龙县', 3, 0),(2800, 328, '道孚县', 3, 0),(2801, 328, '白玉县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2802, 328, '理塘县', 3, 0),(2803, 328, '德格县', 3, 0),(2804, 328, '乡城县', 3, 0),(2805, 328, '石渠县', 3, 0),(2806, 328, '稻城县', 3, 0),(2807, 328, '色达县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2808, 328, '巴塘县', 3, 0),(2809, 328, '得荣县', 3, 0),(2810, 329, '广安区', 3, 0),(2811, 329, '华蓥市', 3, 0),(2812, 329, '岳池县', 3, 0),(2813, 329, '武胜县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2814, 329, '邻水县', 3, 0),(2815, 330, '利州区', 3, 0),(2816, 330, '元坝区', 3, 0),(2817, 330, '朝天区', 3, 0),(2818, 330, '旺苍县', 3, 0),(2819, 330, '青川县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2820, 330, '剑阁县', 3, 0),(2821, 330, '苍溪县', 3, 0),(2822, 331, '峨眉山市', 3, 0),(2823, 331, '乐山市', 3, 0),(2824, 331, '犍为县', 3, 0),(2825, 331, '井研县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2826, 331, '夹江县', 3, 0),(2827, 331, '沐川县', 3, 0),(2828, 331, '峨边', 3, 0),(2829, 331, '马边', 3, 0),(2830, 332, '西昌市', 3, 0),(2831, 332, '盐源县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2832, 332, '德昌县', 3, 0),(2833, 332, '会理县', 3, 0),(2834, 332, '会东县', 3, 0),(2835, 332, '宁南县', 3, 0),(2836, 332, '普格县', 3, 0),(2837, 332, '布拖县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2838, 332, '金阳县', 3, 0),(2839, 332, '昭觉县', 3, 0),(2840, 332, '喜德县', 3, 0),(2841, 332, '冕宁县', 3, 0),(2842, 332, '越西县', 3, 0),(2843, 332, '甘洛县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2844, 332, '美姑县', 3, 0),(2845, 332, '雷波县', 3, 0),(2846, 332, '木里', 3, 0),(2847, 333, '东坡区', 3, 0),(2848, 333, '仁寿县', 3, 0),(2849, 333, '彭山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2850, 333, '洪雅县', 3, 0),(2851, 333, '丹棱县', 3, 0),(2852, 333, '青神县', 3, 0),(2853, 334, '阆中市', 3, 0),(2854, 334, '南部县', 3, 0),(2855, 334, '营山县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2856, 334, '蓬安县', 3, 0),(2857, 334, '仪陇县', 3, 0),(2858, 334, '顺庆区', 3, 0),(2859, 334, '高坪区', 3, 0),(2860, 334, '嘉陵区', 3, 0),(2861, 334, '西充县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2862, 335, '市中区', 3, 0),(2863, 335, '东兴区', 3, 0),(2864, 335, '威远县', 3, 0),(2865, 335, '资中县', 3, 0),(2866, 335, '隆昌县', 3, 0),(2867, 336, '东  区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2868, 336, '西  区', 3, 0),(2869, 336, '仁和区', 3, 0),(2870, 336, '米易县', 3, 0),(2871, 336, '盐边县', 3, 0),(2872, 337, '船山区', 3, 0),(2873, 337, '安居区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2874, 337, '蓬溪县', 3, 0),(2875, 337, '射洪县', 3, 0),(2876, 337, '大英县', 3, 0),(2877, 338, '雨城区', 3, 0),(2878, 338, '名山县', 3, 0),(2879, 338, '荥经县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2880, 338, '汉源县', 3, 0),(2881, 338, '石棉县', 3, 0),(2882, 338, '天全县', 3, 0),(2883, 338, '芦山县', 3, 0),(2884, 338, '宝兴县', 3, 0),(2885, 339, '翠屏区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2886, 339, '宜宾县', 3, 0),(2887, 339, '南溪县', 3, 0),(2888, 339, '江安县', 3, 0),(2889, 339, '长宁县', 3, 0),(2890, 339, '高县', 3, 0),(2891, 339, '珙县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2892, 339, '筠连县', 3, 0),(2893, 339, '兴文县', 3, 0),(2894, 339, '屏山县', 3, 0),(2895, 340, '雁江区', 3, 0),(2896, 340, '简阳市', 3, 0),(2897, 340, '安岳县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2898, 340, '乐至县', 3, 0),(2899, 341, '大安区', 3, 0),(2900, 341, '自流井区', 3, 0),(2901, 341, '贡井区', 3, 0),(2902, 341, '沿滩区', 3, 0),(2903, 341, '荣县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2904, 341, '富顺县', 3, 0),(2905, 342, '江阳区', 3, 0),(2906, 342, '纳溪区', 3, 0),(2907, 342, '龙马潭区', 3, 0),(2908, 342, '泸县', 3, 0),(2909, 342, '合江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2910, 342, '叙永县', 3, 0),(2911, 342, '古蔺县', 3, 0),(2912, 343, '和平区', 3, 0),(2913, 343, '河西区', 3, 0),(2914, 343, '南开区', 3, 0),(2915, 343, '河北区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2916, 343, '河东区', 3, 0),(2917, 343, '红桥区', 3, 0),(2918, 343, '东丽区', 3, 0),(2919, 343, '津南区', 3, 0),(2920, 343, '西青区', 3, 0),(2921, 343, '北辰区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2922, 343, '塘沽区', 3, 0),(2923, 343, '汉沽区', 3, 0),(2924, 343, '大港区', 3, 0),(2925, 343, '武清区', 3, 0),(2926, 343, '宝坻区', 3, 0),(2927, 343, '经济开发区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2928, 343, '宁河县', 3, 0),(2929, 343, '静海县', 3, 0),(2930, 343, '蓟县', 3, 0),(2931, 344, '城关区', 3, 0),(2932, 344, '林周县', 3, 0),(2933, 344, '当雄县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2934, 344, '尼木县', 3, 0),(2935, 344, '曲水县', 3, 0),(2936, 344, '堆龙德庆县', 3, 0),(2937, 344, '达孜县', 3, 0),(2938, 344, '墨竹工卡县', 3, 0),(2939, 345, '噶尔县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2940, 345, '普兰县', 3, 0),(2941, 345, '札达县', 3, 0),(2942, 345, '日土县', 3, 0),(2943, 345, '革吉县', 3, 0),(2944, 345, '改则县', 3, 0),(2945, 345, '措勤县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2946, 346, '昌都县', 3, 0),(2947, 346, '江达县', 3, 0),(2948, 346, '贡觉县', 3, 0),(2949, 346, '类乌齐县', 3, 0),(2950, 346, '丁青县', 3, 0),(2951, 346, '察雅县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2952, 346, '八宿县', 3, 0),(2953, 346, '左贡县', 3, 0),(2954, 346, '芒康县', 3, 0),(2955, 346, '洛隆县', 3, 0),(2956, 346, '边坝县', 3, 0),(2957, 347, '林芝县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2958, 347, '工布江达县', 3, 0),(2959, 347, '米林县', 3, 0),(2960, 347, '墨脱县', 3, 0),(2961, 347, '波密县', 3, 0),(2962, 347, '察隅县', 3, 0),(2963, 347, '朗县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2964, 348, '那曲县', 3, 0),(2965, 348, '嘉黎县', 3, 0),(2966, 348, '比如县', 3, 0),(2967, 348, '聂荣县', 3, 0),(2968, 348, '安多县', 3, 0),(2969, 348, '申扎县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2970, 348, '索县', 3, 0),(2971, 348, '班戈县', 3, 0),(2972, 348, '巴青县', 3, 0),(2973, 348, '尼玛县', 3, 0),(2974, 349, '日喀则市', 3, 0),(2975, 349, '南木林县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2976, 349, '江孜县', 3, 0),(2977, 349, '定日县', 3, 0),(2978, 349, '萨迦县', 3, 0),(2979, 349, '拉孜县', 3, 0),(2980, 349, '昂仁县', 3, 0),(2981, 349, '谢通门县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2982, 349, '白朗县', 3, 0),(2983, 349, '仁布县', 3, 0),(2984, 349, '康马县', 3, 0),(2985, 349, '定结县', 3, 0),(2986, 349, '仲巴县', 3, 0),(2987, 349, '亚东县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2988, 349, '吉隆县', 3, 0),(2989, 349, '聂拉木县', 3, 0),(2990, 349, '萨嘎县', 3, 0),(2991, 349, '岗巴县', 3, 0),(2992, 350, '乃东县', 3, 0),(2993, 350, '扎囊县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(2994, 350, '贡嘎县', 3, 0),(2995, 350, '桑日县', 3, 0),(2996, 350, '琼结县', 3, 0),(2997, 350, '曲松县', 3, 0),(2998, 350, '措美县', 3, 0),(2999, 350, '洛扎县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3000, 350, '加查县', 3, 0),(3001, 350, '隆子县', 3, 0),(3002, 350, '错那县', 3, 0),(3003, 350, '浪卡子县', 3, 0),(3004, 351, '天山区', 3, 0),(3005, 351, '沙依巴克区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3006, 351, '新市区', 3, 0),(3007, 351, '水磨沟区', 3, 0),(3008, 351, '头屯河区', 3, 0),(3009, 351, '达坂城区', 3, 0),(3010, 351, '米东区', 3, 0),(3011, 351, '乌鲁木齐县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3012, 352, '阿克苏市', 3, 0),(3013, 352, '温宿县', 3, 0),(3014, 352, '库车县', 3, 0),(3015, 352, '沙雅县', 3, 0),(3016, 352, '新和县', 3, 0),(3017, 352, '拜城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3018, 352, '乌什县', 3, 0),(3019, 352, '阿瓦提县', 3, 0),(3020, 352, '柯坪县', 3, 0),(3021, 353, '阿拉尔市', 3, 0),(3022, 354, '库尔勒市', 3, 0),(3023, 354, '轮台县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3024, 354, '尉犁县', 3, 0),(3025, 354, '若羌县', 3, 0),(3026, 354, '且末县', 3, 0),(3027, 354, '焉耆', 3, 0),(3028, 354, '和静县', 3, 0),(3029, 354, '和硕县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3030, 354, '博湖县', 3, 0),(3031, 355, '博乐市', 3, 0),(3032, 355, '精河县', 3, 0),(3033, 355, '温泉县', 3, 0),(3034, 356, '呼图壁县', 3, 0),(3035, 356, '米泉市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3036, 356, '昌吉市', 3, 0),(3037, 356, '阜康市', 3, 0),(3038, 356, '玛纳斯县', 3, 0),(3039, 356, '奇台县', 3, 0),(3040, 356, '吉木萨尔县', 3, 0),(3041, 356, '木垒', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3042, 357, '哈密市', 3, 0),(3043, 357, '伊吾县', 3, 0),(3044, 357, '巴里坤', 3, 0),(3045, 358, '和田市', 3, 0),(3046, 358, '和田县', 3, 0),(3047, 358, '墨玉县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3048, 358, '皮山县', 3, 0),(3049, 358, '洛浦县', 3, 0),(3050, 358, '策勒县', 3, 0),(3051, 358, '于田县', 3, 0),(3052, 358, '民丰县', 3, 0),(3053, 359, '喀什市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3054, 359, '疏附县', 3, 0),(3055, 359, '疏勒县', 3, 0),(3056, 359, '英吉沙县', 3, 0),(3057, 359, '泽普县', 3, 0),(3058, 359, '莎车县', 3, 0),(3059, 359, '叶城县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3060, 359, '麦盖提县', 3, 0),(3061, 359, '岳普湖县', 3, 0),(3062, 359, '伽师县', 3, 0),(3063, 359, '巴楚县', 3, 0),(3064, 359, '塔什库尔干', 3, 0),(3065, 360, '克拉玛依市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3066, 361, '阿图什市', 3, 0),(3067, 361, '阿克陶县', 3, 0),(3068, 361, '阿合奇县', 3, 0),(3069, 361, '乌恰县', 3, 0),(3070, 362, '石河子市', 3, 0),(3071, 363, '图木舒克市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3072, 364, '吐鲁番市', 3, 0),(3073, 364, '鄯善县', 3, 0),(3074, 364, '托克逊县', 3, 0),(3075, 365, '五家渠市', 3, 0),(3076, 366, '阿勒泰市', 3, 0),(3077, 366, '布克赛尔', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3078, 366, '伊宁市', 3, 0),(3079, 366, '布尔津县', 3, 0),(3080, 366, '奎屯市', 3, 0),(3081, 366, '乌苏市', 3, 0),(3082, 366, '额敏县', 3, 0),(3083, 366, '富蕴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3084, 366, '伊宁县', 3, 0),(3085, 366, '福海县', 3, 0),(3086, 366, '霍城县', 3, 0),(3087, 366, '沙湾县', 3, 0),(3088, 366, '巩留县', 3, 0),(3089, 366, '哈巴河县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3090, 366, '托里县', 3, 0),(3091, 366, '青河县', 3, 0),(3092, 366, '新源县', 3, 0),(3093, 366, '裕民县', 3, 0),(3094, 366, '和布克赛尔', 3, 0),(3095, 366, '吉木乃县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3096, 366, '昭苏县', 3, 0),(3097, 366, '特克斯县', 3, 0),(3098, 366, '尼勒克县', 3, 0),(3099, 366, '察布查尔', 3, 0),(3100, 367, '盘龙区', 3, 0),(3101, 367, '五华区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3102, 367, '官渡区', 3, 0),(3103, 367, '西山区', 3, 0),(3104, 367, '东川区', 3, 0),(3105, 367, '安宁市', 3, 0),(3106, 367, '呈贡县', 3, 0),(3107, 367, '晋宁县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3108, 367, '富民县', 3, 0),(3109, 367, '宜良县', 3, 0),(3110, 367, '嵩明县', 3, 0),(3111, 367, '石林县', 3, 0),(3112, 367, '禄劝', 3, 0),(3113, 367, '寻甸', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3114, 368, '兰坪', 3, 0),(3115, 368, '泸水县', 3, 0),(3116, 368, '福贡县', 3, 0),(3117, 368, '贡山', 3, 0),(3118, 369, '宁洱', 3, 0),(3119, 369, '思茅区', 3, 0),(3120, 369, '墨江', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3121, 369, '景东', 3, 0),(3122, 369, '景谷', 3, 0),(3123, 369, '镇沅', 3, 0),(3124, 369, '江城', 3, 0),(3125, 369, '孟连', 3, 0),(3126, 369, '澜沧', 3, 0),(3127, 369, '西盟', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3128, 370, '古城区', 3, 0),(3129, 370, '宁蒗', 3, 0),(3130, 370, '玉龙', 3, 0),(3131, 370, '永胜县', 3, 0),(3132, 370, '华坪县', 3, 0),(3133, 371, '隆阳区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3134, 371, '施甸县', 3, 0),(3135, 371, '腾冲县', 3, 0),(3136, 371, '龙陵县', 3, 0),(3137, 371, '昌宁县', 3, 0),(3138, 372, '楚雄市', 3, 0),(3139, 372, '双柏县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3140, 372, '牟定县', 3, 0),(3141, 372, '南华县', 3, 0),(3142, 372, '姚安县', 3, 0),(3143, 372, '大姚县', 3, 0),(3144, 372, '永仁县', 3, 0),(3145, 372, '元谋县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3146, 372, '武定县', 3, 0),(3147, 372, '禄丰县', 3, 0),(3148, 373, '大理市', 3, 0),(3149, 373, '祥云县', 3, 0),(3150, 373, '宾川县', 3, 0),(3151, 373, '弥渡县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3152, 373, '永平县', 3, 0),(3153, 373, '云龙县', 3, 0),(3154, 373, '洱源县', 3, 0),(3155, 373, '剑川县', 3, 0),(3156, 373, '鹤庆县', 3, 0),(3157, 373, '漾濞', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3158, 373, '南涧', 3, 0),(3159, 373, '巍山', 3, 0),(3160, 374, '潞西市', 3, 0),(3161, 374, '瑞丽市', 3, 0),(3162, 374, '梁河县', 3, 0),(3163, 374, '盈江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3164, 374, '陇川县', 3, 0),(3165, 375, '香格里拉县', 3, 0),(3166, 375, '德钦县', 3, 0),(3167, 375, '维西', 3, 0),(3168, 376, '泸西县', 3, 0),(3169, 376, '蒙自县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3170, 376, '个旧市', 3, 0),(3171, 376, '开远市', 3, 0),(3172, 376, '绿春县', 3, 0),(3173, 376, '建水县', 3, 0),(3174, 376, '石屏县', 3, 0),(3175, 376, '弥勒县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3176, 376, '元阳县', 3, 0),(3177, 376, '红河县', 3, 0),(3178, 376, '金平', 3, 0),(3179, 376, '河口', 3, 0),(3180, 376, '屏边', 3, 0),(3181, 377, '临翔区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3182, 377, '凤庆县', 3, 0),(3183, 377, '云县', 3, 0),(3184, 377, '永德县', 3, 0),(3185, 377, '镇康县', 3, 0),(3186, 377, '双江', 3, 0),(3187, 377, '耿马', 3, 0),(3188, 377, '沧源', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3189, 378, '麒麟区', 3, 0),(3190, 378, '宣威市', 3, 0),(3191, 378, '马龙县', 3, 0),(3192, 378, '陆良县', 3, 0),(3193, 378, '师宗县', 3, 0),(3194, 378, '罗平县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3195, 378, '富源县', 3, 0),(3196, 378, '会泽县', 3, 0),(3197, 378, '沾益县', 3, 0),(3198, 379, '文山县', 3, 0),(3199, 379, '砚山县', 3, 0),(3200, 379, '西畴县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3201, 379, '麻栗坡县', 3, 0),(3202, 379, '马关县', 3, 0),(3203, 379, '丘北县', 3, 0),(3204, 379, '广南县', 3, 0),(3205, 379, '富宁县', 3, 0),(3206, 380, '景洪市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3207, 380, '勐海县', 3, 0),(3208, 380, '勐腊县', 3, 0),(3209, 381, '红塔区', 3, 0),(3210, 381, '江川县', 3, 0),(3211, 381, '澄江县', 3, 0),(3212, 381, '通海县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3213, 381, '华宁县', 3, 0),(3214, 381, '易门县', 3, 0),(3215, 381, '峨山', 3, 0),(3216, 381, '新平', 3, 0),(3217, 381, '元江', 3, 0),(3218, 382, '昭阳区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3219, 382, '鲁甸县', 3, 0),(3220, 382, '巧家县', 3, 0),(3221, 382, '盐津县', 3, 0),(3222, 382, '大关县', 3, 0),(3223, 382, '永善县', 3, 0),(3224, 382, '绥江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3225, 382, '镇雄县', 3, 0),(3226, 382, '彝良县', 3, 0),(3227, 382, '威信县', 3, 0),(3228, 382, '水富县', 3, 0),(3229, 383, '西湖区', 3, 0),(3230, 383, '上城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3231, 383, '下城区', 3, 0),(3232, 383, '拱墅区', 3, 0),(3233, 383, '滨江区', 3, 0),(3234, 383, '江干区', 3, 0),(3235, 383, '萧山区', 3, 0),(3236, 383, '余杭区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3237, 383, '市郊', 3, 0),(3238, 383, '建德市', 3, 0),(3239, 383, '富阳市', 3, 0),(3240, 383, '临安市', 3, 0),(3241, 383, '桐庐县', 3, 0),(3242, 383, '淳安县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3243, 384, '吴兴区', 3, 0),(3244, 384, '南浔区', 3, 0),(3245, 384, '德清县', 3, 0),(3246, 384, '长兴县', 3, 0),(3247, 384, '安吉县', 3, 0),(3248, 385, '南湖区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3249, 385, '秀洲区', 3, 0),(3250, 385, '海宁市', 3, 0),(3251, 385, '嘉善县', 3, 0),(3252, 385, '平湖市', 3, 0),(3253, 385, '桐乡市', 3, 0),(3254, 385, '海盐县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3255, 386, '婺城区', 3, 0),(3256, 386, '金东区', 3, 0),(3257, 386, '兰溪市', 3, 0),(3258, 386, '市区', 3, 0),(3259, 386, '佛堂镇', 3, 0),(3260, 386, '上溪镇', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3261, 386, '义亭镇', 3, 0),(3262, 386, '大陈镇', 3, 0),(3263, 386, '苏溪镇', 3, 0),(3264, 386, '赤岸镇', 3, 0),(3265, 386, '东阳市', 3, 0),(3266, 386, '永康市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3267, 386, '武义县', 3, 0),(3268, 386, '浦江县', 3, 0),(3269, 386, '磐安县', 3, 0),(3270, 387, '莲都区', 3, 0),(3271, 387, '龙泉市', 3, 0),(3272, 387, '青田县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3273, 387, '缙云县', 3, 0),(3274, 387, '遂昌县', 3, 0),(3275, 387, '松阳县', 3, 0),(3276, 387, '云和县', 3, 0),(3277, 387, '庆元县', 3, 0),(3278, 387, '景宁', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3279, 388, '海曙区', 3, 0),(3280, 388, '江东区', 3, 0),(3281, 388, '江北区', 3, 0),(3282, 388, '镇海区', 3, 0),(3283, 388, '北仑区', 3, 0),(3284, 388, '鄞州区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3285, 388, '余姚市', 3, 0),(3286, 388, '慈溪市', 3, 0),(3287, 388, '奉化市', 3, 0),(3288, 388, '象山县', 3, 0),(3289, 388, '宁海县', 3, 0),(3290, 389, '越城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3291, 389, '上虞市', 3, 0),(3292, 389, '嵊州市', 3, 0),(3293, 389, '绍兴县', 3, 0),(3294, 389, '新昌县', 3, 0),(3295, 389, '诸暨市', 3, 0),(3296, 390, '椒江区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3297, 390, '黄岩区', 3, 0),(3298, 390, '路桥区', 3, 0),(3299, 390, '温岭市', 3, 0),(3300, 390, '临海市', 3, 0),(3301, 390, '玉环县', 3, 0),(3302, 390, '三门县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3303, 390, '天台县', 3, 0),(3304, 390, '仙居县', 3, 0),(3305, 391, '鹿城区', 3, 0),(3306, 391, '龙湾区', 3, 0),(3307, 391, '瓯海区', 3, 0),(3308, 391, '瑞安市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3309, 391, '乐清市', 3, 0),(3310, 391, '洞头县', 3, 0),(3311, 391, '永嘉县', 3, 0),(3312, 391, '平阳县', 3, 0),(3313, 391, '苍南县', 3, 0),(3314, 391, '文成县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3315, 391, '泰顺县', 3, 0),(3316, 392, '定海区', 3, 0),(3317, 392, '普陀区', 3, 0),(3318, 392, '岱山县', 3, 0),(3319, 392, '嵊泗县', 3, 0),(3320, 393, '衢州市', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3321, 393, '江山市', 3, 0),(3322, 393, '常山县', 3, 0),(3323, 393, '开化县', 3, 0),(3324, 393, '龙游县', 3, 0),(3325, 394, '合川区', 3, 0),(3326, 394, '江津区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3327, 394, '南川区', 3, 0),(3328, 394, '永川区', 3, 0),(3329, 394, '南岸区', 3, 0),(3330, 394, '渝北区', 3, 0),(3331, 394, '万盛区', 3, 0),(3332, 394, '大渡口区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3333, 394, '万州区', 3, 0),(3334, 394, '北碚区', 3, 0),(3335, 394, '沙坪坝区', 3, 0),(3336, 394, '巴南区', 3, 0),(3337, 394, '涪陵区', 3, 0),(3338, 394, '江北区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3339, 394, '九龙坡区', 3, 0),(3340, 394, '渝中区', 3, 0),(3341, 394, '黔江开发区', 3, 0),(3342, 394, '长寿区', 3, 0),(3343, 394, '双桥区', 3, 0),(3344, 394, '綦江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3345, 394, '潼南县', 3, 0),(3346, 394, '铜梁县', 3, 0),(3347, 394, '大足县', 3, 0),(3348, 394, '荣昌县', 3, 0),(3349, 394, '璧山县', 3, 0),(3350, 394, '垫江县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3351, 394, '武隆县', 3, 0),(3352, 394, '丰都县', 3, 0),(3353, 394, '城口县', 3, 0),(3354, 394, '梁平县', 3, 0),(3355, 394, '开县', 3, 0),(3356, 394, '巫溪县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3357, 394, '巫山县', 3, 0),(3358, 394, '奉节县', 3, 0),(3359, 394, '云阳县', 3, 0),(3360, 394, '忠县', 3, 0),(3361, 394, '石柱', 3, 0),(3362, 394, '彭水', 3, 0),(3363, 394, '酉阳', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3364, 394, '秀山', 3, 0),(3365, 395, '沙田区', 3, 0),(3366, 395, '东区', 3, 0),(3367, 395, '观塘区', 3, 0),(3368, 395, '黄大仙区', 3, 0),(3369, 395, '九龙城区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3370, 395, '屯门区', 3, 0),(3371, 395, '葵青区', 3, 0),(3372, 395, '元朗区', 3, 0),(3373, 395, '深水埗区', 3, 0),(3374, 395, '西贡区', 3, 0),(3375, 395, '大埔区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3376, 395, '湾仔区', 3, 0),(3377, 395, '油尖旺区', 3, 0),(3378, 395, '北区', 3, 0),(3379, 395, '南区', 3, 0),(3380, 395, '荃湾区', 3, 0),(3381, 395, '中西区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3382, 395, '离岛区', 3, 0),(3383, 396, '澳门', 3, 0),(3384, 397, '台北', 3, 0),(3385, 397, '高雄', 3, 0),(3386, 397, '基隆', 3, 0),(3387, 397, '台中', 3, 0),(3388, 397, '台南', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3389, 397, '新竹', 3, 0),(3390, 397, '嘉义', 3, 0),(3391, 397, '宜兰县', 3, 0),(3392, 397, '桃园县', 3, 0),(3393, 397, '苗栗县', 3, 0),(3394, 397, '彰化县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3395, 397, '南投县', 3, 0),(3396, 397, '云林县', 3, 0),(3397, 397, '屏东县', 3, 0),(3398, 397, '台东县', 3, 0),(3399, 397, '花莲县', 3, 0),(3400, 397, '澎湖县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3401, 3, '合肥', 2, 0),(3402, 3401, '庐阳区', 3, 0),(3403, 3401, '瑶海区', 3, 0),(3404, 3401, '蜀山区', 3, 0),(3405, 3401, '包河区', 3, 0),(3406, 3401, '长丰县', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES(3407, 3401, '肥东县', 3, 0),(3408, 3401, '肥西县', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_reg_extend_info`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_extend_info`(`Id` int(10) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL, `reg_field_id` int(10) unsigned NOT NULL, `content` text NOT NULL,PRIMARY KEY (`Id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_reg_extend_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_reg_fields`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_fields`(`id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `reg_field_name` varchar(60) NOT NULL, `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100', `display` tinyint(1) unsigned NOT NULL DEFAULT '1', `type` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ecs_reg_fields`
--

INSERT INTO `ecs_reg_fields` (`id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need`) VALUES(1, 'MSN', 0, 0, 1, 1),(2, 'QQ', 0, 0, 1, 1),(3, '办公电话', 0, 0, 1, 1),(4, '家庭电话', 0, 0, 1, 1),(5, '手机', 0, 0, 1, 1),(6, '密码找回问题', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_role`
--

CREATE TABLE IF NOT EXISTS `ecs_role`(`role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `role_name` varchar(60) NOT NULL DEFAULT '', `action_list` text NOT NULL, `role_describe` text,PRIMARY KEY (`role_id`),KEY `user_name` (`role_name`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ecs_role`
--

INSERT INTO `ecs_role` (`role_id`, `role_name`, `action_list`, `role_describe`) VALUES(1, '产品客服', 'goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto', '上传产品');
INSERT INTO `ecs_role` (`role_id`, `role_name`, `action_list`, `role_describe`) VALUES(2, '查单客服', 'feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view', '查单\r\n订货\r\n发货\r\n退款');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_searchengine`
--

CREATE TABLE IF NOT EXISTS `ecs_searchengine`(`date` date NOT NULL DEFAULT '0000-00-00', `searchengine` varchar(20) NOT NULL DEFAULT '', `count` mediumint(8) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`date`,`searchengine`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_searchengine`
--

INSERT INTO `ecs_searchengine` (`date`, `searchengine`, `count`) VALUES('2011-05-15', 'SOGOU', 1),('2011-05-21', 'YAHOO', 2),('2011-05-21', 'GOOGLE', 228),('2011-05-22', 'GOOGLE', 210),('2011-05-23', 'GOOGLE', 90),('2011-05-24', 'GOOGLE', 125),('2011-05-24', 'BAIDU', 2),('2011-12-28', 'GOOGLE', 1);
INSERT INTO `ecs_searchengine` (`date`, `searchengine`, `count`) VALUES('2011-12-31', 'GOOGLE', 1),('2012-01-01', 'GOOGLE', 4),('2012-01-02', 'GOOGLE', 2),('2012-01-04', 'GOOGLE', 2),('2012-01-06', 'GOOGLE', 1),('2012-01-07', 'GOOGLE', 1),('2012-01-09', 'GOOGLE', 1),('2012-01-11', 'GOOGLE', 1);
INSERT INTO `ecs_searchengine` (`date`, `searchengine`, `count`) VALUES('2012-01-12', 'GOOGLE', 3);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_sessions`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions`(`sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '', `expiry` int(10) unsigned NOT NULL DEFAULT '0', `userid` mediumint(8) unsigned NOT NULL DEFAULT '0', `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0', `ip` char(15) NOT NULL DEFAULT '', `user_name` varchar(60) NOT NULL, `user_rank` tinyint(3) NOT NULL, `discount` decimal(3,2) NOT NULL, `email` varchar(60) NOT NULL, `data` char(255) NOT NULL DEFAULT '',PRIMARY KEY (`sesskey`),KEY `expiry` (`expiry`)) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_sessions`
--

INSERT INTO `ecs_sessions` (`sesskey`, `expiry`, `userid`, `adminid`, `ip`, `user_name`, `user_rank`, `discount`, `email`, `data`) VALUES('39fa3b3ccf0f109bb1811a23a265e13d', 1326398310, 0, 0, '110.75.171.115', '0', 0, 1.00, '0', 'a:3:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;}');
INSERT INTO `ecs_sessions` (`sesskey`, `expiry`, `userid`, `adminid`, `ip`, `user_name`, `user_rank`, `discount`, `email`, `data`) VALUES('beb249a2f0c0f11b5524bfdd31f1554e', 1326398327, 0, 0, '110.75.171.113', '0', 0, 1.00, '0', 'a:3:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_sessions_data`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions_data`(`sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '', `expiry` int(10) unsigned NOT NULL DEFAULT '0', `data` longtext NOT NULL,PRIMARY KEY (`sesskey`),KEY `expiry` (`expiry`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_sessions_data`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_shipping`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping`(`shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `shipping_code` varchar(20) NOT NULL DEFAULT '', `shipping_name` varchar(120) NOT NULL DEFAULT '', `shipping_desc` varchar(255) NOT NULL DEFAULT '', `insure` varchar(10) NOT NULL DEFAULT '0', `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0', `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0', `shipping_print` text NOT NULL, `print_bg` varchar(255) DEFAULT NULL, `config_lable` text, `print_model` tinyint(1) DEFAULT '0',PRIMARY KEY (`shipping_id`),KEY `shipping_code` (`shipping_code`,`enabled`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ecs_shipping`
--

INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`) VALUES(2, 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', 1, 1, '', '', '', 0);
INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`) VALUES(5, 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', 0, 1, '', '', '', 0);
INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`) VALUES(8, 'ems', 'EMS 国内邮政特快专递', 'EMS 国内邮政特快专递描述内容', '0', 0, 1, '', '/images/receipt/dly_ems.jpg', 't_shop_name,网店-名称,236,32,182,161,b_shop_name||,||t_shop_tel,网店-联系电话,127,21,295,135,b_shop_tel||,||t_shop_address,网店-地址,296,68,124,190,b_shop_address||,||t_pigeon,√-对号,21,21,192,278,b_pigeon||,||t_customer_name,收件人-姓名,107,23,494,136,b_customer_name||,||t_customer_tel,收件人-电话,155,21,639,124,b_customer_tel||,||t_customer_mobel,收件人-手机,159,21,639,147,b_customer_mobel||,||t_customer_post,收件人-邮编,88,21,680,258,b_customer_post||,||t_year,年-当日日期,37,21,534,379,b_year||,||t_months,月-当日日期,29,21,592,379,b_months||,||t_day,日-当日日期,27,21,642,380,b_day||,||t_order_best_time,送货时间-订单,104,39,688,359,b_order_best_time||,||t_order_postscript,备注-订单,305,34,485,402,b_order_postscript||,||t_customer_address,收件人-详细地址,289,48,503,190,b_customer_address||,||', 2);
INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`) VALUES(7, 'fpd', '运费到付', '所购商品到达即付运费', '0', 0, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shipping_area`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping_area`(`shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `shipping_area_name` varchar(150) NOT NULL DEFAULT '', `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `configure` text NOT NULL,PRIMARY KEY (`shipping_area_id`),KEY `shipping_id` (`shipping_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ecs_shipping_area`
--

INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES(1, '申通', 5, 'a:5:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:2:"15";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:1:"5";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}i:4;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}');
INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES(4, '运费到付', 7, 'a:2:{i:0;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:5:"50000";}i:1;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";N;}}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shop_config`
--

CREATE TABLE IF NOT EXISTS `ecs_shop_config`(`id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0', `code` varchar(30) NOT NULL DEFAULT '', `type` varchar(10) NOT NULL DEFAULT '', `store_range` varchar(255) NOT NULL DEFAULT '', `store_dir` varchar(255) NOT NULL DEFAULT '', `value` text NOT NULL, `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',PRIMARY KEY (`id`),UNIQUE KEY `code` (`code`),KEY `parent_id` (`parent_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=904 ;

--
-- 转存表中的数据 `ecs_shop_config`
--

INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(1, 0, 'shop_info', 'group', '', '', '', 1),(2, 0, 'basic', 'group', '', '', '', 1),(3, 0, 'display', 'group', '', '', '', 1),(4, 0, 'shopping_flow', 'group', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(5, 0, 'smtp', 'group', '', '', '', 1),(6, 0, 'hidden', 'hidden', '', '', '', 1),(7, 0, 'goods', 'group', '', '', '', 1),(8, 0, 'sms', 'group', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(9, 0, 'wap', 'group', '', '', '', 1),(101, 1, 'shop_name', 'text', '', '', '私人名品消费专家', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(102, 1, 'shop_title', 'text', '', '', '高档化妆品 知名箱包 珠宝玉器 礼品', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(103, 1, 'shop_desc', 'text', '', '', '高档化妆品代购官网特约专卖100%保证正品', 1),(104, 1, 'shop_keywords', 'text', '', '', '高档化妆品代购', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(105, 1, 'shop_country', 'manual', '', '', '1', 1),(106, 1, 'shop_province', 'manual', '', '', '2', 1),(107, 1, 'shop_city', 'manual', '', '', '52', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(108, 1, 'shop_address', 'text', '', '', '', 1),(109, 1, 'qq', 'text', '', '', '', 1),(110, 1, 'ww', 'text', '', '', '', 1),(111, 1, 'skype', 'text', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(112, 1, 'ym', 'text', '', '', '', 1),(113, 1, 'msn', 'text', '', '', '', 1),(114, 1, 'service_email', 'text', '', '', '', 1),(115, 1, 'service_phone', 'text', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(116, 1, 'shop_closed', 'select', '0,1', '', '0', 1),(117, 1, 'close_comment', 'textarea', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(118, 1, 'shop_logo', 'file', '', '../themes/{$template}/images/', 'saestor://img/', 1),(119, 1, 'licensed', 'select', '0,1', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(120, 1, 'user_notice', 'textarea', '', '', '用户中心公告！', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(121, 1, 'shop_notice', 'textarea', '', '', '欢迎化妆品代购,我们的宗旨：诚信经营、服务客户！', 1),(122, 1, 'shop_reg_closed', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(201, 2, 'lang', 'manual', '', '', 'zh_cn', 1),(202, 2, 'icp_number', 'text', '', '', '', 1),(203, 2, 'icp_file', 'file', '', '../cert/', 'saestor://img/cert/evas_pro_s.gif', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(204, 2, 'watermark', 'file', '', '../images/', 'saestor://img/images/watermark.gif', 1),(205, 2, 'watermark_place', 'select', '0,1,2,3,4,5', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(206, 2, 'watermark_alpha', 'text', '', '', '65', 1),(207, 2, 'use_storage', 'select', '1,0', '', '1', 1),(208, 2, 'market_price_rate', 'text', '', '', '1.33', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(209, 2, 'rewrite', 'select', '0,1,2', '', '1', 1),(210, 2, 'integral_name', 'text', '', '', '金币', 1),(211, 2, 'integral_scale', 'text', '', '', '100', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(212, 2, 'integral_percent', 'text', '', '', '10', 1),(213, 2, 'sn_prefix', 'text', '', '', 'cp', 1),(214, 2, 'comment_check', 'select', '0,1', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(215, 2, 'no_picture', 'file', '', '../images/', '', 1),(218, 2, 'stats_code', 'textarea', '', '', '', 1),(219, 2, 'cache_time', 'text', '', '', '3600', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(220, 2, 'register_points', 'text', '', '', '20', 1),(221, 2, 'enable_gzip', 'select', '0,1', '', '0', 1),(222, 2, 'top10_time', 'select', '0,1,2,3,4', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(223, 2, 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(224, 2, 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '256', 1),(226, 2, 'cron_method', 'select', '0,1', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(227, 2, 'comment_factor', 'select', '0,1,2,3', '', '0', 1),(228, 2, 'enable_order_check', 'select', '0,1', '', '1', 1),(229, 2, 'default_storage', 'text', '', '', '100', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(230, 2, 'bgcolor', 'text', '', '', '#FFFFFF', 1),(231, 2, 'visit_stats', 'select', 'on,off', '', 'off', 1),(232, 2, 'send_mail_on', 'select', 'on,off', '', 'off', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(233, 2, 'auto_generate_gallery', 'select', '1,0', '', '1', 1),(234, 2, 'retain_original_img', 'select', '1,0', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(235, 2, 'member_email_validate', 'select', '1,0', '', '1', 1),(236, 2, 'message_board', 'select', '1,0', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(239, 2, 'certificate_id', 'hidden', '', '', '1223346230', 1),(240, 2, 'token', 'hidden', '', '', 'e36d75ff090163343df5ef02e2f98b93afd137c82930c6a9bef769916d4b0acd', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(241, 2, 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', 1),(301, 3, 'date_format', 'hidden', '', '', 'Y-m-d', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(302, 3, 'time_format', 'text', '', '', 'Y-m-d H:i:s', 1),(303, 3, 'currency_format', 'text', '', '', '%s元', 1),(304, 3, 'thumb_width', 'text', '', '', '200', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(305, 3, 'thumb_height', 'text', '', '', '180', 1),(306, 3, 'image_width', 'text', '', '', '480', 1),(307, 3, 'image_height', 'text', '', '', '320', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(312, 3, 'top_number', 'text', '', '', '10', 1),(313, 3, 'history_number', 'text', '', '', '5', 1),(314, 3, 'comments_number', 'text', '', '', '5', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(315, 3, 'bought_goods', 'text', '', '', '5', 1),(316, 3, 'article_number', 'text', '', '', '5', 1),(317, 3, 'goods_name_length', 'text', '', '', '15', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(318, 3, 'price_format', 'select', '0,1,2,3,4,5', '', '5', 1),(319, 3, 'page_size', 'text', '', '', '18', 1),(320, 3, 'sort_order_type', 'select', '0,1,2', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(321, 3, 'sort_order_method', 'select', '0,1', '', '0', 1),(322, 3, 'show_order_type', 'select', '0,1,2', '', '1', 1),(323, 3, 'attr_related_number', 'text', '', '', '5', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(324, 3, 'goods_gallery_number', 'text', '', '', '8', 1),(325, 3, 'article_title_length', 'text', '', '', '25', 1),(326, 3, 'name_of_region_1', 'text', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(327, 3, 'name_of_region_2', 'text', '', '', '省', 1),(328, 3, 'name_of_region_3', 'text', '', '', '市', 1),(329, 3, 'name_of_region_4', 'text', '', '', '区', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(330, 3, 'search_keywords', 'text', '', '', '化妆品', 0),(332, 3, 'related_goods_number', 'text', '', '', '5', 1),(333, 3, 'help_open', 'select', '0,1', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(334, 3, 'article_page_size', 'text', '', '', '10', 1),(335, 3, 'page_style', 'select', '0,1', '', '1', 1),(336, 3, 'recommend_order', 'select', '0,1', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(337, 3, 'index_ad', 'hidden', '', '', 'sys', 1),(401, 4, 'can_invoice', 'select', '1,0', '', '0', 1),(402, 4, 'use_integral', 'select', '1,0', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(403, 4, 'use_bonus', 'select', '1,0', '', '0', 1),(404, 4, 'use_surplus', 'select', '1,0', '', '1', 1),(405, 4, 'use_how_oos', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(406, 4, 'send_confirm_email', 'select', '1,0', '', '1', 1),(407, 4, 'send_ship_email', 'select', '1,0', '', '0', 1),(408, 4, 'send_cancel_email', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(409, 4, 'send_invalid_email', 'select', '1,0', '', '0', 1),(410, 4, 'order_pay_note', 'select', '1,0', '', '1', 1),(411, 4, 'order_unpay_note', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(412, 4, 'order_ship_note', 'select', '1,0', '', '1', 1),(413, 4, 'order_receive_note', 'select', '1,0', '', '0', 1),(414, 4, 'order_unship_note', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(415, 4, 'order_return_note', 'select', '1,0', '', '0', 1),(416, 4, 'order_invalid_note', 'select', '1,0', '', '1', 1),(417, 4, 'order_cancel_note', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(418, 4, 'invoice_content', 'textarea', '', '', '', 1),(419, 4, 'anonymous_buy', 'select', '1,0', '', '1', 1),(420, 4, 'min_goods_amount', 'text', '', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(421, 4, 'one_step_buy', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(422, 4, 'invoice_type', 'manual', '', '', 'a:2:{s:4:"type";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:0:"";}s:4:"rate";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(423, 4, 'stock_dec_time', 'select', '1,0', '', '0', 1),(424, 4, 'cart_confirm', 'options', '1,2,3,4', '', '1', 0),(425, 4, 'send_service_email', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(426, 4, 'show_goods_in_cart', 'select', '1,2,3', '', '3', 1),(427, 4, 'show_attr_in_cart', 'select', '1,0', '', '1', 1),(501, 5, 'smtp_host', 'text', '', '', 'localhost', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(502, 5, 'smtp_port', 'text', '', '', '25', 1),(503, 5, 'smtp_user', 'text', '', '', '', 1),(504, 5, 'smtp_pass', 'password', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(505, 5, 'smtp_mail', 'text', '', '', '', 1),(506, 5, 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', 1),(507, 5, 'mail_service', 'select', '0,1', '', '0', 0);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(508, 5, 'smtp_ssl', 'select', '0,1', '', '0', 0),(601, 6, 'integrate_code', 'hidden', '', '', 'ecshop', 1),(602, 6, 'integrate_config', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(603, 6, 'hash_code', 'hidden', '', '', '31693422540744c0a6b6da635b7a5a93', 1),(604, 6, 'template', 'hidden', '', '', 'sae_themes', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(605, 6, 'install_date', 'hidden', '', '', '1284206287', 1),(606, 6, 'ecs_version', 'hidden', '', '', 'v2.7.2', 1),(607, 6, 'sms_user_name', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(608, 6, 'sms_password', 'hidden', '', '', '', 1),(609, 6, 'sms_auth_str', 'hidden', '', '', '', 1),(610, 6, 'sms_domain', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(611, 6, 'sms_count', 'hidden', '', '', '', 1),(612, 6, 'sms_total_money', 'hidden', '', '', '', 1),(613, 6, 'sms_balance', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(614, 6, 'sms_last_request', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(616, 6, 'affiliate', 'hidden', '', '', 'a:3:{s:6:"config";a:7:{s:6:"expire";d:24;s:11:"expire_unit";s:4:"hour";s:11:"separate_by";i:0;s:15:"level_point_all";s:2:"5%";s:15:"level_money_all";s:2:"1%";s:18:"level_register_all";i:2;s:17:"level_register_up";i:60;}s:4:"item";a:4:{i:0;a:2:{s:11:"level_point";s:3:"60%";s:11:"level_money";s:3:"60%";}i:1;a:2:{s:11:"level_point";s:3:"30%";s:11:"level_money";s:3:"30%";}i:2;a:2:{s:11:"level_point";s:2:"7%";s:11:"level_money";s:2:"7%";}i:3;a:2:{s:11:"level_point";s:2:"3%";s:11:"level_money";s:2:"3%";}}s:2:"on";i:1;}', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(617, 6, 'captcha', 'hidden', '', '', '4', 1),(618, 6, 'captcha_width', 'hidden', '', '', '100', 1),(619, 6, 'captcha_height', 'hidden', '', '', '20', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(620, 6, 'sitemap', 'hidden', '', '', 'a:6:{s:19:"homepage_changefreq";s:5:"daily";s:17:"homepage_priority";s:3:"0.9";s:19:"category_changefreq";s:5:"daily";s:17:"category_priority";s:3:"0.8";s:18:"content_changefreq";s:6:"weekly";s:16:"content_priority";s:3:"0.7";}', 0);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(621, 6, 'points_rule', 'hidden', '', '', '', 0),(622, 6, 'flash_theme', 'hidden', '', '', '52asics', 1),(623, 6, 'stylename', 'hidden', '', '', '', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(701, 7, 'show_goodssn', 'select', '1,0', '', '1', 1),(702, 7, 'show_brand', 'select', '1,0', '', '1', 1),(703, 7, 'show_goodsweight', 'select', '1,0', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(704, 7, 'show_goodsnumber', 'select', '1,0', '', '0', 1),(705, 7, 'show_addtime', 'select', '1,0', '', '0', 1),(706, 7, 'goodsattr_style', 'select', '1,0', '', '1', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(707, 7, 'show_marketprice', 'select', '1,0', '', '0', 1),(801, 8, 'sms_shop_mobile', 'text', '', '', '', 1),(802, 8, 'sms_order_placed', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(803, 8, 'sms_order_payed', 'select', '1,0', '', '0', 1),(804, 8, 'sms_order_shipped', 'select', '1,0', '', '0', 1),(901, 9, 'wap_config', 'select', '1,0', '', '0', 1);
INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES(902, 9, 'wap_logo', 'file', '', '../images/', 'saestor://img/images/wap_logo.gif', 1),(903, 2, 'message_check', 'select', '1,0', '', '1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_snatch_log`
--

CREATE TABLE IF NOT EXISTS `ecs_snatch_log`(`log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00', `bid_time` int(10) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`log_id`),KEY `snatch_id` (`snatch_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_snatch_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_stats`
--

CREATE TABLE IF NOT EXISTS `ecs_stats`(`access_time` int(10) unsigned NOT NULL DEFAULT '0', `ip_address` varchar(15) NOT NULL DEFAULT '', `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1', `browser` varchar(60) NOT NULL DEFAULT '', `system` varchar(20) NOT NULL DEFAULT '', `language` varchar(20) NOT NULL DEFAULT '', `area` varchar(30) NOT NULL DEFAULT '', `referer_domain` varchar(100) NOT NULL DEFAULT '', `referer_path` varchar(200) NOT NULL DEFAULT '', `access_url` varchar(255) NOT NULL DEFAULT '',KEY `access_time` (`access_time`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_stats`
--

INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305260549, '222.77.233.44', 7, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', 'http://www.vsvm.net', '/category.php?id=3', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305260575, '202.91.251.247', 1, 'Unknow browser', 'Unknown', '', '浙江省杭州市', '', '', '/certi.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305261347, '222.77.233.44', 4, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305261355, '222.77.233.44', 5, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305262859, '120.34.35.242', 3, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305262897, '110.75.167.221', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305262917, '110.75.167.221', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305264564, '222.77.233.44', 8, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', 'http://www.vsvm.net', '/admin/index.php?act=top', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305265716, '59.60.115.113', 2, 'FireFox 4.0.1', 'Windows XP', 'zh-cn,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305267329, '222.77.233.44', 6, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '福建省莆田市', 'http://www.vsvm.net', '/admin/article.php?act=list&uselastfilter=1', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305269119, '222.77.233.44', 9, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270168, '59.60.115.113', 3, 'FireFox 4.0.1', 'Windows XP', 'zh-cn,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270217, '117.26.225.14', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '福建省莆田市', 'http://www42.53kf.com', '/webCompany_bg.php?arg=pjizhiteam_4363525&sessid=4dvcd8kgtcvk53cthom0jb8tc4&default_lang=cn&system=vista&sys_ver=107&is_saas=', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270241, '183.60.52.158', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[未知IP0801]', 'http://vsvm.net', '/goods-32.html', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270330, '112.95.240.189', 1, 'Internet Explorer 6.0', 'Windows 2000', 'en-us,en,zh-cn', 'IANA', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270425, '59.58.187.148', 1, 'FireFox 4.0.1', 'Windows NT', 'zh-cn,zh', '福建省莆田市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305270426, '117.26.225.14', 1, 'Safari 534.20', 'Windows NT', 'zh-CN,zh', '福建省莆田市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305271161, '113.108.81.48', 1, '', 'Unknown', '', 'IANA', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305271228, '113.108.81.48', 1, '', 'Unknown', '', 'IANA', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305272193, '59.58.187.148', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-cn', '福建省莆田市', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305272591, '222.77.237.86', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305272671, '222.77.237.86', 1, 'Safari 534.16', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305272716, '59.58.187.148', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305272953, '59.58.187.148', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305274439, '59.58.187.148', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', 'http://www.51.la', '/report/1_main.asp?id=4767506', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305274441, '59.58.187.148', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', 'http://www.51.la', '/report/1_main.asp?id=4767506', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305274457, '119.147.6.94', 1, 'Internet Explorer 6.0', 'Windows 2000', 'en-us,en,zh-cn', 'APNIC', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305274708, '183.62.126.7', 1, 'Internet Explorer 6.0', 'Windows 2000', 'en-us,en,zh-cn', '[未知IP0801]', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305276144, '59.58.187.148', 2, 'FireFox 3.5.0', 'Windows XP', 'zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305276736, '58.60.12.58', 1, 'Internet Explorer 6.0', 'Windows 2000', 'en-us,en,zh-cn', '广东省深圳市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305296464, '174.120.6.98', 1, '', 'Unknown', '', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305296466, '174.120.6.98', 1, '', 'Unknown', '', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305296471, '174.120.6.98', 1, '', 'Unknown', '', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305296473, '174.120.6.98', 1, '', 'Unknown', '', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305307664, '222.77.235.51', 10, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305309846, '119.63.196.37', 1, 'Unknow browser', 'Unknown', 'tr-TR', 'APNIC', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305311230, '222.77.235.51', 11, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305326431, '117.26.226.177', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305334779, '175.44.15.19', 1, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305344724, '59.60.116.239', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305344724, '59.60.116.239', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305346800, '117.26.226.177', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305350229, '222.77.235.51', 12, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305350230, '222.77.235.51', 12, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305350238, '120.34.35.242', 4, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305350273, '110.75.167.220', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305351289, '222.77.235.51', 13, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305352168, '110.75.162.238', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305352348, '123.156.45.57', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '浙江省', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305354523, '59.60.116.116', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305354523, '59.60.116.116', 1, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305355228, '222.77.235.51', 14, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', 'http://www.vsvm.net', '/', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305406298, '59.58.189.242', 15, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305412733, '220.161.115.138', 2, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305412737, '183.60.52.157', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[未知IP0801]', 'http://vsvm.net', '/index.php', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305412749, '119.126.248.140', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', 'APNIC', 'http://www.51freewill.com', '/', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305417546, '59.58.189.242', 16, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', 'http://www.vsvm.net', '/index.php', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305420770, '59.60.118.58', 4, 'FireFox 4.0.1', 'Windows XP', 'zh-cn,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305421599, '120.34.35.242', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305432323, '59.58.189.242', 17, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305437016, '222.77.232.92', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305439059, '85.93.203.241', 1, 'Unknow browser', 'Unknown', '', '卢森堡', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305447566, '59.58.189.242', 18, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305447601, '59.58.189.242', 7, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305458109, '125.89.75.100', 1, 'Internet Explorer 6.0', 'Windows XP', '', '广东省', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305488008, '222.77.239.95', 19, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305497022, '38.99.82.207', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305507923, '222.77.239.95', 20, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305507949, '183.22.238.105', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '[未知IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305507958, '38.99.82.207', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305507972, '110.75.167.221', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305509568, '222.77.239.95', 8, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305510670, '222.77.239.95', 21, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305510670, '222.77.239.95', 21, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305517724, '222.77.239.95', 22, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305523668, '38.99.82.200', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305531894, '222.77.239.95', 23, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305531895, '222.77.239.95', 23, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305537539, '222.77.239.95', 1, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305537539, '222.77.239.95', 1, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305553728, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554167, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554240, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554256, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554300, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554321, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554330, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554373, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554378, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554899, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305554936, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555235, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/flow.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555521, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555565, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555573, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555865, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305555978, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556225, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556288, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556325, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556340, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556348, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556419, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556573, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305556640, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557024, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557024, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557062, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557120, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557185, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557315, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557321, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557456, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557673, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557676, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557679, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557681, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305557713, '38.99.82.193', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/article_cat.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305564083, '119.63.196.8', 1, 'Unknow browser', 'Unknown', 'tr-TR', 'APNIC', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305575567, '117.26.225.169', 3, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305576136, '117.26.224.93', 4, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', 'http://vsvm.net', '/category-16-b0.html', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305578016, '117.26.224.93', 5, 'Safari 534.24', 'Windows NT', 'en-US,zh-CN', '福建省莆田市', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305588261, '38.99.82.201', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305588450, '38.99.82.201', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305588777, '38.99.82.201', 1, 'Unknow browser', 'Linux', '', '美国', '', '', '/size.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305592262, '59.60.119.178', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', '福建省莆田市', 'http://www.vsvm.net', '/ugg2home/index.php?act=top', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES(1305593206, '59.60.119.114', 2, 'Safari 534.10', 'Windows XP', 'zh-CN,zh', '福建省莆田市', '', '', '/index.php');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_suppliers`
--

CREATE TABLE IF NOT EXISTS `ecs_suppliers`(`suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `suppliers_name` varchar(255) DEFAULT NULL, `suppliers_desc` mediumtext, `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',PRIMARY KEY (`suppliers_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_suppliers`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_tag`
--

CREATE TABLE IF NOT EXISTS `ecs_tag`(`tag_id` mediumint(8) NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `tag_words` varchar(255) NOT NULL DEFAULT '',PRIMARY KEY (`tag_id`),KEY `user_id` (`user_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_template`
--

CREATE TABLE IF NOT EXISTS `ecs_template`(`filename` varchar(30) NOT NULL DEFAULT '', `region` varchar(40) NOT NULL DEFAULT '', `library` varchar(40) NOT NULL DEFAULT '', `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0', `id` smallint(5) unsigned NOT NULL DEFAULT '0', `number` tinyint(1) unsigned NOT NULL DEFAULT '5', `type` tinyint(1) unsigned NOT NULL DEFAULT '0', `theme` varchar(60) NOT NULL DEFAULT '', `remarks` varchar(30) NOT NULL DEFAULT '',KEY `filename` (`filename`,`region`),KEY `theme` (`theme`),KEY `remarks` (`remarks`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_template`
--

INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/vote_list.lbi', 8, 0, 0, 0, 'default', ''),('index', '左边区域', '/library/email_list.lbi', 9, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/order_query.lbi', 6, 0, 0, 0, 'default', ''),('index', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/promotion_info.lbi', 3, 0, 0, 0, 'default', ''),('index', '左边区域', '/library/auction.lbi', 4, 0, 3, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/group_buy.lbi', 5, 0, 3, 0, 'default', ''),('index', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '右边主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', ''),('index', '右边主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '右边主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', ''),('index', '左边区域', '/library/invoice_query.lbi', 7, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/top10.lbi', 2, 0, 0, 0, 'default', ''),('index', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '', '/library/brands.lbi', 0, 0, 11, 0, 'default', ''),('category', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '右边区域', '/library/recommend_best.lbi', 0, 0, 5, 0, 'default', ''),('category', '右边区域', '/library/goods_list.lbi', 1, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '右边区域', '/library/pages.lbi', 2, 0, 0, 0, 'default', ''),('category', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '左边区域', '/library/price_grade.lbi', 3, 0, 0, 0, 'default', ''),('category', '左边区域', '/library/filter_attr.lbi', 2, 0, 0, 0, 'default', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/auction.lbi', 4, 0, 3, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/promotion_info.lbi', 3, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/order_query.lbi', 6, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/email_list.lbi', 9, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/vote_list.lbi', 8, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/group_buy.lbi', 5, 0, 3, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '右边主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '右边主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '右边主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/invoice_query.lbi', 7, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/top10.lbi', 2, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '', '/library/brands.lbi', 0, 0, 11, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '右边区域', '/library/recommend_best.lbi', 0, 0, 5, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '右边区域', '/library/goods_list.lbi', 1, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '右边区域', '/library/pages.lbi', 2, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '左边区域', '/library/price_grade.lbi', 3, 0, 0, 0, 'default', '2011-12-01 14:42:43');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('category', '左边区域', '/library/filter_attr.lbi', 2, 0, 0, 0, 'default', '2011-12-01 14:42:43'),('index', '', '/library/group_buy.lbi', 0, 0, 3, 0, 'sae_themes', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'sae_themes', ''),('index', '', '/library/recommend_hot.lbi', 0, 0, 3, 0, 'sae_themes', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '分类产品', '/library/recommend_new.lbi', 0, 0, 12, 0, 'sae_themes', ''),('index', '', '/library/recommend_best.lbi', 0, 0, 3, 0, 'sae_themes', '');
INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES('index', '', '/library/auction.lbi', 0, 0, 3, 0, 'sae_themes', ''),('index', '', '/library/brands.lbi', 0, 0, 3, 0, 'sae_themes', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_topic`
--

CREATE TABLE IF NOT EXISTS `ecs_topic`(`topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT, `title` varchar(255) NOT NULL DEFAULT '''''', `intro` text NOT NULL, `start_time` int(11) NOT NULL DEFAULT '0', `end_time` int(10) NOT NULL DEFAULT '0', `data` text NOT NULL, `template` varchar(255) NOT NULL DEFAULT '''''', `css` text NOT NULL, `topic_img` varchar(255) DEFAULT NULL, `title_pic` varchar(255) DEFAULT NULL, `base_style` char(6) DEFAULT NULL, `htmls` mediumtext, `keywords` varchar(255) DEFAULT NULL, `description` varchar(255) DEFAULT NULL,KEY `topic_id` (`topic_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_topic`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_users`
--

CREATE TABLE IF NOT EXISTS `ecs_users`(`user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `email` varchar(60) NOT NULL DEFAULT '', `user_name` varchar(60) NOT NULL DEFAULT '', `password` varchar(32) NOT NULL DEFAULT '', `question` varchar(255) NOT NULL DEFAULT '', `answer` varchar(255) NOT NULL DEFAULT '', `sex` tinyint(1) unsigned NOT NULL DEFAULT '0', `birthday` date NOT NULL DEFAULT '0000-00-00', `user_money` decimal(10,2) NOT NULL DEFAULT '0.00', `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00', `pay_points` int(10) unsigned NOT NULL DEFAULT '0', `rank_points` int(10) unsigned NOT NULL DEFAULT '0', `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `reg_time` int(10) unsigned NOT NULL DEFAULT '0', `last_login` int(11) unsigned NOT NULL DEFAULT '0', `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', `last_ip` varchar(15) NOT NULL DEFAULT '', `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0', `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0', `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0', `salt` varchar(10) NOT NULL DEFAULT '0', `parent_id` mediumint(9) NOT NULL DEFAULT '0', `flag` tinyint(3) unsigned NOT NULL DEFAULT '0', `alias` varchar(60) NOT NULL, `msn` varchar(60) NOT NULL, `qq` varchar(20) NOT NULL, `office_phone` varchar(20) NOT NULL, `home_phone` varchar(20) NOT NULL, `mobile_phone` varchar(20) NOT NULL, `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0', `credit_line` decimal(10,2) unsigned NOT NULL, `passwd_question` varchar(50) DEFAULT NULL, `passwd_answer` varchar(255) DEFAULT NULL,PRIMARY KEY (`user_id`),UNIQUE KEY `user_name` (`user_name`),KEY `email` (`email`),KEY `parent_id` (`parent_id`),KEY `flag` (`flag`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ecs_users`
--

INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(1, 'ecshop@ecshop.com', 'ecshop', '554fcae493e564ee0dc75bdf2ebf94ca', '', '', 0, '1960-03-03', 0.00, 0.00, 98388, 15390, 1, 0, 1245048540, '0000-00-00 00:00:00', '0.0.0.0', 11, 0, 0, '0', 0, 0, '', '', '', '', '', '', 0, 0.00, '', '');
INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(2, 'vip@ecshop.com', 'vip', '232059cb5361a9336ccf1b8c2ba7657a', '', '', 0, '1949-01-01', 0.00, 0.00, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, '0', 0, 0, '', '', '', '', '', '', 0, 0.00, '', '');
INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(3, 'text@ecshop.com', 'text', '1cb251ec0d568de6a929b520c4aed8d1', '', '', 0, '1949-01-01', 0.00, 0.00, 0, 0, 2, 0, 1242973574, '0000-00-00 00:00:00', '0.0.0.0', 2, 0, 0, '0', 0, 0, '', '', '', '', '', '', 0, 0.00, '', '');
INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(5, 'zuanshi@ecshop.com', 'zuanshi', '815a71fb334412e7ba4595741c5a111d', '', '', 0, '1949-01-01', 0.00, 10000.00, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', 0, 3, 0, '0', 0, 0, '', '', '', '', '', '', 0, 0.00, '', '');
INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(6, 'user@sina.com', 'user', 'eb99717fa07728f35499635b9eea188b', '', '', 0, '0000-00-00', 0.00, 0.00, 0, 0, 0, 1304934845, 1305080407, '0000-00-00 00:00:00', '127.0.0.1', 11, 0, 0, '0', 0, 0, '', '', '', '', '', '', 0, 0.00, '', '');
INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`) VALUES(7, 'dsbk@qq.com', 'dsbk', '37f993393f7b816690df5c43002f9306', '', '', 0, '0000-00-00', 0.00, 0.00, 0, 0, 0, 1305272051, 1305272204, '0000-00-00 00:00:00', '59.58.187.148', 2, 0, 0, '0', 0, 0, '', 'dsbk@qq.com', '111111', '11111', '111111', '111111', 0, 0.00, 'friend_birthday', '111111');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_account`
--

CREATE TABLE IF NOT EXISTS `ecs_user_account`(`id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `admin_user` varchar(255) NOT NULL, `amount` decimal(10,2) NOT NULL, `add_time` int(10) NOT NULL DEFAULT '0', `paid_time` int(10) NOT NULL DEFAULT '0', `admin_note` varchar(255) NOT NULL, `user_note` varchar(255) NOT NULL, `process_type` tinyint(1) NOT NULL DEFAULT '0', `payment` varchar(90) NOT NULL, `is_paid` tinyint(1) NOT NULL DEFAULT '0',PRIMARY KEY (`id`),KEY `user_id` (`user_id`),KEY `is_paid` (`is_paid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_user_account`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_address`
--

CREATE TABLE IF NOT EXISTS `ecs_user_address`(`address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `address_name` varchar(50) NOT NULL DEFAULT '', `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `consignee` varchar(60) NOT NULL DEFAULT '', `email` varchar(60) NOT NULL DEFAULT '', `country` smallint(5) NOT NULL DEFAULT '0', `province` smallint(5) NOT NULL DEFAULT '0', `city` smallint(5) NOT NULL DEFAULT '0', `district` smallint(5) NOT NULL DEFAULT '0', `address` varchar(120) NOT NULL DEFAULT '', `zipcode` varchar(60) NOT NULL DEFAULT '', `tel` varchar(60) NOT NULL DEFAULT '', `mobile` varchar(60) NOT NULL DEFAULT '', `sign_building` varchar(120) NOT NULL DEFAULT '', `best_time` varchar(120) NOT NULL DEFAULT '',PRIMARY KEY (`address_id`),KEY `user_id` (`user_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ecs_user_address`
--

INSERT INTO `ecs_user_address` (`address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time`) VALUES(1, '', 1, '刘先生', 'ecshop@ecshop.com', 1, 2, 52, 502, '海兴大厦', '', '010-25851234', '13986765412', '', '');
INSERT INTO `ecs_user_address` (`address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time`) VALUES(2, '', 3, '叶先生', 'text@ecshop.com', 1, 2, 52, 510, '通州区旗舰凯旋小区', '', '13588104710', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_bonus`
--

CREATE TABLE IF NOT EXISTS `ecs_user_bonus`(`bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0', `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0', `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `used_time` int(10) unsigned NOT NULL DEFAULT '0', `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`bonus_id`),KEY `user_id` (`user_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `ecs_user_bonus`
--

INSERT INTO `ecs_user_bonus` (`bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed`) VALUES(1, 3, 0, 1, 1242142681, 4, 0),(2, 4, 1000003379, 1, 1242976699, 14, 0),(3, 4, 1000018450, 0, 0, 0, 0),(4, 4, 1000023774, 0, 0, 0, 0),(5, 4, 1000039394, 0, 0, 0, 0);
INSERT INTO `ecs_user_bonus` (`bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed`) VALUES(6, 4, 1000049305, 0, 0, 0, 0),(7, 4, 1000052248, 0, 0, 0, 0),(8, 4, 1000061542, 0, 0, 0, 0),(9, 4, 1000070278, 0, 0, 0, 0),(10, 4, 1000080588, 0, 0, 0, 0);
INSERT INTO `ecs_user_bonus` (`bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed`) VALUES(11, 4, 1000091405, 0, 0, 0, 0),(24, 3, 0, 1, 0, 0, 0),(25, 3, 0, 1, 0, 0, 0),(26, 3, 0, 1, 0, 0, 0),(27, 3, 0, 1, 0, 0, 0),(28, 3, 0, 1, 0, 0, 0),(29, 3, 0, 1, 0, 0, 0);
INSERT INTO `ecs_user_bonus` (`bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed`) VALUES(30, 3, 0, 1, 0, 0, 0),(31, 3, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_feed`
--

CREATE TABLE IF NOT EXISTS `ecs_user_feed`(`feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0', `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`feed_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_user_feed`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_rank`
--

CREATE TABLE IF NOT EXISTS `ecs_user_rank`(`rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT, `rank_name` varchar(30) NOT NULL DEFAULT '', `min_points` int(10) unsigned NOT NULL DEFAULT '0', `max_points` int(10) unsigned NOT NULL DEFAULT '0', `discount` tinyint(3) unsigned NOT NULL DEFAULT '0', `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1', `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`rank_id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ecs_user_rank`
--

INSERT INTO `ecs_user_rank` (`rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank`) VALUES(1, '注册用户', 0, 1000, 100, 1, 0),(2, 'VIP用户', 1000, 10000, 95, 1, 0),(3, '代销用户', 0, 0, 90, 0, 1),(4, '直营店购买', 0, 0, 89, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_virtual_card`
--

CREATE TABLE IF NOT EXISTS `ecs_virtual_card`(`card_id` mediumint(8) NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0', `card_sn` varchar(60) NOT NULL DEFAULT '', `card_password` varchar(60) NOT NULL DEFAULT '', `add_date` int(11) NOT NULL DEFAULT '0', `end_date` int(11) NOT NULL DEFAULT '0', `is_saled` tinyint(1) NOT NULL DEFAULT '0', `order_sn` varchar(20) NOT NULL DEFAULT '', `crc32` int(11) NOT NULL DEFAULT '0',PRIMARY KEY (`card_id`),KEY `goods_id` (`goods_id`),KEY `car_sn` (`card_sn`),KEY `is_saled` (`is_saled`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ecs_virtual_card`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_volume_price`
--

CREATE TABLE IF NOT EXISTS `ecs_volume_price`(`price_type` tinyint(1) unsigned NOT NULL, `goods_id` mediumint(8) unsigned NOT NULL, `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0', `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_volume_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote`
--

CREATE TABLE IF NOT EXISTS `ecs_vote`(`vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `vote_name` varchar(250) NOT NULL DEFAULT '', `start_time` int(11) unsigned NOT NULL DEFAULT '0', `end_time` int(11) unsigned NOT NULL DEFAULT '0', `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0', `vote_count` int(10) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`vote_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_vote`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote_log`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_log`(`log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0', `ip_address` varchar(15) NOT NULL DEFAULT '', `vote_time` int(10) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`log_id`),KEY `vote_id` (`vote_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_vote_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote_option`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_option`(`option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT, `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0', `option_name` varchar(250) NOT NULL DEFAULT '', `option_count` int(8) unsigned NOT NULL DEFAULT '0', `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',PRIMARY KEY (`option_id`),KEY `vote_id` (`vote_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ecs_vote_option`
--


-- --------------------------------------------------------

--
-- 表的结构 `ecs_wholesale`
--

CREATE TABLE IF NOT EXISTS `ecs_wholesale`(`act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT, `goods_id` mediumint(8) unsigned NOT NULL, `goods_name` varchar(255) NOT NULL, `rank_ids` varchar(255) NOT NULL, `prices` text NOT NULL, `enabled` tinyint(3) unsigned NOT NULL,PRIMARY KEY (`act_id`),KEY `goods_id` (`goods_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;