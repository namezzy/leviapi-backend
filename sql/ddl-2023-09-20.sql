-- 创建表
create table interface_info
(
    id             bigint auto_increment comment '主键'
        primary key,
    name           varchar(256)                       not null comment '名称',
    description    varchar(256)                       not null comment '描述信息',
    url            varchar(512)                       not null comment '接口地址',
    requestHeader  text                               not null comment '请求头',
    responseHeader text                               not null comment '响应头',
    status         int      default 0                 not null comment '接口状态 (0-关闭, 1-开启)',
    method         varchar(256)                       not null comment '请求类型',
    userId         bigint                             not null comment '创建人ID',
    createTime     datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime     datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete       tinyint  default 0                 not null comment '是否删除 (0-未删除，1-已删除)'
)
    comment 'Interface information table';

-- 插入模拟数据

INSERT INTO interface_info (name, description, url, requestHeader, responseHeader, status, method, userId, createTime, updateTime, isDelete)
VALUES
    ('接口1', '获取用户信息', 'http://localhost:8080/user/get', '{"token":"123"}','{"code":0,"data":{"id":1,"name":"张三"}}',1,'GET',1, NOW(), NOW(),0),
    ('接口2', '新增用户', 'http://localhost:8080/user/add', '{"token":"123","user":{"name":"李四","age":20}}','{"code":0}',1,'POST',1, NOW(), NOW(),0),
    ('接口3', '修改用户信息', 'http://localhost:8080/user/update', '{"token":"123","id":1,"user":{"name":"王五"}}','{"code":0}',1,'PUT',1, NOW(), NOW(),0),
    ('接口4', '删除用户', 'http://localhost:8080/user/delete/{id}', '{"token":"123"}','{"code":0}',1,'DELETE',1, NOW(), NOW(),0),
    ('接口5', '获取产品列表', 'http://localhost:8080/product/list', '{"token":"123","page":1,"size":10}','{"code":0,"total":100,"list":[{}]}' ,1,'GET',1, NOW(), NOW(),0),
    ('接口6', '新增产品', 'http://localhost:8080/product/add', '{"token":"123","product":{"name":"iPhone"}}','{"code":0}',1,'POST',1, NOW(), NOW(),0),
    ('接口7', '修改产品信息', 'http://localhost:8080/product/update', '{"token":"123","id":1,"product":{"name":"MiPhone"}}','{"code":0}',1,'PUT',1, NOW(), NOW(),0),
    ('接口8', '删除产品', 'http://localhost:8080/product/delete/{id}', '{"token":"123"}','{"code":0}',1,'DELETE',1, NOW(), NOW(),0),
    ('接口9', '登录', 'http://localhost:8080/auth/login', '{"username":"admin","password":"123456"}','{"token":"abc123"}',1,'POST',1, NOW(), NOW(),0),
    ('接口10', '登出', 'http://localhost:8080/auth/logout', '{"token":"abc123"}','{"code":0}',1,'POST',1, NOW(), NOW(),0),
    ('接口11', '获取订单列表', 'http://localhost:8080/order/list', '{"token":"123","page":1,"size":10}','{"code":0,"total":100,"list":[{}]}' ,1,'GET',1, NOW(), NOW(),0),
    ('接口12', '新增订单', 'http://localhost:8080/order/add', '{"token":"123","order":{"number":"202203000001"}}','{"code":0}',1,'POST',1, NOW(), NOW(),0),
    ('接口13', '修改订单信息', 'http://localhost:8080/order/update', '{"token":"123","id":1,"order":{"status":1}}','{"code":0}',1,'PUT',1, NOW(), NOW(),0),
    ('接口14', '删除订单', 'http://localhost:8080/order/delete/{id}', '{"token":"123"}','{"code":0}',1,'DELETE',1, NOW(), NOW(),0),
    ('接口15', '获取菜单列表', 'http://localhost:8080/menu/list', '{"token":"123"}','{"code":0,"list":[{}]}' ,1,'GET',1, NOW(), NOW(),0),
    ('接口16', '新增菜单', 'http://localhost:8080/menu/add', '{"token":"123","menu":{"name":"首页"}}','{"code":0}',1,'POST',1, NOW(), NOW(),0),
    ('接口17', '修改菜单信息', 'http://localhost:8080/menu/update', '{"token":"123","id":1,"menu":{"name":"修改后的首页"}}','{"code":0}',1,'PUT',1, NOW(), NOW(),0),
    ('接口18', '删除菜单', 'http://localhost:8080/menu/delete/{id}', '{"token":"123"}','{"code":0}',1,'DELETE',1, NOW(), NOW(),0),
    ('接口19', '获取角色列表', 'http://localhost:8080/role/list', '{"token":"123"}','{"code":0,"list":[{}]}' ,1,'GET',1, NOW(), NOW(),0),
    ('接口20', '新增角色', 'http://localhost:8080/role/add', '{"token":"123","role":{"name":"管理员"}}','{"code":0}',1,'POST',1, NOW(), NOW(),0);