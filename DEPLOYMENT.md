# 部署到 GitHub Pages

此项目配置了自动部署到 GitHub Pages 的 GitHub Actions 工作流。

## 配置说明

1. **基础 URL**: Hugo 网站的 `baseURL` 设置为 `https://mayuanyuan-repo.github.io/gitblog/`
   - 这是根据您的仓库名称自动配置的
   - 如果更改了仓库名称，请相应地更新 `hugo.toml` 中的 `baseURL`

2. **工作流**: GitHub Actions 工作流定义在 `.github/workflows/deploy.yml`
   - 每当推送到 `main` 分支时自动触发
   - 自动构建 Hugo 网站并部署到 `gh-pages` 分支

## 启用 GitHub Pages

要启用 GitHub Pages:

1. 在仓库设置 (`Settings` → `Pages`)
2. 将源设置为 `Deploy from a branch`
3. 选择 `gh-pages` 分支和 `/ (root)` 文件夹

## 手动触发部署

您也可以通过以下方式手动触发部署:
1. 在 GitHub 上直接推送更改到 main 分支
2. 或创建 Pull Request 合并到 main 分支

## 故障排除

常见问题:

1. **页面无法加载静态资源（CSS/JS）**:
   - 检查 `hugo.toml` 中的 `baseURL` 是否正确
   - 确保它与 GitHub Pages URL 匹配

2. **部署失败**:
   - 检查 GitHub Actions 日志获取更多信息
   - 验证 Hugo 配置文件是否有语法错误

3. **分支问题**:
   - 默认配置将源代码保存在 `main` 分支
   - Hugo 生成的静态网站部署到 `gh-pages` 分支
