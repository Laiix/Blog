# Blog
A personal blog project

### Usage:
1. 安装mysql数据库，运行design_doc/blog.sql
2. resources/jdbc.properties中配置正确数据库信息
3. 使用maven插件，jetty运行
    - 需要安装已安装maven  
    - 进入pom.xml文件目录运行，mvn clean package
    - 访问地址:http:xxx.xxx.xxx.xxx:xx 
4. 使用tomcat运行，
    - 运行maven命令，mvn clean package
    - 将war包放入$TOMCAT_HOME/webapps
    - 修改必要的配置文件，如端口，访问路径
    - 访问不加项目名，记得$TOMCAT_HOME/conf/server.xml文件的Host节点下增加<Context path="" docBase="Blog" debug="0" reloadable="true"/>
    - 访问地址:http:xxx.xxx.xxx.xxx:xx

##### 项目部署地址：

 - http://www.eussi.top/

##### 项目构建:Maven

##### jdk:1.8.0_91

#### 技术架构：
![image](https://github.com/eussi/Blog/blob/master/design_doc/Technical-framework.png)
#### 数据库物理模型：
![image](https://github.com/eussi/Blog/blob/master/design_doc/physicaldiagram.png)
#### 访问首页如图：
![image](https://github.com/eussi/Blog/blob/master/design_doc/pre-index.jpg)
