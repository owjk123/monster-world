# 🎮 怪物世界 - GitHub Pages 部署版

这是《怪物世界》游戏的纯静态H5前端，可以部署到GitHub Pages上直接运行。

---

## 🚀 一键部署到GitHub Pages

### 方法一：手动上传（最简单）

1. **新建GitHub仓库**
   - 登录你的GitHub账号
   - 点击右上角 "+" → "New repository"
   - 仓库名: `monster-world` (或任意名字)
   - 选择 Public
   - 点击 "Create repository"

2. **上传文件**
   - 进入新建的仓库
   - 点击 "uploading an existing file"
   - 把本文件夹所有文件拖进去
   - 点击 "Commit changes"

3. **启用GitHub Pages**
   - 进入仓库 Settings
   - 左侧找到 Pages
   - Source 选择 "Deploy from a branch"
   - Branch 选择 "main" 或 "master"，/root
   - 点击 Save
   - 等待1-2分钟，上方会显示访问地址！

---

## 🔧 后端API配置

### 更新API地址

游戏需要后端API才能正常运行。部署后你需要修改 `assets/index-*.js` 中的API地址：

1. 先获取你的后端公网地址（如ngrok地址或云服务器地址）
2. 在 `dist/assets/` 目录下找到 `index-xxxxxxx.js`
3. 搜索并替换 `http://你的后端IP:3001` 为实际的后端地址

或者在构建前修改 `.env.production` 文件。

---

## 📱 手机端使用

部署完成后，手机浏览器直接打开GitHub Pages地址即可游玩！

**建议**: 在手机浏览器中选择"添加到主屏幕"，可以像APP一样使用！

---

## 👤 测试账号

| 邮箱 | 密码 |
|------|------|
| test@example.com | test123456 |
| local@example.com | local123456 |

---

## 🎯 游戏功能

- ✅ 289种怪物收集
- ✅ 回合制战斗系统
- ✅ 多区域探索
- ✅ 背包和商店系统
- ✅ 任务系统
- ✅ PVP对战
- ✅ 好友和聊天

---

## 📁 文件说明

```
GitHubPages版本/
├── index.html              # 入口文件
├── 404.html               # SPA路由支持
├── .nojekyll              # GitHub Pages配置
├── assets/                # 静态资源
│   ├── index-*.js         # 主JS文件
│   ├── index-*.css        # 样式文件
│   └── *.png/svg         # 图片资源
└── README.md              # 本文档
```

---

## 💡 提示

- GitHub Pages 地址格式: `https://你的用户名.github.io/仓库名/`
- 首次部署可能需要1-2分钟生效
- 如果游戏加载慢，刷新几次即可
- 确保后端服务正常运行，否则无法登录和使用功能

---

## 🎉 祝你游戏愉快！