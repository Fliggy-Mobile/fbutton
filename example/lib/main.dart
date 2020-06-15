import 'package:flutter/material.dart';
import 'package:fbutton/fbutton.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FButtonPage(),
    );
  }
}

class FButtonPage extends StatefulWidget {
  @override
  _FButtonPageState createState() => _FButtonPageState();
}

class _FButtonPageState extends State<FButtonPage> {
  var _shadowBlur;

  @override
  void initState() {
    _shadowBlur = 5.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffc900),
          title: const Text('FButton Demo'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Normal FButton
                  buildTitle("Normal FButton"),
                  buildSmallMargin(),
                  buildNormalButton1(),
                  buildDesc('通过简单的配置 text 以及 onPressed，即可构造一个可用 FButton\n'
                      '如果没有设置 onPressed，FButton 会自动被识别未不可用状态\n'
                      '此时 FButton 会有一个默认的不可用状态样式'),
                  buildNormalButton2(),
                  buildDesc('你可以自由的配置 FButton 不可用状态下的样式\n'
                      '通过 disabledXXX 属性'),
                  buildNormalButton3(),
                  buildMiddleMargin(),

                  /// Corner FButton
                  buildTitle("Corner FButton"),
                  buildSmallMargin(),
                  buildCornerButton1(),
                  buildDesc('你可以为 FButton 添加圆角，通过 corner 属性\n'
                      '甚至，你可以单独控制每一个圆角'),
                  buildCornerButton2(),
                  buildDesc('默认情况下，FButton 的边角为圆角\n'
                      '通过设置 "cornerStyle: FButtonCornerStyle.bevel"，可以获得斜角效果'),
                  buildMiddleMargin(),

                  /// Custom Size & Gradient FButton
                  buildTitle("Custom Size & Gradient FButton"),
                  buildSmallMargin(),
                  buildGradientButton1(),
                  buildDesc("默认情况下，FButton 的宽将会尽可能的大。"
                      "\n你也可以手动指定它的 width 和 height"),
                  buildGradientButton2(),
                  buildDesc("通过 gradient 属性，可以构建带有渐变色的 FButton\n"
                      "你可以自由构建多种类型的渐变色"),
                  buildGradientButton3(),
                  buildMiddleMargin(),

                  /// Stroke FButton
                  buildTitle("Stroke FButton"),
                  buildSmallMargin(),
                  buildStrokeButton(),
                  buildDesc("FButton 支持控件边框，前提是 strokeWidth > 0 即可获得效果 🥳"),
                  buildMiddleMargin(),

                  /// Image & Loading FButton
                  buildTitle("Image & Loading FButton"),
                  buildSmallMargin(),
                  buildImageButton1(context),
                  buildDesc("image 属性能够为 FButton 设置一个图片\n"
                      "而且你能够调整图片相对与文本的位置，通过 imageAlignment"),
                  buildImageButton2(),
                  buildDesc('如果按钮不需要背景，设置 "color: Colors.transparent" 即可\n'
                      '同时最好不要让 effect 和 clickEffect 属性为 true'),
                  buildLoadingButton1(),
                  buildDesc("通过 loading 属性，可为 FButton 配置 Loading 效果\n"
                      "当 FButton 处于 Loading 状态时，FButton 将会进入不可用状态\n"
                      "onPress 将不会再被触发，不可用样式也将被应用\n"
                      "同时 loadingText 将会覆盖 text，如果它不为 null 的话"),
                  buildLoadingButton2(),
                  buildSmallMargin(),

                  /// Effect FButton
                  buildTitle("Effect FButton"),
                  buildSmallMargin(),
                  buildEffectButton(),
                  buildDesc('默认情况下，FButton 会关闭点击特效，你可以通过设置 "effect: true" 来开启\n'
                      '同时，通过 splashColor 属性可以配置触点位置的波纹颜色\n'
                      '通过 highlightColor 属性可以配置 FButton 的按压时的高亮颜色\n'
                      'hoverColor 可配置鼠标移到 FButton 范围中时的颜色，这在 Web 开发时会被用到'),
                  buildTitle("Shadow FButton"),
                  buildSmallMargin(),
                  buildShadowButton(),
                  ///////
                  buildMiddleMargin(),
                  buildMiddleMargin(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget buildShadowButton() {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: <Widget>[
          FButton(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            effect: true,
            text: "Shadow FButton",
            textColor: Colors.white,
            color: Color(0xffffc900),
            onPressed: () {},
            clickEffect: true,
            corner: FButtonCorner.all(28),
            shadowColor: Colors.black87,
            shadowBlur: _shadowBlur,
          ),
          buildDesc("FButton 允许配置阴影的颜色、大小、以及位置\n"
              "拖动滑块试试 🤠"),
          Container(
            width: 200,
            child: Slider(
              label: _shadowBlur.toString(),
              value: _shadowBlur,
              min: 0.0,
              max: 20,
              divisions: 40,
              activeColor: Color(0xffffc900),
              inactiveColor: Color(0xffffc900).withOpacity(0.38),
              onChanged: (v) {
                setState(() {
                  _shadowBlur = v;
                });
              },
            ),
          ),
        ],
      );
    });
  }

  FButton buildEffectButton() {
    return FButton(
      width: 200,
      height: 50,
      alignment: Alignment.center,
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
    );
  }

  Widget buildLoadingButton2() {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FButton(
                padding: EdgeInsets.all(12.0),
                effect: true,
                text: "Click left loading",
                textColor: Colors.white,
                color: Color(0xffffc900),
                onPressed: () {
                  print("Loading...");
                },
                clickEffect: true,
                corner: FButtonCorner.all(9),
                loadingSize: 15,
                imageMargin: 16,
                loadingStrokeWidth: 2,
                clickLoading: true,
                loadingColor: Colors.white,
                loadingText: "Loading...",
              ),
              SizedBox(
                width: 10,
              ),
              FButton(
                padding: EdgeInsets.all(12.0),
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
            ],
          ),
          buildDesc("通过 clickLoading 属性实现点击开始 loading 的效果\n"
              "loading 的位置会受到 imageAlignment 属性的影响"),
          FButton(
            width: 170,
            height: 70,
            effect: true,
            alignment: Alignment.center,
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
          buildDesc('当 "hideTextOnLoading: true" 时，如果 FButton 处于 loading 状态\n'
              '那么其文本将会被隐藏起来'),
          FButton(
            width: 100,
            height: 30,
            alignment: Alignment.center,
            text: "Reset",
            textColor: Colors.white,
            corner: FButtonCorner.all(25),
            onPressed: () {
              setState(() {});
            },
            color: Color(0xffffc900),
            clickEffect: true,
            shadowColor: Colors.black38,
          ),
        ],
      );
    });
  }

  Widget buildLoadingButton1() {
    return FButton(
      width: 200,
      height: 50,
      effect: true,
      text: "loading",
      textColor: Colors.white,
      color: Color(0xffffc900),
      onPressed: () {
        print("Loading...");
      },
      clickEffect: true,
      corner: FButtonCorner.all(30),
      loadingSize: 15,
      imageMargin: 16,
      loadingStrokeWidth: 2,
      loading: true,
      loadingColor: Colors.white,
      loadingText: "Loading...",
    );
  }

  Row buildImageButton2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FButton(
          onPressed: () {},
          image: Icon(
            Icons.add_a_photo,
            color: Color(0xffffc900),
          ),
          imageMargin: 8,
          text: "Take Photo",
          textColor: Colors.grey,
          color: Colors.transparent,
        ),
        SizedBox(
          width: 16,
        ),
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
      ],
    );
  }

  Row buildImageButton1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FButton(
          width: 88,
          height: 38,
          padding: EdgeInsets.all(0),
          text: "Back",
          textColor: Colors.white,
          color: Color(0xffffc900),
          onPressed: () {
            _showDialog(context, "Back!");
          },
          clickEffect: true,
          corner: FButtonCorner(leftTopCorner: 25, leftBottomCorner: 25),
          image: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 12,
          ),
          imageMargin: 8,
        ),
        Container(
            height: 38,
            child: VerticalDivider(width: 0.25, color: Colors.black)),
        FButton(
          width: 88,
          height: 38,
          padding: EdgeInsets.all(0),
          text: "Forward",
          textColor: Colors.white,
          color: Color(0xffffc900),
          onPressed: () {
            _showDialog(context, "Forward!");
          },
          corner: FButtonCorner(rightTopCorner: 25, rightBottomCorner: 25),
          image: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 12,
          ),
          imageMargin: 8,
          imageAlignment: ImageAlignment.right,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: FButton(
            effect: true,
            width: 38,
            height: 38,
            padding: EdgeInsets.all(0),
            color: Color(0xffffc900),
            onPressed: () {
              _showDialog(context, "Search!");
            },
            clickEffect: true,
            corner: FButtonCorner.all(19),
            image: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Padding buildStrokeButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: FButton(
        text: "Stroke FButton",
        textColor: Colors.black87,
        color: Colors.white,
        onPressed: () {},
        clickEffect: true,
        corner: FButtonCorner.all(6),
        strokeWidth: 1,
        strokeColor: Colors.black87,
      ),
    );
  }

  Padding buildGradientButton3() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        text: "RadialGradient FButton",
        textColor: Colors.white,
        color: Color(0xffffc900),
        gradient: RadialGradient(
          center: const Alignment(0.6, 0.2),
          radius: 0.2,
          colors: [
            const Color(0xFF0099FF),
            const Color(0xffffc900),
          ],
          stops: [0.4, 1.0],
        ),
        onPressed: () {},
        clickEffect: true,
        corner: FButtonCorner.all(9),
      ),
    );
  }

  Padding buildGradientButton2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        width: 200,
        height: 90,
        alignment: Alignment.center,
        text: "SweepGradient FButton",
        textColor: Colors.white,
        color: Color(0xffffc900),
        gradient: SweepGradient(
          center: Alignment.center,
          startAngle: 0.0,
          endAngle: math.pi * 2,
          colors: const <Color>[
            Colors.blue,
            Colors.green,
            Colors.yellow,
            Colors.red,
            Colors.blueAccent,
          ],
        ),
        onPressed: () {},
        clickEffect: true,
        corner: FButtonCorner.all(9),
      ),
    );
  }

  Padding buildGradientButton1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        text: "LinearGradient FButton",
        textColor: Colors.white,
        color: Color(0xffFFc900),
        gradient: LinearGradient(colors: [
          Color(0xff00B0FF),
          Color(0xffFFc900),
        ]),
        onPressed: () {},
        clickEffect: true,
        corner: FButtonCorner.all(9),
      ),
    );
  }

  Widget buildCornerButton2() {
    return Container(
      width: 360,
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xffFF7043),
                onPressed: () {},
                clickEffect: true,
                corner: FButtonCorner(leftTopCorner: 10),
                cornerStyle: FButtonCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xffD84315),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
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
                cornerStyle: FButtonCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xffEF6C00),
              ),
            ],
          ),
          buildSmallMargin(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FButton(
                effect: true,
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xffFFc900),
                onPressed: () {},
                clickEffect: true,
                corner:
                    FButtonCorner(rightTopCorner: 25, rightBottomCorner: 25),
                cornerStyle: FButtonCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xffF9A825),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xff00B0FF),
                onPressed: () {},
                clickEffect: true,
                corner: FButtonCorner(leftTopCorner: 35, rightTopCorner: 35),
                cornerStyle: FButtonCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xff0288D1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCornerButton1() {
    return Container(
      width: 360,
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xffFF7043),
                onPressed: () {},
                clickEffect: true,
                corner: FButtonCorner(leftTopCorner: 18),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
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
            ],
          ),
          buildSmallMargin(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xffFFc900),
                onPressed: () {},
                clickEffect: true,
                corner: FButtonCorner(leftTopCorner: 25, leftBottomCorner: 25),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                effect: true,
                text: "Corner FButton",
                textColor: Colors.white,
                color: Color(0xff00B0FF),
                onPressed: () {},
                clickEffect: true,
                corner: FButtonCorner(leftTopCorner: 35, rightTopCorner: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildNormalButton3() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        text: "Normal FButton",
        textColor: Colors.white,
        disabledTextColor: Colors.black38,
        color: Color(0xffF8AD36),
        disabledColor: Colors.grey[300],
      ),
    );
  }

  Padding buildNormalButton2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        text: "Normal FButton",
        textColor: Colors.white,
        color: Color(0xffFFc900),
      ),
    );
  }

  Widget buildNormalButton1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        height: 40,
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        text: "Normal FButton",
        textColor: Colors.white,
        color: Color(0xffFFc900),
        onPressed: () {
//                            _showDialog(context, "Hi");
        },
        effect: true,
        clickEffect: true,
        splashColor: Colors.black,
        highlightColor: Colors.red,
        hoverColor: Colors.blue,
      ),
    );
  }

  SizedBox buildMiddleMargin() {
    return const SizedBox(
      height: 18,
    );
  }

  SizedBox buildSmallMargin() {
    return const SizedBox(
      height: 10,
    );
  }

  void _showDialog(BuildContext context, String msg) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    msg,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              backgroundColor: Colors.black45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ));
  }

  Padding buildDesc(String desc) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ));
  }

  Container buildTitle(String title) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(9),
      color: Color(0xffe0e0e0).withOpacity(0.38),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
