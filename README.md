# Karate 自动化测试项目

这是一个使用Karate框架实现的自动化测试项目，包含了API测试和Web UI测试示例。

## 项目概述

本项目使用Karate框架进行自动化测试，具有以下特点：

- 支持API和Web UI测试
- 使用BDD（行为驱动开发）风格编写测试用例
- 自动生成HTML测试报告
- 配置灵活，支持多环境

## 环境要求

- JDK 11 或更高版本
- Maven 3.6 或更高版本
- Chrome浏览器（用于Web UI测试）

## 项目结构

```
src/test/java/
├── examples/
│   ├── api/          # API测试用例
│   │   ├── posts.feature
│   │   └── PostsTest.java
│   └── web/          # Web UI测试用例
│       ├── login.feature
│       └── WebTest.java
└── karate-config.js  # Karate配置文件
```

## 测试用例说明

### API测试

项目包含了对[JSONPlaceholder](https://jsonplaceholder.typicode.com)的API测试示例：

- `posts.feature`: 测试posts相关的API接口
  - GET /posts
  - POST /posts
  - 等其他CRUD操作

### Web UI测试

项目包含了对[The Internet](http://the-internet.herokuapp.com)的Web UI测试示例：

- `login.feature`: 测试登录功能
  - 测试成功登录场景
  - 测试失败登录场景

## 配置说明

项目配置在`karate-config.js`文件中：

```javascript
var config = {
    env: env,
    baseUrl: 'https://jsonplaceholder.typicode.com',
    webUrl: 'http://the-internet.herokuapp.com'
};
```

- `baseUrl`: API测试的基础URL
- `webUrl`: Web UI测试的基础URL

## 运行测试

### 运行所有测试

```bash
mvn test
```

### 运行特定测试类

运行API测试：
```bash
mvn test -Dtest=PostsTest
```

运行Web UI测试：
```bash
mvn test -Dtest=WebTest
```

## 测试报告

测试执行完成后，可以在`target/karate-reports`目录下查看HTML格式的测试报告：

- `karate-summary.html`: 测试总览报告
- `karate-tags.html`: 按标签分类的测试报告
- `karate-timeline.html`: 测试执行时间线
- 各个feature文件对应的详细报告

## 注意事项

1. 首次运行Web UI测试时，确保Chrome浏览器已安装
2. 确保网络连接正常，能够访问测试目标网站
3. 如需修改测试环境，可通过系统属性`karate.env`指定