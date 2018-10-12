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
   id                   char(20) not null comment '��ʶ',
   title                char(100) comment '����',
   "desc"               char(500) comment '����',
   pic                  char(500) comment 'ͼƬ��ַ',
   content              TEXT comment '����',
   click                int comment '�����',
   time                 timestamp comment '��������',
   category_id          char(20) comment '���',
   user_id              char(20) comment '����',
   comment_num          int comment '������',
   is_top               char(1) comment '�Ƿ��ö�',
   primary key (id)
);

alter table t_article comment '����';

/*==============================================================*/
/* Table: t_category                                            */
/*==============================================================*/
create table t_category
(
   id                   char(20) not null comment '��ʶ',
   name                 char(50) comment '�������',
   "desc"               char(500) comment '����',
   primary key (id)
);

alter table t_category comment '���·���';

/*==============================================================*/
/* Table: t_comment                                             */
/*==============================================================*/
create table t_comment
(
   id                   char(20) not null comment '��ʶ',
   parent_id            char(20) comment '���ָ�id',
   article_id           char(20) comment '�ĵ�id',
   content              char(500) comment '����',
   date                 timestamp comment '����',
   user_id              char(20) comment '�û�id',
   primary key (id)
);

alter table t_comment comment '����';

/*==============================================================*/
/* Table: t_keyword                                             */
/*==============================================================*/
create table t_keyword
(
   article_id           char(20) not null comment '����id',
   keywords             char(20) not null comment '�ؼ���',
   primary key (article_id, keywords)
);

alter table t_keyword comment '�ؼ���';

/*==============================================================*/
/* Table: t_msg                                                 */
/*==============================================================*/
create table t_msg
(
   id                   char(20) not null comment '��ʶ',
   parent_id            char(20) comment '���Իظ�',
   user_id              char(20) comment '�û�id',
   content              char(500) comment '����',
   date                 timestamp comment 'ʱ��',
   primary key (id)
);

alter table t_msg comment '����';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   char(20) not null comment '��ʶ',
   username             char(15) comment '�û���',
   password             char(15) comment '����',
   slat                 char(5) comment '������',
   user_type            char(1) comment '�û�����',
   locked               char(1) comment '�Ƿ���',
   last_visit           timestamp comment '�ϴη���ʱ��',
   last_ip              char(15) comment '�ϴη���ip',
   primary key (id)
);

alter table t_user comment '�û���';

/*==============================================================*/
/* Table: t_user_info                                           */
/*==============================================================*/
create table t_user_info
(
   user_id              char(20) not null comment '�û�id',
   realname             char(10) comment '��ʵ����',
   email                char(50) comment '����',
   tel                  char(12) comment '�ֻ�',
   introduction         char(150) comment '���˽���',
   primary key (user_id)
);

alter table t_user_info comment '�û���ϸ��Ϣ';

/*==============================================================*/
/* Table: t_user_login_log                                      */
/*==============================================================*/
create table t_user_login_log
(
   id                   char(20) not null comment '��ʶ',
   user_id              char(20) comment '�û�id',
   login_date           timestamp comment '��¼����',
   login_ip             char(15) comment '��¼ip',
   primary key (id)
);

alter table t_user_login_log comment '�û���¼��־';

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

