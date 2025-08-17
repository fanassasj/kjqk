# Kejilion 脚本 (安全版)

本项目仓库包含一份修改版的 `kejilion.sh` 脚本。

## 主要修改

为了保护隐私，此版本唯一的修改是**移除了 `send_stats` 监控函数**，禁用了所有遥测和使用情况的数据收集功能。脚本的其余所有功能均保持原样。

## 免责声明

这是一个非官方的修改版本，原脚本及其所有功能归原作者所有。

## 一键安装与运行

在全新的服务器上，使用以下一键命令来安装并启动脚本。它会自动处理下载、授权和配置快捷命令的所有步骤。

```bash
curl -sL -o /usr/local/bin/k https://raw.githubusercontent.com/fanassasj/kjqk/main/kejilion.sh && chmod +x /usr/local/bin/k && /usr/local/bin/k && source ~/.bashrc && echo "安装完成，请使用 k 命令开始。"
```

**这条命令会做什么？**
1.  从您自己的仓库下载去除了监控的脚本。
2.  将脚本放置在 `/usr/local/bin/k`，使其成为一个系统命令。
3.  赋予脚本执行权限。
4.  运行脚本一次，以完成别名创建等初始化设置。
5.  重新加载您的终端配置，让 `k` 命令立即生效。

---

## 如何禁用监控 (备用)

本仓库中包含的 `kejilion.sh` 已经是去除了监控的版本。

但如果您在别的服务器上想快速禁用一个未去控的 `kejilion.sh`，或者不确定脚本状态，可以使用下面的一键“去控”命令。

**一键运行“去控脚本”:**

这条命令会自动从本仓库下载“去控脚本”并使用 `sudo` 权限执行，以确保能修改系统文件。

```bash
curl -sL https://raw.githubusercontent.com/fanassasj/kjqk/main/disable_kejilion_monitoring.sh | sudo bash
```