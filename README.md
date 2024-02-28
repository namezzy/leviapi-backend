# LeviAPI
> this project platform for manageing and distributing api request
> 
> by [Levi Blog](https://blog.withlevi.top)
> 
>
>
# Project Description
Provide API interfaces for developers to call the platform, based on Spring Boot back-end + React front-end full-stack microservice project.
Administrators can access and publish interfaces, statistical analysis of the interface call situation; users can register and login and open the interface call privileges, 
browse interfaces, online Users can register, login and open interface calling privileges, browse interfaces, debug online, and also use the client SDK to easily call interfaces in the code.
The front-end of the project is not complex, but focuses more on the back-end, including rich programming skills and architectural design level knowledge.


## Technologies utilized in the platform

- Spring Boot 2.7.0
- Spring MVC
- MySQL driver
- MyBatis
- MyBatis Plus
- Spring Session Redis  Distributed Login
- Spring AOP
- Apache Commons Lang3  Tools class
- Lombok annotate
- Swagger + Knife4j interface document
- Spring Boot  Debugging Tools and Project Processors
- 全局请求响应拦截器（记录日志）
- 全局异常处理器
- 自定义错误码
- 封装通用响应类
- 示例用户注册、登录、搜索功能
- 示例单元测试类
- 示例 SQL（用户表）

访问 localhost:8080/api/doc.html 就能在线调试接口了，不需要前端配合啦~

## Deploy

1. Download source code 
2. create database leviapi in MySql(sql file in sql folder)
3. configure build environment by application yaml file
4. build project by maven
5. completed  enjoy it.
Levi

