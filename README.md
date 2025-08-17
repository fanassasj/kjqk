# Kejilion 脚本 (安全版)

本项目仓库包含一份修改版的 `kejilion.sh` 脚本。

## 主要修改

为了保护隐私，此版本唯一的修改是**移除了 `send_stats` 监控函数**，禁用了所有遥测和使用情况的数据收集功能。脚本的其余所有功能均保持原样。

## 免责声明

这是一个非官方的修改版本，原脚本及其所有功能归原作者所有。

## 使用方法

您现在可以从您自己的这个 GitHub 仓库中，使用以下命令来安全地运行脚本：

```bash
bash <(curl -sL https://raw.githubusercontent.com/fanassasj/kjqk/main/kejilion.sh)
```

### 关于安全

由于脚本托管在您自己的仓库中，您对代码有完全的控制权，避免了从未知来源执行代码的风险。

---

## 如何禁用监控 (备用)

本仓库中包含的 `kejilion.sh` 已经是去除了监控的版本。

但如果您从其他地方获取了脚本，或者不确定脚本是否去除了监控，可以使用本仓库中附带的 `disable_kejilion_monitoring.sh` 脚本来确保监控被关闭。

**运行“去控脚本”的步骤:**

1.  确保 `disable_kejilion_monitoring.sh` 和 `kejilion.sh` 在同一个目录下。
2.  给“去控脚本”添加执行权限：
    ```bash
    chmod +x disable_kejilion_monitoring.sh
    ```
3.  使用 `sudo` 运行脚本 (需要权限来修改 `/usr/local/bin/k`):
    ```bash
    sudo ./disable_kejilion_monitoring.sh
    ```