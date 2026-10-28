# Ticket App

这是一个基于 Flutter 构建的机票预订与出行应用项目，用于学习与实践 Flutter GUI 布局、状态管理及基础架构设计。

## 项目特性

- **底部导航交互**：采用 `BottomNavigationBar` 实现首页、搜索、机票及个人中心等多页面动态切换。
- **首页头部布局**：结合 `ListView` 与容器布局实现自适应排版，支持本地媒体资源（Logo）的渲染与展示。
- **统一设计规范**：集中管理全局色彩体系与排版字阶（`AppStyles`），统一封装静态资源路径（`AppMedia`）。
- **兼容现代 SDK**：针对 Flutter 3 与 Dart 3 标准进行构建与规范适配。

## 运行方式

```bash
# 获取项目依赖
flutter pub get

# 启动应用
flutter run
```

## 参考资料

- [Flutter 实战视频教程 (dbestech)](https://www.youtube.com/watch?v=DsTMhjaRQws)
- [Flutter 官方开发文档与 Codelab](https://docs.flutter.dev/get-started/codelab)
- [Flutter 发行版本与更新日志说明](https://chatgpt.com/share/67eed8d8-c610-8013-8be5-1c3bce43e46f)
- [Git 与 GitHub 基础操作指南](https://www.youtube.com/watch?v=9i_J7rrJxZ8)
