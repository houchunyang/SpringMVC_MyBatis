/* 2017-11-10 */
-- 创建数据库
CREATE DATABASE asl_ums_temp;
/* 2017-11-10 */
-- 创建部门表
CREATE TABLE al_department (
	id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "id",
	code VARCHAR(255) COMMENT "编码",
	name VARCHAR(255) COMMENT "名称",
	description TEXT COMMENT "描述",
	createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	updateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间"
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 2017-11-14 */
-- 创建权限表
CREATE TABLE al_jurisdiction (
	id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "id",
	name VARCHAR(255) COMMENT "名称",
	description TEXT COMMENT "描述",
	createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	updateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间"
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 2017-11-15 */
-- 创建角色表
CREATE TABLE al_role (
	id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "id",
	name VARCHAR(255) COMMENT "名称",
	description TEXT COMMENT "描述",
	createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	updateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间"
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 2017-11-15 */
-- 创建角色权限表
CREATE TABLE al_role_jurisdiction (
	role_id BIGINT(20) NOT NULL COMMENT "角色id",
	jurisdiction_id BIGINT(20) NOT NULL COMMENT "权限id",
	CONSTRAINT fk_role_jurisdiction_id FOREIGN KEY (role_id) REFERENCES al_role (id),
	CONSTRAINT fk_jurisdiction_role_id FOREIGN KEY (jurisdiction_id) REFERENCES al_jurisdiction (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



/* 2017-11-17 */
-- 创建用户表
CREATE TABLE al_user (
	id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "id",
	code VARCHAR(255) COMMENT "编码",
	name VARCHAR(255) COMMENT "姓名",
	password VARCHAR(255) COMMENT "密码",
	mobile VARCHAR(255) COMMENT "手机",
	department_id BIGINT(20) NOT NULL COMMENT "所属部门",
	role_id BIGINT(20) NOT NULL COMMENT "所属角色",
	gender VARCHAR(255) COMMENT "性别",
	status TINYINT(1) COMMENT "状态",
	createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	updateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	CONSTRAINT fk_user_department_id FOREIGN KEY (department_id) REFERENCES al_department (id),
	CONSTRAINT fk_user_role_id FOREIGN KEY (role_id) REFERENCES al_role (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;