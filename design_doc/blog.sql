DROP DATABASE IF EXISTS blogdb;
CREATE DATABASE blogdb DEFAULT CHARACTER SET utf8;
USE blogdb;


/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/13 17:59:23                          */
/*==============================================================*/


drop table if exists t_article;

drop table if exists t_category;

drop table if exists t_comment;

drop table if exists t_keyword;

drop table if exists t_msg;

drop table if exists t_user;

drop table if exists t_user_info;

drop table if exists t_user_login_log;

/*==============================================================*/
/* Table: t_article                                             */
/*==============================================================*/
create table t_article
(
   id                   varchar(20) not null comment '��ʶ',
   title                varchar(100) comment '����',
   description          text comment '����',
   pic                  text comment 'ͼƬ��ַ',
   content              text comment '����',
   click                int comment '�����',
   time                 timestamp comment '��������',
   category_id          varchar(20) comment '���',
   username             varchar(15) comment '�����û���',
   comment_num          int comment '������',
   is_top               varchar(1) comment '�Ƿ��ö�',
   primary key (id)
);

alter table t_article comment '����';

/*==============================================================*/
/* Table: t_category                                            */
/*==============================================================*/
create table t_category
(
   id                   varchar(20) not null comment '��ʶ',
   name                 varchar(50) comment '�������',
   description          text comment '����',
   primary key (id)
);

alter table t_category comment '���·���';

/*==============================================================*/
/* Table: t_comment                                             */
/*==============================================================*/
create table t_comment
(
   id                   varchar(20) not null comment '��ʶ',
   parent_id            varchar(20) comment '���ָ�id',
   article_id           varchar(20) comment '�ĵ�id',
   content              text comment '����',
   date                 timestamp comment '����',
   user_id              varchar(20) comment '�û�id',
   primary key (id)
);

alter table t_comment comment '����';

/*==============================================================*/
/* Table: t_keyword                                             */
/*==============================================================*/
create table t_keyword
(
   article_id           varchar(20) not null comment '����id',
   keywords             varchar(20) not null comment '�ؼ���',
   primary key (article_id, keywords)
);

alter table t_keyword comment '�ؼ���';

/*==============================================================*/
/* Table: t_msg                                                 */
/*==============================================================*/
create table t_msg
(
   id                   varchar(20) not null comment '��ʶ',
   parent_id            varchar(20) comment '���Իظ�',
   user_id              varchar(20) comment '�û�id',
   content              text comment '����',
   date                 timestamp comment 'ʱ��',
   primary key (id)
);

alter table t_msg comment '����';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   varchar(20) not null comment '��ʶ',
   username             varchar(15) comment '�û���',
   password             varchar(15) comment '����',
   salt                 varchar(5) comment '������',
   user_type            varchar(1) comment '�û�����',
   locked               varchar(1) comment '�Ƿ���',
   last_visit           timestamp comment '�ϴη���ʱ��',
   last_ip              varchar(15) comment '�ϴη���ip',
   primary key (id)
);

alter table t_user comment '�û���';

/*==============================================================*/
/* Table: t_user_info                                           */
/*==============================================================*/
create table t_user_info
(
   user_id              varchar(20) not null comment '�û�id',
   realname             varchar(15) comment '��ʵ����',
   email                varchar(50) comment '����',
   tel                  varchar(12) comment '�ֻ�',
   introduction         varchar(150) comment '���˽���',
   primary key (user_id)
);

alter table t_user_info comment '�û���ϸ��Ϣ';

/*==============================================================*/
/* Table: t_user_login_log                                      */
/*==============================================================*/
create table t_user_login_log
(
   id                   varchar(20) not null comment '��ʶ',
   user_id              varchar(20) comment '�û�id',
   login_date           timestamp comment '��¼����',
   login_ip             varchar(15) comment '��¼ip',
   primary key (id)
);

alter table t_user_login_log comment '�û���¼��־';

alter table t_article add constraint FK_fk_article_category foreign key (category_id)
      references t_category (id) on delete restrict on update restrict;

alter table t_article add constraint FK_fk_article_user foreign key (username)
      references t_user (username) on delete restrict on update restrict;

alter table t_comment add constraint FK_fk_comment_article foreign key (article_id)
      references t_article (id) on delete restrict on update restrict;

alter table t_comment add constraint FK_t_comment_comment foreign key (parent_id)
      references t_comment (id) on delete restrict on update restrict;

alter table t_comment add constraint FK_t_comment_user foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table t_keyword add constraint FK_fk_keyword_article foreign key (article_id)
      references t_article (id) on delete restrict on update restrict;

alter table t_msg add constraint FK_t_msg_msg foreign key (parent_id)
      references t_msg (id) on delete restrict on update restrict;

alter table t_msg add constraint FK_t_msg_user foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table t_user_info add constraint FK_fk_userinfo_user foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table t_user_login_log add constraint FK_fk_user_userlogin foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `t_user` VALUES ('1','wangxm','1234','2','2','1','2018-10-13 16:09:15','0.0.0.0');
INSERT INTO `t_user_info` VALUES ('1','wangxueming','g@mail.com','343432','����');

