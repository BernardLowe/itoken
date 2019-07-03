/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.22 : Database - itoken-service-digiccy
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`itoken-service-digiccy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `itoken-service-digiccy`;

DROP TABLE IF EXISTS tb_digiccy_exchange;

-- ��������
CREATE TABLE tb_digiccy_exchange
(
	exch_guid varchar(100) NOT NULL COMMENT '����������',
    exch_name varchar(64) NOT NULL COMMENT '����������',
    exch_code varchar(64) NOT NULL COMMENT '����������',
    exch_url varchar(64) NOT NULL COMMENT '��������ַ',
	create_by varchar(64) NOT NULL COMMENT '������',
	create_date datetime NOT NULL COMMENT '����ʱ��',
	update_by varchar(64) NOT NULL COMMENT '������',
	update_date datetime NOT NULL COMMENT '����ʱ��',
	remarks varchar(500) COMMENT '��ע��Ϣ',
	extend_s1 varchar(500) COMMENT '��չ String 1',
	extend_s2 varchar(500) COMMENT '��չ String 2',
	extend_s3 varchar(500) COMMENT '��չ String 3',
	extend_s4 varchar(500) COMMENT '��չ String 4',
	extend_s5 varchar(500) COMMENT '��չ String 5',
	extend_s6 varchar(500) COMMENT '��չ String 6',
	extend_s7 varchar(500) COMMENT '��չ String 7',
	extend_s8 varchar(500) COMMENT '��չ String 8',
	extend_i1 decimal(19) COMMENT '��չ Integer 1',
	extend_i2 decimal(19) COMMENT '��չ Integer 2',
	extend_i3 decimal(19) COMMENT '��չ Integer 3',
	extend_i4 decimal(19) COMMENT '��չ Integer 4',
	extend_f1 decimal(19,4) COMMENT '��չ Float 1',
	extend_f2 decimal(19,4) COMMENT '��չ Float 2',
	extend_f3 decimal(19,4) COMMENT '��չ Float 3',
	extend_f4 decimal(19,4) COMMENT '��չ Float 4',
	extend_d1 datetime COMMENT '��չ Date 1',
	extend_d2 datetime COMMENT '��չ Date 2',
	extend_d3 datetime COMMENT '��չ Date 3',
	extend_d4 datetime COMMENT '��չ Date 4',
	PRIMARY KEY (exch_guid)
) COMMENT = '��������';

CREATE INDEX idx_digiccy_exchange_eg ON tb_digiccy_exchange (exch_guid ASC);