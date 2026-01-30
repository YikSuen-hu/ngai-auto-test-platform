# GitHub 部署指南

本指南将帮助你将 NGAI 智能客服自动化测试平台部署到 GitHub Pages。

## 📋 前置条件

1. 拥有 GitHub 账户
2. 已在本地安装 Git
3. 项目已按照 README.md 进行了正确配置

## 🚀 部署步骤

### 步骤 1：创建 GitHub 仓库

1. 访问 [GitHub](https://github.com) 并登录
2. 点击 **New** 按钮创建新仓库
3. 仓库名称：`ngai-auto-test-platform`（或自定义名称）
4. 选择 **Public**（公开）仓库
5. 点击 **Create repository**

### 步骤 2：初始化本地 Git 仓库

在项目根目录执行以下命令：

```bash
# 初始化 Git 仓库
git init

# 添加远程仓库地址（将 YOUR-USERNAME 替换为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR-USERNAME/ngai-auto-test-platform.git

# 添加所有文件
git add .

# 创建初始提交
git commit -m "Initial commit: NGAI 自动化测试平台"

# 推送到主分支
git branch -M main
git push -u origin main
```

### 步骤 3：配置 GitHub Pages

1. 进入仓库的 **Settings**（设置）
2. 在左侧菜单找到 **Pages**
3. 在 **Source** 部分：
   - 选择 **Deploy from a branch**
   - 分支选择 **gh-pages**
   - 目录选择 **/ (root)**
4. 点击 **Save**

### 步骤 4：自动部署

由于我们已配置了 GitHub Actions 工作流：

1. 确保 `.github/workflows/deploy.yml` 文件已上传
2. 当你推送到 `main` 或 `master` 分支时，GitHub Actions 会自动：
   - 安装项目依赖
   - 构建项目
   - 部署到 GitHub Pages

### 步骤 5：查看部署状态

1. 在仓库首页，点击 **Actions** 标签
2. 查看最新的工作流运行状态
3. 等待部署完成（通常需要 1-3 分钟）

### 步骤 6：访问你的网站

部署完成后，访问：

```
https://YOUR-USERNAME.github.io/ngai-auto-test-platform/
```

如果仓库名称是 `ngai-auto-test-platform`，替换 `YOUR-USERNAME` 为你的 GitHub 用户名。

## 🔧 高级配置

### 配置自定义域名

如果你拥有自定义域名：

1. 在项目根目录创建 `public/CNAME` 文件
2. 文件内容为你的域名，例如：`mytestplatform.com`
3. 推送更改到 GitHub
4. 在域名提供商处配置 DNS 记录（通常是 CNAME 指向 `YOUR-USERNAME.github.io`）

### 修改 Vite 配置

如果使用自定义域名或非标准路径，需要修改 `vite.config.js`：

```javascript
export default defineConfig({
  base: '/ngai-auto-test-platform/', // 改为你的仓库名称
  // ... 其他配置
})
```

## 🐛 常见问题

### Q: 部署后样式显示不正确？

**A:** 检查 `vite.config.js` 中的 `base` 配置是否正确。它应该是：
```javascript
base: '/ngai-auto-test-platform/', // 如果仓库在此路径
```

### Q: GitHub Actions 部署失败？

**A:** 
1. 检查 Actions 标签下的错误日志
2. 确保 `package.json` 和 `vite.config.js` 配置无误
3. 检查是否有文件未添加到 Git

### Q: 推送代码后没有自动部署？

**A:** 
1. 确认分支名称是 `main` 或 `master`（检查 `.github/workflows/deploy.yml`）
2. 检查仓库的 **Pages** 设置中 Source 是否设置为 **GitHub Actions**
3. 查看 Actions 标签下的运行历史

### Q: 如何更新已部署的网站？

**A:** 只需在本地修改代码后推送：
```bash
git add .
git commit -m "Update: 描述你的更改"
git push origin main
```
GitHub Actions 会自动重新部署。

## 📱 其他部署方式

### 使用 Vercel（推荐替代方案）

1. 访问 [Vercel](https://vercel.com)
2. 使用 GitHub 账户登录
3. 点击 **New Project**
4. 导入你的 GitHub 仓库
5. Vercel 会自动检测配置，点击 **Deploy**

### 使用 Netlify

1. 访问 [Netlify](https://netlify.com)
2. 点击 **New site from Git**
3. 连接 GitHub 账户
4. 选择仓库
5. 构建命令：`npm run build`
6. 发布目录：`dist`

## ✅ 验证清单

部署完成后，检查以下内容：

- [ ] 网站可以访问
- [ ] 所有页面和功能正常工作
- [ ] 样式和布局正确显示
- [ ] 图标加载正确
- [ ] 响应式设计在手机上工作正常
- [ ] 控制台没有错误信息

## 📞 获取帮助

如遇到问题：

1. 查看 [GitHub 官方文档](https://docs.github.com/en/pages)
2. 查看 [Vite 官方文档](https://vitejs.dev/)
3. 在 [GitHub Issues](https://github.com/YOUR-USERNAME/ngai-auto-test-platform/issues) 中提问

---

**祝部署顺利！** 🎉
