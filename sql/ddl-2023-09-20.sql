-- 创建表
-- auto-generated definition
create table interface_info
(
    id             bigint auto_increment comment '主键'primary key,
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
) comment 'Interface information table';


-- 插入模拟数据
INSERT INTO interface_info (id, name, description, url, requestParams, responseHeader, requestHeader, status, method,
                            userId, createTime, updateTime, isDelete)
VALUES (1, '接口1', '接口1描述信息', 'http://www.test.com/api1', '{"pageNo": 1, "pageSize": 10}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'GET', 1,
        '2023-02-01 12:00:00', '2023-02-01 12:00:00', 0),
       (2, '接口2', '接口2描述信息', 'http://www.test.com/api2', '{"username": "zhangsan"}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'POST', 1,
        '2023-02-02 12:00:00', '2023-02-02 12:00:00', 0),
       (3, '接口3', '接口3描述信息', 'http://www.test.com/api3', '{"id": 123}', '{"code": 200, "message": "success"}',
        '{"Content-Type": "application/json"}', 0, 'GET', 2, '2023-02-03 12:00:00', '2023-02-03 12:00:00', 0),
       (4, '接口4', '接口4描述信息', 'http://www.test.com/api4', '{"username": "lisi"}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'POST', 2,
        '2023-02-04 12:00:00', '2023-02-04 12:00:00', 0),
       (5, '接口5', '接口5描述信息', 'http://www.test.com/api5', '{"pageNo": 1, "pageSize": 20}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'GET', 1,
        '2023-02-05 12:00:00', '2023-02-05 12:00:00', 0),
       (6, '接口6', '接口6描述信息', 'http://www.test.com/api6', '{"username": "wangwu"}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 0, 'POST', 2,
        '2023-02-06 12:00:00', '2023-02-06 12:00:00', 1),
       (7, '接口7', '接口7描述信息', 'http://www.test.com/api7', '{"id": 456}', '{"code": 200, "message": "success"}',
        '{"Content-Type": "application/json"}', 1, 'GET', 1, '2023-02-07 12:00:00', '2023-02-07 12:00:00', 0),
       (8, '接口8', '接口8描述信息', 'http://www.test.com/api8', '{"username": "zhaoliu"}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 0, 'POST', 2,
        '2023-02-08 12:00:00', '2023-02-08 12:00:00', 0),
       (9, '接口9', '接口9描述信息', 'http://www.test.com/api9', '{"pageNo": 2, "pageSize": 15}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'GET', 2,
        '2023-02-09 12:00:00', '2023-02-09 12:00:00', 0),
       (10, '接口10', '接口10描述信息', 'http://www.test.com/api10', '{"username": "qianqi"}',
        '{"code": 200, "message": "success"}', '{"Content-Type": "application/json"}', 1, 'POST', 1,
        '2023-02-10 12:00:00', '2023-02-10 12:00:00', 0)