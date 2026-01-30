# 🎉 项目初始化完成！

欢迎使用 **NGAI 智能客服自动化测试平台**！

这个项目已经为你完整配置，可以直接使用或部署到 GitHub。

## 📦 项目已包含的内容

✅ **完整的 React + Tailwind 应用**
- 主应用组件 (`src/App.jsx`)
- CSS 样式配置 (`src/index.css`)
- HTML 模板 (`index.html`)

✅ **构建工具配置**
- Vite 配置文件
- Tailwind CSS 配置
- PostCSS 配置
- EditorConfig 配置

✅ **Git 和 GitHub 支持**
- `.gitignore` - Git 忽略文件配置
- GitHub Actions 自动部署脚本
- Git 初始化辅助脚本

✅ **完整的文档**
- README.md - 项目主文档
- DEPLOY.md - 详细部署指南
- QUICK_START.md - 快速参考
- CHANGELOG.md - 变更日志
- LICENSE - MIT 许可证

## 🚀 快速开始（3 步）

### 1️⃣ 安装依赖

```bash
npm install
```

### 2️⃣ 启动开发服务器

```bash
npm run dev
```

浏览器会自动打开 `http://localhost:3000`

### 3️⃣ 开始开发

在 `src/App.jsx` 中修改代码，浏览器会实时刷新！

## 📤 部署到 GitHub（5 步）

### 步骤 1：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 填写信息：
   - **Repository name**: `ngai-auto-test-platform`
   - **Description**: NGAI 智能客服自动化测试平台
   - **Public**: 选择公开
3. 点击 **Create repository**

### 步骤 2：运行初始化脚本（Windows）

```bash
init-github.bat
```

或 **MacOS/Linux**：

```bash
bash init-github.sh
```

按提示输入你的 GitHub 用户名和仓库名称。

### 步骤 3：推送代码

```bash
git push -u origin main
```

### 步骤 4：配置 GitHub Pages

1. 进入仓库的 **Settings**
2. 找到左侧的 **Pages**
3. 在 **Source** 中选择 **Deploy from a branch**
4. 选择分支 `gh-pages` 和 `/(root)`
5. 点击 **Save**

### 步骤 5：访问你的网站

等待 1-3 分钟后，访问：

```
https://YOUR-USERNAME.github.io/ngai-auto-test-platform/
```

替换 `YOUR-USERNAME` 为你的 GitHub 用户名。

## 📁 项目结构一览

```
ngai-auto-test-platform/
├── .github/
│   └── workflows/
│       └── deploy.yml          ← GitHub Actions 自动部署
├── src/
│   ├── App.jsx                 ← 主应用组件
│   ├── main.jsx                ← React 入口
│   └── index.css               ← 全局样式
├── public/                      ← 静态资源
├── index.html                   ← HTML 模板
├── package.json                 ← 项目依赖
├── vite.config.js              ← Vite 配置
├── tailwind.config.js          ← Tailwind CSS 配置
├── postcss.config.js           ← PostCSS 配置
├── .gitignore                  ← Git 忽略配置
├── README.md                   ← 项目文档
├── DEPLOY.md                   ← 部署指南
├── QUICK_START.md              ← 快速参考
├── CHANGELOG.md                ← 变更日志
├── LICENSE                     ← MIT 许可证
├── init-github.bat             ← Windows Git 初始化脚本
└── init-github.sh              ← MacOS/Linux Git 初始化脚本
```

## 🛠️ 常用命令

```bash
# 开发
npm run dev           # 启动开发服务器
npm run build         # 构建生产版本
npm run preview       # 预览生产构建

# Git
git add .            # 添加所有修改
git commit -m "msg"  # 提交修改
git push             # 推送到 GitHub
```

## 📚 学习资源

- [React 官方文档](https://react.dev)
- [Tailwind CSS 文档](https://tailwindcss.com)
- [Vite 官方文档](https://vitejs.dev)
- [GitHub Pages 文档](https://docs.github.com/en/pages)

## 🎯 主要功能一览

| 功能 | 说明 |
|------|------|
| 📊 首页仪表板 | 实时监控和快速导航 |
| 💬 对话管理 | 流程设计和 NLP 配置 |
| 📖 知识库 | 条目管理和预警 |
| ✅ 质量中心 | 完整的测试管理工具 |
| 📈 报表分析 | 数据统计和可视化 |
| ⚙️ 系统设置 | 权限管理和审计 |

## 🔧 项目配置调整

### 修改网站标题

编辑 `index.html`:
```html
<title>你的网站标题</title>
```

### 修改项目名称

编辑 `package.json`:
```json
{
  "name": "your-project-name",
  "description": "你的项目描述"
}
```

### 修改样式主题

编辑 `tailwind.config.js`:
```javascript
theme: {
  colors: {
    // 自定义颜色
  }
}
```

## 📞 需要帮助？

查看以下文档了解详情：

- **快速问题？** → 查看 [QUICK_START.md](QUICK_START.md)
- **部署有问题？** → 查看 [DEPLOY.md](DEPLOY.md)
- **项目说明？** → 查看 [README.md](README.md)
- **查看更新？** → 查看 [CHANGELOG.md](CHANGELOG.md)

## ✨ 下一步建议

1. **本地测试**：运行 `npm run dev` 测试所有功能
2. **自定义内容**：根据需要修改项目信息和样式
3. **创建 GitHub 仓库**：按上面的步骤部署到 GitHub
4. **分享你的项目**：与朋友分享你的 GitHub 仓库链接！

---

**项目已准备就绪！** 祝你开发愉快！ 🚀

Made with ❤️ for automation testing
