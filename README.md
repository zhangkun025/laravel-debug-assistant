# Laravel Debug Assistant

一个功能全面的 Laravel 调试助手 Composer 包，提供 38 个 Artisan 命令，涵盖系统检查、认证诊断、数据库分析、性能监控、日志分析、配置管理、一键修复和自动化部署。

**最新更新：v1.1.0 - Web 界面支持！** 🌐

## ✨ 特性

### 命令行工具 (CLI)
- **系统检查**：环境检查、依赖检查、配置验证
- **诊断工具**：系统诊断、认证诊断、数据库诊断
- **分析工具**：项目分析、性能分析、路由分析
- **日志分析**：错误日志分析、慢查询分析
- **配置管理**：配置编辑、环境变量管理
- **快速修复**：一键修复常见问题
- **部署工具**：部署前检查、部署脚本生成

### Web 界面 (v1.1.0 新增)
- **浏览器访问**：无需 SSH，通过浏览器操作
- **实时输出**：实时显示命令执行结果
- **系统监控**：查看 PHP 版本、Laravel 版本、磁盘空间
- **快速操作**：一键清除缓存、修复问题
- **共享主机友好**：专为无 SSH 访问的环境设计

## 📦 安装

### 要求

- PHP 8.2+
- Laravel 10.0/11.0
- Composer 2.0+

### 快速开始

#### 方式 1: 使用安装脚本（推荐）

```bash
# 下载压缩包
wget https://your-url/laravel-debug-assistant-v1.1.0.tar.gz

# 解压
tar -xzf laravel-debug-assistant-v1.1.0.tar.gz
cd laravel-debug-assistant

# 运行安装脚本
chmod +x scripts/install/install.sh
./scripts/install/install.sh
```

详细安装说明请参阅：[docs/installation.md](docs/installation.md)

#### 方式 2: Composer 安装

```bash
composer require presenso/laravel-debug-assistant
```

然后手动部署 Web 界面文件，详细步骤请参阅：[docs/web-interface.md](docs/web-interface.md)

### 访问 Web 界面

安装成功后，通过以下 URL 访问：

```
http://localhost:8000/debug-assistant
```

或

```
http://your-domain.com/debug-assistant
```

## 📚 文档

### 快速入门

- 🚀 [快速开始指南](docs/quick-start.md) - 5 分钟快速上手
- 📖 [用户指南](docs/user-guide.md) - 完整的使用说明

### 详细文档

- 📦 [安装指南](docs/installation.md) - 详细的安装步骤
- 🌐 [Web 界面说明](docs/web-interface.md) - Web 界面功能介绍
- 🔧 [故障排除](docs/troubleshooting-403.md) - 常见问题解决方案
- 📋 [部署指南](docs/deployment.md) - 共享主机部署说明
- 🔄 [更新日志](docs/changelog.md) - 版本更新历史
- 📝 [文件清单](docs/file-list.md) - 项目文件结构
- ✨ [新功能介绍](docs/whats-new.md) - v1.1.0 新功能

### 其他资源

- 🤝 [贡献指南](docs/contributing.md) - 如何参与贡献
- 📞 [支持文档](docs/support.md) - 获取帮助
- 🏗️ [项目结构](docs/structure.md) - 代码架构说明

## 📖 命令列表

### Check 命令

```bash
php artisan debug:check:env              # 检查环境配置
php artisan debug:check:dependencies     # 检查依赖包
php artisan debug:check:config           # 检查配置文件
php artisan debug:check:permissions      # 检查文件权限
php artisan debug:check:migrations       # 检查迁移文件
php artisan debug:check:sessions         # 检查会话配置
php artisan debug:check:tokens           # 检查令牌配置
php artisan debug:check:middleware       # 检查中间件
php artisan debug:check:auth-routes      # 检查认证路由
php artisan debug:check:db-tables        # 检查数据库表
php artisan debug:check:structure        # 检查项目结构
```

### Diagnose 命令

```bash
php artisan debug:diagnose:system        # 系统诊断
php artisan debug:diagnose:auth          # 认证诊断
php artisan debug:diagnose:database      # 数据库诊断
php artisan debug:diagnose:logs          # 日志诊断
php artisan debug:diagnose:performance   # 性能诊断
```

### Analyze 命令

```bash
php artisan debug:analyze:project        # 项目分析
php artisan debug:analyze:performance    # 性能分析
php artisan debug:analyze:routes         # 路由分析
php artisan debug:analyze:cache          # 缓存分析
php artisan debug:analyze:memory         # 内存分析
php artisan debug:analyze:queries        # 查询分析
php artisan debug:analyze:response-time  # 响应时间分析
```

### Logs 命令

```bash
php artisan debug:logs:errors            # 错误日志分析
php artisan debug:logs:slow-queries      # 慢查询分析
php artisan debug:logs:stats             # 日志统计
php artisan debug:logs:tail              # 实时日志监控
```

### Config 命令

```bash
php artisan debug:config:edit            # 编辑配置
php artisan debug:config:env             # 管理环境变量
php artisan debug:config:show            # 显示配置
php artisan debug:config:backup          # 备份配置
php artisan debug:config:restore         # 恢复配置
```

### Fix 命令

```bash
php artisan debug:fix:all                # 修复所有问题
php artisan debug:fix:permissions        # 修复文件权限
php artisan debug:fix:cache              # 清除缓存
php artisan debug:fix:generate-key       # 重新生成密钥
php artisan debug:fix:link-storage       # 链接存储
```

### Deploy 命令

```bash
php artisan debug:deploy:all             # 完整部署
php artisan debug:deploy:backup          # 备份应用
php artisan debug:deploy:rollback        # 回滚部署
php artisan debug:deploy:update          # 更新应用
php artisan debug:deploy:status          # 部署状态
```

### 其他命令

```bash
php artisan debug:test:db-connection     # 测试数据库连接
```

## 🏗️ 项目结构

```
laravel-debug-assistant/
├── docs/                    # 文档目录
│   ├── installation.md     # 安装指南
│   ├── quick-start.md      # 快速开始
│   ├── web-interface.md    # Web 界面说明
│   └── ...                 # 其他文档
├── web/                     # Web 界面资源
│   ├── controller/         # 控制器
│   ├── views/              # 视图文件
│   └── routes/             # 路由定义
├── scripts/                 # 脚本工具
│   ├── install/            # 安装脚本
│   ├── build/              # 构建脚本
│   ├── deploy/             # 部署脚本
│   └── utility/            # 工具脚本
├── src/                     # 源代码
│   ├── Commands/           # 命令类
│   ├── Console/            # 控制台工具
│   └── Providers/          # 服务提供者
├── config/                  # 配置文件
├── dist/                    # 发布产物
│   └── laravel-debug-assistant-v1.1.0.tar.gz
├── archive/                 # 归档文件
├── composer.json            # Composer 配置
└── LICENSE                  # 许可证
```

## 🎯 Web 界面功能

### 快速操作

- **环境检查**：检查 PHP 版本、Laravel 版本、扩展等
- **系统诊断**：全面诊断系统状态
- **清除缓存**：清除配置、路由、视图和应用缓存
- **数据库测试**：测试数据库连接和查询
- **修复问题**：一键修复常见问题

### 系统监控

- PHP 版本
- Laravel 版本
- 环境类型（Local/Production）
- 数据库连接
- 磁盘空间

## 🔧 使用示例

### 命令行示例

```bash
# 检查环境
php artisan debug:check:env

# 系统诊断
php artisan debug:diagnose:system

# 修复所有问题
php artisan debug:fix:all

# 清除缓存
php artisan debug:fix:cache

# 测试数据库连接
php artisan debug:test:db-connection
```

### Web 界面示例

```bash
# 访问 Web 界面
open http://localhost:8000/debug-assistant

# 或在浏览器中打开
http://your-domain.com/debug-assistant
```

## 📊 输出示例

### 命令行输出

```
✓ PHP Version: 8.2.5
✓ Laravel Version: 10.10.0
✓ MySQL Extension: Enabled
✓ GD Extension: Enabled
✓ File Permissions: OK
```

### Web 界面输出

Web 界面提供美观的可视化输出，包括：
- 彩色标记的状态（✓/✗）
- 实时更新的进度指示器
- 响应式设计，支持移动设备
- 简洁的统计卡片

## 🔒 安全

- **不要在生产环境使用 Web 界面**，除非有适当的访问控制
- **设置 IP 白名单**或使用密码保护
- **定期更新**到最新版本

## 🛠️ 开发

### 运行测试

```bash
composer test
```

### 代码风格

本项目遵循 PSR-12 编码规范。

```bash
composer fix-style
```

## 📝 配置

发布配置文件后，您可以在 `config/debug-assistant.php` 中自定义配置：

```php
return [
    'output_format' => 'table', // table, json, text
    'log_errors' => true,
    'max_log_size' => '10M',
    'web_interface' => [
        'enabled' => true,
        'auth_required' => true,
    ],
];
```

## 🤝 贡献

欢迎贡献！请查看 [贡献指南](docs/contributing.md) 获取详细信息。

## 📄 许可证

MIT License

## 🙏 致谢

- Laravel 团队
- 所有贡献者

## 📞 支持

- 文档: [docs/](docs/)
- 问题: [GitHub Issues](https://github.com/yourusername/laravel-debug-assistant/issues)
- 讨论: [GitHub Discussions](https://github.com/yourusername/laravel-debug-assistant/discussions)

## 📦 版本

### v1.1.0 (2025-01-12)

**新增：**
- ✨ Web 界面支持
- ✨ 共享主机环境支持
- ✨ 实时输出显示
- ✨ 系统监控功能

**改进：**
- 📝 完善文档
- 🎨 优化 UI 设计
- 🚀 提升性能

### v1.0.0 (2024-12-01)

**初始发布：**
- 🎉 38 个 Artisan 命令
- 📦 完整的 CLI 工具
- 📚 详细文档

---

**Laravel Debug Assistant** - 让 Laravel 开发更简单！ 🚀

更多信息请访问：https://github.com/yourusername/laravel-debug-assistant
