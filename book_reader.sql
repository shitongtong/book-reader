CREATE DATABASE `book_reader` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 书籍表
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '书籍名',
  
  `sort` int(8) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态: 0:删除; 1:正常;',
  `create_by` varchar(50) DEFAULT '' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT '' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='书籍表';