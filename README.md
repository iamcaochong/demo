#**Docker Auto-build**
dockerhub根据github代码提交自动构建镜像，构建后会删除项目目录，只留下一个jar包
1. github上创建一个maven项目，把Dockerfile文件拷到项目根目录，并把JAR_FILE_NAME修改为mvn package 命令生成的jar包名称
2. 在hub.docker.com注册一个账号，Creat -> Create Automated Build，选择github项目
