/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.22 : Database - itoken-service-admin
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`itoken-service-posts` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `itoken-service-posts`;

DROP TABLE IF EXISTS tb_posts_post;

-- ���±�
CREATE TABLE tb_posts_post
(
	post_guid varchar(100) NOT NULL COMMENT '���±���',
    title varchar(100) NOT NULL COMMENT '���±���',
    time_published datetime NOT NULL COMMENT '���·���ʱ��',
    status char NOT NULL COMMENT '����״̬��0�ݸ� 1�ѷ��������� 2����˵����� 3���ܾ����� 4��ʱ���������£�',
    alias varchar(100) COMMENT '���±���',
    score decimal(3) DEFAULT 0 COMMENT '���µ÷�',
    summary text COMMENT '����ժҪ',
    main text COMMENT '��������',
    authors text COMMENT '�������߶���',
    thumb_image text COMMENT '��������ͼƬ',
    original_images text COMMENT '�ü��󲻴��ߴ������ͼƬ����',
    images text COMMENT '�ü�����ߴ������ͼƬ����',
    full_size_images text COMMENT '�ü�ǰ������ͼƬ����',
    tags text COMMENT '���±�ǩ',
    v_tags text COMMENT '������ɫ��ǩ',
    number_of_upvotes decimal(9) DEFAULT 0 COMMENT '������',
    number_of_downvotes decimal(9) DEFAULT 0 COMMENT '������',
    number_of_reads decimal(9) DEFAULT 0 COMMENT '���Ķ���',
    number_of_shares decimal(9) DEFAULT 0 COMMENT '��������',
    number_of_bookmarks decimal(9) DEFAULT 0 COMMENT '���ղ���',
    number_of_comments decimal(9) DEFAULT 0 COMMENT '��������',
    reject_msg varchar(100) COMMENT '������˱�������',
    series text COMMENT 'һƪ���µ�ϵ�м���',
    access char(2) COMMENT '���µ��Ķ�Ȩ�ޣ�0������ 1��Ա��',
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
	PRIMARY KEY (post_guid)
) COMMENT = '���±�';

CREATE INDEX idx_posts_post_pg ON tb_posts_post (post_guid ASC);