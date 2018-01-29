**操作步骤**
1. github上创建一个maven项目，把Dockerfile文件拷到项目根目录
2. 修改Dockerfile文件，把JAR_FILE_NAME修改为mvn package 命令生成的jar包名称；EXPOSE 表示应用要暴露的端口，如果有多个端口，就写多个EXPOSE
3. 在hub.docker.com注册一个账号，Creat -> Create Automated Build，选择github项目
4. dockerhub根据github代码提交自动构建镜像，构建后会删除项目目录，只留下一个jar包