# Apache SkyWalking Docker Files

> 部署版本7.0, Elasticsearch 7.x

## APM部署步骤

- 进入7/7.0/oap-es7目录下，修改restart.sh中的`EXT_CONFIG_DIR`为项目的`config`目录

- 进入7/7.0/ui目录下，修改restart.sh中的`W_OAP_ADDRESS`为宿主机的IP

- 先执行oap-es7目录下的restart.sh启动oap服务

- 再执行ui目录下的restart.sh启动oap-ui服务

## Agent部署步骤

- 将agent目录及内容放置在需要监控的服务实例上

- 修改agen/config/agent.config中的`collector.backend_service`地址为oap server的地址

- 在启动业务服务的命令行添加javaagent参数 e.g. `java -javaagent:/xx/xx/skywalking-agent.jar -Dskywalking.agent.service_name=Order-Service -jar xx.jar`