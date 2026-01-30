# 快速参考指南

## 🎯 常用命令速查

### 开发

```bash
# 启动开发服务器（自动打开浏览器）
npm run dev

# 停止开发服务器
Ctrl + C
```

### 构建与发布

```bash
# 构建生产版本
npm run build

# 预览生产构建
npm run preview

# 推送到 GitHub（自动触发 GitHub Actions 部署）
git add .
git commit -m "Your commit message"
git push origin main
```

### Git 基本操作

```bash
# 查看状态
git status

# 查看修改
git diff

# 查看提交历史
git log --oneline

# 撤销最后一次未提交的修改
git checkout .

# 查看分支
git branch -a
```

## 📂 重要文件说明

| 文件 | 说明 |
|------|------|
| `src/App.jsx` | 主应用组件，包含所有页面和业务逻辑 |
| `src/main.jsx` | React 应用入口 |
| `src/index.css` | 全局样式和自定义 CSS |
| `index.html` | HTML 模板 |
| `tailwind.config.js` | Tailwind CSS 样式配置 |
| `vite.config.js` | 构建工具配置 |
| `package.json` | 项目依赖和脚本 |
| `.github/workflows/deploy.yml` | GitHub Actions 自动部署配置 |
| `README.md` | 项目主文档 |
| `DEPLOY.md` | 部署指南 |

## 🎨 修改样式

所有样式使用 **Tailwind CSS** 类名，无需额外的 CSS 文件：

```jsx
// 示例：修改按钮样式
<button className="bg-indigo-600 text-white px-4 py-2 rounded-xl hover:bg-indigo-700">
  按钮文本
</button>
```

### 常用 Tailwind 类

```
bg-[color]-[level]      背景色（如 bg-indigo-600）
text-[color]-[level]    文字色（如 text-slate-700）
px-[size], py-[size]    内边距
rounded-[size]          圆角
shadow-[size]           阴影
hover:[property]        悬停效果
transition-[property]   过渡动画
```

详见 [Tailwind 文档](https://tailwindcss.com/docs)

## 🔗 图标使用

从 [Lucide React](https://lucide.dev) 导入图标：

```jsx
import { IconName } from 'lucide-react';

// 使用
<IconName size={20} className="text-slate-500" />
```

常用图标：
- `Home` - 首页
- `Settings` - 设置
- `Bell` - 通知
- `Menu` - 菜单
- `ChevronDown` - 下拉
- `Plus` - 添加

## 🔀 分支管理

```bash
# 创建新分支
git checkout -b feature/my-feature

# 切换分支
git checkout branch-name

# 删除本地分支
git branch -d branch-name

# 推送新分支
git push -u origin feature/my-feature
```

## ⚙️ 环境配置

项目无需环境变量。如需添加：

1. 创建 `.env` 文件
2. 添加变量：`VITE_API_URL=https://api.example.com`
3. 在代码中使用：`import.meta.env.VITE_API_URL`

## 📊 性能优化

### 构建优化
- 使用 `npm run build` 生成压缩版本
- 构建输出在 `dist` 目录
- 可用于任何静态托管服务

### 开发优化
- 开发时使用 HMR（热模块重载）
- 修改文件后浏览器自动刷新

## 🚨 故障排除

### 问题：依赖安装失败
```bash
# 清除缓存后重新安装
rm -rf node_modules package-lock.json
npm install
```

### 问题：端口 3000 被占用
```bash
# 修改 vite.config.js 中的端口配置
port: 3001 // 改为其他端口
```

### 问题：构建失败
```bash
# 检查是否有 TypeScript 错误（如果使用）
npm run build -- --mode development

# 查看详细错误日志
npm run build --verbose
```

## 📚 学习资源

- [React 官方文档](https://react.dev)
- [Vite 官方文档](https://vitejs.dev)
- [Tailwind CSS 文档](https://tailwindcss.com/docs)
- [Lucide 图标库](https://lucide.dev)

## 💡 开发最佳实践

1. **代码组织**：将相关组件和逻辑分组在一起
2. **命名规范**：使用清晰的组件和变量名
3. **性能**：使用 React.memo 避免不必要的重新渲染
4. **注释**：为复杂逻辑添加注释
5. **测试**：构建后进行功能测试

---

**需要更多帮助？** 查看完整的 [README.md](README.md) 和 [DEPLOY.md](DEPLOY.md)
