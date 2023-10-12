-- 创建库
create database if not exists my_db;

-- 切换库
use my_db;

-- 用户表
-- auto-generated definition
create table user
(
    id           bigint auto_increment comment 'id'
        primary key,
    userName     varchar(256)                           null comment '用户昵称',
    userAccount  varchar(256)                           not null comment '账号',
    userAvatar   varchar(1024)                          null comment '用户头像',
    gender       tinyint                                null comment '性别',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user / admin',
    userPassword varchar(512)                           not null comment '密码',
    accessKey    varchar(512)                           not null comment 'accessKey',
    secretKey    varchar(512)                           not null comment 'secretKey',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint uni_userAccount
        unique (userAccount)
)
    comment '用户';


-- auto-generated definition
create table interface_info
(
    id             bigint auto_increment comment '主键'
        primary key,
    name           varchar(256)                       not null comment '名称',
    description    varchar(256)                       not null comment '描述信息',
    url            varchar(512)                       not null comment '接口地址',
    requestParams  text                               not null comment '请求参数',
    responseHeader text                               not null comment '响应头',
    requestHeader  text                               not null comment '请求头',
    status         int      default 0                 not null comment '接口状态 (0-关闭, 1-开启)',
    method         varchar(256)                       not null comment '请求类型',
    userId         bigint                             not null comment '创建人ID',
    createTime     datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime     datetime default CURRENT_TIMESTAMP not null comment '更新时间',
    isDelete       tinyint  default 0                 not null comment '是否删除 (0-未删除，1-已删除)'
)
    comment 'Interface information table';

