-- -----------------------------
-- 表结构 `muucmf_scoreshop`
-- -----------------------------
CREATE TABLE IF NOT EXISTS `muucmf_scoreshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(25) NOT NULL COMMENT '商品名称',
  `goods_img` int(11) NOT NULL COMMENT '商品图标',
  `goods_introduct` varchar(100) NOT NULL COMMENT '商品简介',
  `goods_detail` text NOT NULL COMMENT '商品详情',
  `price` int(11) NOT NULL COMMENT '需要金币数',
  `quantity` int(11) NOT NULL COMMENT '商品余量',
  `changetime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态，-1：删除；0：禁用；1：启用',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `category_id` int(11) NOT NULL,
  `is_new` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为新品',
  `sell_num` int(11) NOT NULL DEFAULT '0' COMMENT '已出售量',
  `sku_table` varchar(255) NOT NULL COMMENT '产品sku规格json格式',
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购买商品信息表';


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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


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
-- 表内记录 `muucmf_scoreshop`
-- -----------------------------
INSERT INTO `muucmf_scoreshop` VALUES ('1', '华为手机Mate10(ALP-AL00) 4GB+', '47', '灵感，造就器物之美', '<p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c36420.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c5aa34.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c63098.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c6a1da.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c8cdbc.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63c9b0b3.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63ca8210.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63cae66e.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63cc6670.jpg\" style=\"\"/></p><p><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e63ccdb47.jpg\" style=\"\"/></p><p><br/></p>', '16000', '10', '1526261675', '1', '1526261315', '5', '0', '10', '');
INSERT INTO `muucmf_scoreshop` VALUES ('2', 'ARTIART创意小鸟多功能不锈钢削皮器', '60', '够萌，够有趣', '<p style=\"text-align:center\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e85c187a0.jpg\" title=\"\" alt=\"CsgDV1noeIeAbyRTAA67MfamXZw469.jpg\"/></p>', '1200', '10', '1526261938', '1', '1526261938', '6', '0', '10', '');
INSERT INTO `muucmf_scoreshop` VALUES ('3', '凯舒卡通抱枕', '61', '软绵绵的居家伴侣', '<p style=\"text-align:center\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e93675bee.jpg\" title=\"\" alt=\"CsgDV1jTkziAE-W5AAL4IvUxay8728.jpg\"/><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e9667c4ab.jpg\" title=\"\" alt=\"CsgDWFjTkzqAJEYHAALhj55_mIY811.jpg\"/></p>', '10', '5', '1526263248', '1', '1526262143', '6', '0', '5', '');
INSERT INTO `muucmf_scoreshop` VALUES ('4', 'Hellokitty马克杯', '66', 'Hellokitty马克杯', '<p style=\"text-align: center;\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8ed4ed4970.jpg\" style=\"\"/></p><p style=\"text-align:center\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8ed4eee285.jpg\"/></p>', '1800', '10', '1526263626', '1', '1526263182', '6', '0', '0', '');
INSERT INTO `muucmf_scoreshop` VALUES ('5', '汤臣倍健液体钙软胶囊', '67', '汤臣倍健液体钙软胶囊', '<p style=\"text-align: center;\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af9668e30369.jpg\" title=\"\" alt=\"CsgDV1oOTKGANKV9AAqeZwEK7CM313.jpg\"/></p>', '16000', '10', '1526294507', '1', '1526294179', '6', '1', '0', '');
INSERT INTO `muucmf_scoreshop` VALUES ('6', '美的电饭煲 MB-FD4019A', '69', '原来生活可以更美的', '<p style=\"text-align: center;\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af968a79a820.jpg\" title=\"\" alt=\"CsgDV1ogyuSAY-XQAAXhW_CIzMM707.jpg\"/></p>', '23000', '100', '1526294756', '1', '1526294756', '6', '0', '2', '');
INSERT INTO `muucmf_scoreshop` VALUES ('7', '最生活毛巾浅色系列4条装', '71', '最生活毛巾浅色系列4条装', '<p style=\"text-align: center;\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af9698c7c723.jpg\" title=\"\" alt=\"CsgDV1noaCyAEjISAAa6nh0ejrk089.jpg\"/><img src=\"/Uploads/Editor/Picture/2018-05-14/5af969f5258f6.jpg\" title=\"\" alt=\"CsgDWFnoaDGAdskwAAcq9ZVxeb0860.jpg\"/></p>', '1200', '198', '1526295045', '1', '1526294971', '6', '0', '12', '');
INSERT INTO `muucmf_scoreshop` VALUES ('8', '小熊纳豆米酒酸奶机', '74', '小熊纳豆米酒酸奶机', '<p style=\"text-align: center;\"><img src=\"/Uploads/Editor/Picture/2018-05-14/5af8e85c187a0.jpg\" title=\"\" alt=\"CsgDV1noeIeAbyRTAA67MfamXZw469.jpg\"/></p>', '900', '99', '1526296004', '1', '1526296004', '6', '0', '11', '{\"table\":{\"sdf\":[\"s\"],\"dd\":[\"ss\",\"dd\",\"qq\"]},\"info\":{\"sdf:s;dd:ss\":{\"price\":\"900\",\"quantity\":\"0\"},\"sdf:s;dd:dd\":{\"price\":\"900\",\"quantity\":\"0\"},\"sdf:s;dd:qq\":{\"price\":\"900\",\"quantity\":\"0\"}}}');
-- -----------------------------
-- 表内记录 `muucmf_scoreshop_address`
-- -----------------------------

-- -----------------------------
-- 表内记录 `muucmf_scoreshop_buy`
-- -----------------------------

-- -----------------------------
-- 表内记录 `muucmf_scoreshop_category`
-- -----------------------------
INSERT INTO `muucmf_scoreshop_category` VALUES ('1', '默认分类', '1403507725', '1403507717', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('4', '时尚购物', '1513505114', '1526257868', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('5', '手机数码', '1526258829', '1526258793', '1', '0', '0');
INSERT INTO `muucmf_scoreshop_category` VALUES ('6', '趣味生活', '1526258906', '1526258893', '1', '0', '0');
-- -----------------------------
-- 表内记录 `muucmf_scoreshop_log`
-- -----------------------------

-- -----------------------------
-- 表内记录 `muucmf_scoreshop_see`
-- -----------------------------

