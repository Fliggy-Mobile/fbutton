<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img width="200" src="https://gw.alicdn.com/tfs/TB1a288sxD1gK0jSZFKXXcJrVXa-360-360.png">
  </a>
</p>

<h1 align="center">FButton</h1>


<div align="center">

<p>从此开发者只用掌握一种 <strong>Button</strong> 组件，就够了。</p>

<p>支持圆角、边框、图标、特效、Loading 模式。</p>

<p><strong>主理人：<a href="https://github.com/chenBingX">纽特</a>(<a href="coorchice.cb@alibaba-inc.com">coorchice.cb@alibaba-inc.com</a>)</strong></p>

<p>

<a href="https://pub.dev/packages/fbutton#-readme-tab-">
    <img height="20" src="https://img.shields.io/badge/Version-1.0.4-important.svg">
</a>


<a href="https://github.com/Fliggy-Mobile/fbutton">
    <img height="20" src="https://img.shields.io/badge/Build-passing-brightgreen.svg">
</a>


<a href="https://github.com/Fliggy-Mobile">
    <img height="20" src="https://img.shields.io/badge/Team-FAT-ffc900.svg">
</a>

<a href="https://www.dartcn.com/">
    <img height="20" src="https://img.shields.io/badge/Language-Dart-blue.svg">
</a>

<a href="https://pub.dev/documentation/fbutton/latest/fbutton/fbutton-library.html">
    <img height="20" src="https://img.shields.io/badge/API-done-yellowgreen.svg">
</a>

<a href="http://www.apache.org/licenses/LICENSE-2.0.txt">
   <img height="20" src="https://img.shields.io/badge/License-Apache--2.0-blueviolet.svg">
</a>

<p>
<p>

<img height="500" src="https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_all.png">

</div>

**[English](https://github.com/Fliggy-Mobile/fbutton) | 简体中文**

> 感觉还不错？请投出您的 **Star** 吧 🥰 ！

# ✨ 特性

- 丰富的 **边角** 效果

- 精美的 **边框** 装饰

- **渐变效果** 也不在话下

- 灵活的 **图标** 支持

- 贴心的 **Loading** 模式

- 炫酷的交互 **特效**

- 更具空间感的 **阴影**


# 🛠 使用指南

## ⚙️ 参数


### 🔩 基础参数

|参数|类型|必要|默认值|说明|
|---|---|:---:|---|---|
|onPressed|VoidCallback|是|null|点击回调。如果为 null，FButton 会进入不可用状态|
|height|double|否|null|高度|
|width|double|否|null|宽度|
|text|String|否|null|按钮文本|
|textColor|Color|否|Colors.black12|按钮文本颜色|
|fontSize|double|否|12|按钮文本字号|
|fontStyle|FontStyle|否|null|按钮文本字体|
|color|Color|否|null|按钮颜色|
|disabledColor|Color|否|null|FButton 不可用状态时的颜色|
|focusNode|FocusNode|否|null|焦点|
|autofocus|bool|否|false|是否能够自动获取焦点|
|padding|EdgeInsetsGeometry|否|EdgeInsets.symmetric(horizontal: 16.0, vertical: 16)|FButton 内间距|
|corner|Corner|否|null|配置 FButton 的边角|
|cornerStyle|CornerStyle|否|CornerStyle.round|配置 FButton 的边角样式。round-圆角，bevel-斜切|
|strokeColor|Color|否|Colors.black|边框颜色|
|strokeWidth|double|否|0|边框宽度。当 strokeWidth>0 时边框就会出现|
|gradient|Gradient|否|null|配置渐变色。会覆盖 color 属性|
|fontHeight|double|否|null|一行文字高度 = textSize * fontHeight|
|textWeight|double|否|FontWeight.normal|文字粗细|

### 💫 Effect 参数
|参数|类型|必要|默认值|说明|
|---|---|:---:|---|---|
|effect|bool|否|false|是否启用触摸特效|
|clickEffect|bool|否|false|是否启用点击特效|
|hoverColor|Color|否|null|鼠标悬停状态时 FButton 的颜色|
|highlightColor|Color|否|null|触摸时 FButton 的颜色。需要 effect=true|
|splashColor|Color|否|null|触摸时触点位置的颜色。需要 effect=true|


###  🔳 阴影参数
|参数|类型|必要|默认值|说明|
|---|---|:---:|---|---|
|shadowColor|Color|否|Colors.grey|阴影颜色|
|shadowOffset|Offset|否|Offset.zero|阴影偏移|
|shadowBlur|double|否|1.0|阴影模糊程度，值越大，阴影范围越大|

### 🖼 图标和 Loading 参数
|参数|类型|必要|默认值|说明|
|---|---|:---:|---|---|
|image|Widget|否|null|可为 FButton 配置一个图标|
|imageMargin|double|否|6.0|图标与文本的间距|
|imageAlignment|ImageAlignment|否|ImageAlignment.left|图标与文本的相对位置|
|loading|bool|否|false|是否进入 Loading 状态|
|clickLoading|bool|否|false|是否在点击 FButton 后进入 Loading 状态|
|loadingColor|Color|否|null|Loading 的颜色|
|loadingStrokeWidth|double|否|4.0|Loading 的宽度|
|hideTextOnLoading|bool|否|false|Loading 状态下是否隐藏文本|
|loadingText|String|否|null|Loading 状态下的文本|
|loadingSize|double|否|12|Loading 的大小|

## 📺 使用示例

### 🔩 基本使用

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_normal.jpg)

```dart

// #Normal
FButton(
  width: 100,
  text: "#Normal",
  textColor: Colors.white,
  fontSize: 9,
  color: Color(0xffFFc900),
  onPressed: () {
    toast(context, "FWidget 👍");
  },
)

// #Disable
FButton(
  width: 100,
  text: "#Disable",
  textColor: Colors.white,
  fontSize: 9,
  color: Color(0xffFFc900),
  disabledTextColor: Colors.b
  disabledColor: Colors.grey[
)

```
通过简单的配置 `text` 以及 `onPressed`，即可构造一个可用 **FButton**。

如果没有设置 `onPressed`，**FButton** 会自动被识别未不可用状态。此时 **FButton** 会有一个默认的不可用状态样式。

你也可以自由的配置 **FButton** 不可用状态下的样式通过 `disabledXXX` 属性。

### 🎈 圆角 和 边框 

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_corner_effect.gif)


```dart
// #1
FButton(
  width: 130,
  effect: true,
  text: "FButton #1",
  textColor: Colors.white,
  color: Color(0xffFF7043),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner.all(25),
),

// #2
FButton(
  width: 130,
  effect: true,
  text: "FButton #2",
  textColor: Colors.white,
  color: Color(0xffFFA726),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner(
    leftBottomCorner: 40,
    leftTopCorner: 6,
    rightTopCorner: 40,
    rightBottomCorner: 6,
  ),
),

// #3
FButton(
  width: 130,
  effect: true,
  text: "FButton #3",
  textColor: Colors.white,
  color: Color(0xffFFc900),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner(leftTopCorner: 10),
  cornerStyle: FButtonCornerStyle.bevel,
  strokeWidth: 0.5,
  strokeColor: Color(0xffF9A825),
),

// #4
FButton(
  width: 130,
  effect: true,
  padding: EdgeInsets.fromLTRB(6, 16, 30, 16),
  text: "FButton #4",
  textColor: Colors.white,
  color: Color(0xff00B0FF),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner(
      rightTopCorner: 25,
      rightBottomCorner: 25),
  cornerStyle: FButtonCornerStyle.bevel,
  strokeWidth: 0.5,
  strokeColor: Color(0xff000000),
),

```

你可以为 **FButton** 添加圆角，通过 `corner` 属性。甚至，你可以单独控制每一个圆角。

默认情况下，**FButton** 的边角为圆角。通过设置 `cornerStyle: FButtonCornerStyle.bevel`，可以获得斜角效果。

**FButton** 支持控件边框，前提是 `strokeWidth > 0` 即可获得效果 🥳。

### 🌈 渐变色

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_gradient.jpg)

```dart

// #1
FButton(
  width: 100,
  height: 60,
  text: "#1",
  textColor: Colors.white,
  color: Color(0xffFFc900),
  gradient: LinearGradient(colors: [
    Color(0xff00B0FF),
    Color(0xffFFc900),
  ]),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner.all(8),
)
```

通过 `gradient` 属性，可以构建带有渐变色的 **FButton** 你可以自由构建多种类型的渐变色。

### 🍭 图标

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_image.jpg)

```dart

// #1
FButton(
  width: 88,
  height: 38,
  padding: EdgeInsets.all(0),
  text: "Back",
  textColor: Colors.white,
  color: Color(0xffffc900),
  onPressed: () {
    toast(context, "Back!");
  },
  clickEffect: true,
  corner:
  FButtonCorner(
    leftTopCorner: 25,
    leftBottomCorner: 25,),
  image: Icon(
    Icons.arrow_back_ios,
    color: Colors.white,
    size: 12,
  ),
  imageMargin: 8,
),


// #3
FButton(
  onPressed: () {},
  image: Icon(
    Icons.print,
    color: Colors.grey,
  ),
  imageMargin: 8,
  imageAlignment: ImageAlignment.top,
  text: "Print",
  textColor: Colors.grey,
  color: Colors.transparent,
),

```

`image` 属性能够为 **FButton** 设置一个图片而且你能够调整图片相对与文本的位置，通过 `imageAlignment`。

如果按钮不需要背景，设置 `color: Colors.transparent` 即可。


### 🔥 特效

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/fbutton_effect.gif)

```dart

FButton(
  width: 200,
  effect: true,
  text: "Try Me!",
  textColor: Colors.white,
  color: Color(0xffffc900),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner.all(9),
  splashColor: Color(0xffff7043),
  highlightColor: Color(0xffE65100).withOpacity(0.20),
  hoverColor: Colors.redAccent.withOpacity(0.16),
),
```

默认情况下，FButton 会关闭点击特效，你可以通过设置 `effect: true` 来开启。

> 最好不要让 `effect` 和 `clickEffect` 属性为 **true**。

同时，通过 `splashColor` 属性可以配置触点位置的波纹颜色。

通过 `highlightColor` 属性可以配置 **FButton** 的按压时的高亮颜色

`hoverColor` 可配置鼠标移到 **FButton** 范围中时的颜色，这在 Web 开发时会被用到。

### 🔆 Loading

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/flutter_loading.gif)

```dart
// #1
FButton(
  effect: true,
  text: "Click top loading",
  textColor: Colors.white,
  color: Color(0xffffc900),
  onPressed: () {
    print("Loading...");
  },
  clickEffect: true,
  corner: FButtonCorner.all(9),
  loadingSize: 15,
  imageMargin: 6,
  loadingStrokeWidth: 2,
  clickLoading: true,
  loadingColor: Colors.white,
  loadingText: "Loading...",
  imageAlignment: ImageAlignment.top,
),

// #2
FButton(
  width: 170,
  height: 70,
  effect: true,
  text: "Click to loading",
  textColor: Colors.white,
  color: Color(0xffffc900),
  onPressed: () {
    print("Loading...");
  },
  clickEffect: true,
  corner: FButtonCorner.all(9),
  image: Icon(
    Icons.cloud_download,
    size: 18,
    color: Colors.white,
  ),
  imageMargin: 8,
  loadingSize: 15,
  loadingStrokeWidth: 2,
  clickLoading: true,
  loadingColor: Colors.white,
  loadingText: "Loading...",
  hideTextOnLoading: true,
),
```

通过 `loading` 属性，可为 **FButton** 配置 **Loading** 效果。

当 **FButton** 处于 **Loading** 状态时，**FButton** 将会进入不可用状态，`onPress` 将不会再被触发，不可用样式也将被应用。

同时 `loadingText` 将会覆盖 `text`，如果它不为 **null** 的话。

通过 `clickLoading` 属性可以实现点击开始 **Loading** 的效果。

其中 `loading` 的位置会受到 `imageAlignment` 属性的影响。

当 `hideTextOnLoading: true` 时，如果 **FButton** 处于 `loading` 状态，那么其文本将会被隐藏起来。

## 阴影

![](https://raw.githubusercontent.com/chenBingX/img/master/Flutter/fbutton/flutter_shadow.gif)

```dart

FButton(
  width: 200,
  effect: true,
  text: "Shadow",
  textColor: Colors.white,
  color: Color(0xffffc900),
  onPressed: () {},
  clickEffect: true,
  corner: FButtonCorner.all(28),
  shadowColor: Colors.black87,
  shadowBlur: _shadowBlur,
),
```

**FButton** 允许配置阴影的颜色、大小、以及位置。


# 😃 如何使用？

在项目 `pubspec.yaml` 文件中添加依赖：

## 🌐 pub 依赖方式

```
dependencies:
  fbutton: ^<版本号>
```

> ⚠️ 注意，请到 [**pub**](https://pub.dev/packages/fbutton) 获取 **FButton** 最新版本号

## 🖥 git 依赖方式

```
dependencies:
  fbutton:
    git:
      url: 'git@github.com:Fliggy-Mobile/fbutton.git'
      ref: '<分支号 或 tag>'
```


> ⚠️ 注意，分支号 或 tag 请以 [**FButton**](https://github.com/Fliggy-Mobile/fbutton) 官方项目为准。


# 💡 License

```
Copyright 2020-present Fliggy Android Team <alitrip_android@list.alibaba-inc.com>.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at following link.

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

```


### 感觉还不错？请投出您的 [**Star**](https://github.com/Fliggy-Mobile/fbutton) 吧 🥰 ！

