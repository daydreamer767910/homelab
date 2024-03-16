#!/bin/bash
# 这是 entrypoint 脚本，用来在容器启动时执行自定义操作

# 在这里添加你希望在容器启动时执行的命令或脚本
# 例如，你可以将 custom-unbound.conf 追加到 unbound.conf 中
cat /opt/unbound/etc/unbound/custom-unbound.conf >> /opt/unbound/etc/unbound/unbound.conf

# 执行 Unbound 服务
exec "$@"
