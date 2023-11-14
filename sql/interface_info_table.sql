
-- 用户调用接口关系表
create table if not exists leviapi.user_interface_info
(
    id              bigint auto_increment comment      '主键' primary key,
    userId          bigint                             not null comment '调用用户id',
    interfaceInfoId bigint                             not null comment '接口id',
    totalNum        int      default 0                 not null comment '总调用次数',
    leftNum         int      default 0                 not null comment '剩余调用次数',
    status          int      default 0                 not null comment '接口状态 (0-关闭, 1-开启)',
    createTime      datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime      datetime default CURRENT_TIMESTAMP not null comment '更新时间',
    isDelete        tinyint  default 0                 not null comment '是否删除 (0-未删除，1-已删除)'
) comment '用户调用接口关系表';
