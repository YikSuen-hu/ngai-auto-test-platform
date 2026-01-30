# NGAI 智能客服自动化测试平台

[![GitHub](https://img.shields.io/badge/GitHub-NGAI_Auto_Test-informational?style=flat&logo=github)](https://github.com/your-username/ngai-auto-test-platform)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![React](https://img.shields.io/badge/React-18.2.0-blue?logo=react)](https://react.dev)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-3.3.3-38B2AC?logo=tailwind-css)](https://tailwindcss.com)

一个基于 **React 18** 和 **Tailwind CSS** 开发的现代化智能客服自动化测试管理系统。提供直观的界面和强大的功能，助力测试团队提高工作效率。

## 📸 项目功能

| 功能模块 | 描述 |
|---------|------|
| **首页仪表板** | 实时系统监控与快速导航入口 |
| **对话管理** | 可视化流程设计与 NLP 参数配置 |
| **知识库** | 分类管理知识库条目，支持时效性预警 |
| **质量中心** | 包含测试中枢、用例工场、执行监控、决策引擎等深度工具 |
| **报表分析** | 自动化测试数据统计与错误分布展示 |
| **系统设置** | RBAC 权限管理与审计日志 |

## 🚀 快速开始

### 前置要求

- **Node.js** 16.0 或更高版本
- **npm** 或 **yarn** 包管理器

### 安装步骤

1. **克隆项目**
   ```bash
   git clone https://github.com/your-username/ngai-auto-test-platform.git
   cd ngai-auto-test-platform
   ```

2. **安装依赖**
   ```bash
   npm install
   # 或使用 yarn
   yarn install
   ```

3. **启动开发服务器**
   ```bash
   npm run dev
   # 或使用 yarn
   yarn dev
   ```
   
   项目将自动在浏览器中打开 `http://localhost:3000`

4. **构建生产版本**
   ```bash
   npm run build
   # 或使用 yarn
   yarn build
   ```
   
   构建输出将生成到 `dist` 目录

5. **预览生产构建**
   ```bash
   npm run preview
   # 或使用 yarn
   yarn preview
   ```

## 📁 项目结构

```
ngai-auto-test-platform/
├── src/
│   ├── App.jsx              # 主应用组件
│   ├── main.jsx             # React 入口文件
│   └── index.css            # 全局样式与自定义 CSS
├── index.html               # HTML 模板
├── package.json             # 项目依赖配置
├── vite.config.js           # Vite 构建配置
├── tailwind.config.js       # Tailwind CSS 配置
├── postcss.config.js        # PostCSS 配置
├── .gitignore               # Git 忽略配置
└── README.md                # 项目文档
```

## 🛠️ 技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| **React** | ^18.2.0 | 前端框架 |
| **Vite** | ^4.4.5 | 构建工具 |
| **Tailwind CSS** | ^3.3.3 | CSS 框架 |
| **Lucide React** | ^0.263.1 | 图标库 |
| **PostCSS** | ^8.4.27 | CSS 处理器 |
| **Autoprefixer** | ^10.4.14 | CSS 前缀自动添加 |

## 💻 开发指南

### 添加新的页面视图

在 `src/App.jsx` 中创建新的视图组件：

```jsx
const NewView = () => (
  <Card title="新功能" className="animate-in">
    <div>您的内容</div>
  </Card>
);
```

然后在主菜单中添加入口：

```jsx
const topMenu = [
  // ... 其他菜单项
  { id: 'new-feature', label: '新功能', icon: <YourIcon size={18} /> },
];
```

### 自定义样式

所有样式使用 Tailwind CSS。如需自定义，修改 `tailwind.config.js` 中的主题配置。

全局 CSS 在 `src/index.css` 中定义。

### 图标使用

项目使用 [Lucide React](https://lucide.dev) 图标库。浏览完整的图标列表：

```jsx
import { IconName } from 'lucide-react';
```

## 🌐 部署到 GitHub Pages

### 方式一：手动部署

1. 构建项目
   ```bash
   npm run build
   ```

2. 创建 `gh-pages` 分支（如果不存在）
   ```bash
   git checkout --orphan gh-pages
   git rm -rf .
   ```

3. 复制构建文件
   ```bash
   cp -r dist/* .
   git add .
   git commit -m "Deploy to GitHub Pages"
   git push origin gh-pages
   ```

4. 在 GitHub 仓库设置中配置 GitHub Pages，选择 `gh-pages` 分支

### 方式二：使用 GitHub Actions（推荐）

创建 `.github/workflows/deploy.yml` 文件（已在项目中包含），自动化部署流程。

更新仓库设置中的 GitHub Pages 配置为 GitHub Actions。

## 📝 配置说明

### Vite 配置 (`vite.config.js`)

- 开发服务器端口：3000
- 自动打开浏览器：启用
- 生产构建：使用 Terser 压缩

### Tailwind 配置 (`tailwind.config.js`)

- 内容扫描路径：`./index.html` 和 `./src/**/*.{js,ts,jsx,tsx}`
- 自定义动画：`fade-in` 淡入效果
- 字体系列：系统默认字体栈

## 🐛 常见问题

**Q: 启动开发服务器失败？**  
A: 确保已安装所有依赖：`npm install`，并且 Node.js 版本符合要求。

**Q: 样式未应用？**  
A: 清除 Tailwind 缓存：删除 `node_modules/.vite` 目录，重新启动开发服务器。

**Q: 部署到 GitHub Pages 后样式混乱？**  
A: 检查 `vite.config.js` 中的 `base` 配置是否正确设置了仓库名称。

## 📄 许可证

本项目采用 [MIT 许可证](LICENSE)。

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！

1. Fork 项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📞 联系方式

- 提交 [GitHub Issues](https://github.com/your-username/ngai-auto-test-platform/issues)
- 发送邮件至：your-email@example.com

---

**南京新一代人工智能研究院有限公司** © 2025  
Made with ❤️ for better automation testing
