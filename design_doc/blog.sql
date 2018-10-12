/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/13 0:38:57                           */
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
   id                   char(20) not null comment '标识',
   title                char(100) comment '标题',
   "desc"               char(500) comment '描述',
   pic                  char(500) comment '图片地址',
   content              TEXT comment '内容',
   click                int comment '点击量',
   time                 timestamp comment '发表日期',
   category_id          char(20) comment '类别',
   user_id              char(20) comment '作者',
   comment_num          int comment '评论数',
   is_top               char(1) comment '是否置顶',
   primary key (id)
);

alter table t_article comment '文章';

/*==============================================================*/
/* Table: t_category                                            */
/*==============================================================*/
create table t_category
(
   id                   char(20) not null comment '标识',
   name                 char(50) comment '类别名称',
   "desc"               char(500) comment '描述',
   primary key (id)
);

alter table t_category comment '文章分类';

/*==============================================================*/
/* Table: t_comment                                             */
/*==============================================================*/
create table t_comment
(
   id                   char(20) not null comment '标识',
   parent_id            char(20) comment '被恢复id',
   article_id           char(20) comment '文档id',
   content              char(500) comment '内容',
   date                 timestamp comment '日期',
   user_id              char(20) comment '用户id',
   primary key (id)
);

alter table t_comment comment '评论';

/*==============================================================*/
/* Table: t_keyword                                             */
/*==============================================================*/
create table t_keyword
(
   article_id           char(20) not null comment '文章id',
   keywords             char(20) not null comment '关键字',
   primary key (article_id, keywords)
);

alter table t_keyword comment '关键字';

/*==============================================================*/
/* Table: t_msg                                                 */
/*==============================================================*/
create table t_msg
(
   id                   char(20) not null comment '标识',
   parent_id            char(20) comment '留言回复',
   user_id              char(20) comment '用户id',
   content              char(500) comment '内容',
   date                 timestamp comment '时间',
   primary key (id)
);

alter table t_msg comment '留言';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   char(20) not null comment '标识',
   username             char(15) comment '用户名',
   password             char(15) comment '密码',
   slat                 char(5) comment '加密盐',
   user_type            char(1) comment '用户类型',
   locked               char(1) comment '是否被锁',
   last_visit           timestamp comment '上次访问时间',
   last_ip              char(15) comment '上次访问ip',
   primary key (id)
);

alter table t_user comment '用户表';

/*==============================================================*/
/* Table: t_user_info                                           */
/*==============================================================*/
create table t_user_info
(
   user_id              char(20) not null comment '用户id',
   realname             char(10) comment '真实姓名',
   email                char(50) comment '邮箱',
   tel                  char(12) comment '手机',
   introduction         char(150) comment '个人介绍',
   primary key (user_id)
);

alter table t_user_info comment '用户详细信息';

/*==============================================================*/
/* Table: t_user_login_log                                      */
/*==============================================================*/
create table t_user_login_log
(
   id                   char(20) not null comment '标识',
   user_id              char(20) comment '用户id',
   login_date           timestamp comment '登录日期',
   login_ip             char(15) comment '登录ip',
   primary key (id)
);

alter table t_user_login_log comment '用户登录日志';

alter table t_article add constraint FK_fk_article_category foreign key (category_id)
      references t_category (id) on delete restrict on update restrict;

alter table t_article add constraint FK_fk_article_user foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

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

