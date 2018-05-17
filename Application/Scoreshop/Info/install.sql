-- -----------------------------
-- 表结构 `muucmf_scoreshop`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(25) NOT NULL COMMENT '商品名称',
  `goods_img` int(11) NOT NULL COMMENT '商品图标',
  `goods_introduct` varchar(100) NOT NULL COMMENT '商品简介',
  `goods_detail` text NOT NULL COMMENT '商品详情',
  `money_need` int(11) NOT NULL COMMENT '需要金币数',
  `goods_num` int(11) NOT NULL COMMENT '商品余量',
  `changetime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态，-1：删除；0：禁用；1：启用',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `category_id` int(11) NOT NULL,
  `is_new` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为新品',
  `sell_num` int(11) NOT NULL DEFAULT '0' COMMENT '已出售量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品信息';


-- -----------------------------
-- 表结构 `muucmf_scoreshop_address`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `change_time` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


-- -----------------------------
-- 表结构 `muucmf_scoreshop_buy`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_num` int(11) NOT NULL COMMENT '购买数量',
  `status` tinyint(4) NOT NULL COMMENT '状态，-1：已取消；0：未处理；1：已发货；2：已完成',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `createtime` int(11) NOT NULL COMMENT '购买时间',
  `gettime` int(11) NOT NULL COMMENT '交易结束时间',
  `address_id` int(11) NOT NULL,
  `logistic` text NOT NULL COMMENT '物流数据 json',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购买商品信息表';


-- -----------------------------
-- 表结构 `muucmf_scoreshop_category`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


-- -----------------------------
-- 表结构 `muucmf_scoreshop_log`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


-- -----------------------------
-- 表结构 `muucmf_scoreshop_see`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop_see` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
-- -----------------------------
-- 表内记录 `muucmf_scoreshop_category`
-- -----------------------------
INSERT INTO `muucmf_scoreshop_category` VALUES ('1', '默认分类', '1403507725', '1403507717', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('4', '时尚购物', '1513505114', '1526257868', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('5', '手机数码', '1526258829', '1526258793', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('6', '趣味生活', '1526258906', '1526258893', '1', '0', '0');

