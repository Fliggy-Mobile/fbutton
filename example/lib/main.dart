import 'package:fcontrol/fdefine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fbutton/fbutton.dart';
import 'package:fradio/fradio.dart';
import 'dart:math' as math;
import 'package:fcommon/fcommon.dart';

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
        backgroundColor: mainBackgroundColor,
        appBar: AppBar(
          backgroundColor: mainBackgroundColor,
          title: const Text(
            'FButton',
            style: TextStyle(color: mainTextTitleColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Normal FButton
                  buildTitle("FButton"),
                  buildSmallMargin(),

                  /// Normal FButton 1
                  buildNormalButton1(),
                  buildMiddleMargin(),

                  /// Normal FButton 2
                  buildNormalButton2(),
                  buildMiddleMargin(),

                  /// Normal FButton 3
                  buildNormalButton3(),
                  buildMiddleMargin(),

                  buildTitle("Corner"),
                  buildSmallMargin(),

                  /// Corner FButton
                  buildCornerButton1(),
                  buildBigMargin(),

                  /// Corner FButton
                  buildCornerButton2(),
                  buildMiddleMargin(),

                  buildTitle("Gradient"),
                  buildSmallMargin(),

                  /// Gradient FButton
                  buildGradientButton1(),
                  buildMiddleMargin(),

                  /// Gradient FButton
                  buildGradientButton2(),
                  buildMiddleMargin(),

                  /// Gradient FButton
                  buildGradientButton3(),
                  buildMiddleMargin(),

                  /// Stroke FButton
                  buildTitle("Stroke"),
                  buildSmallMargin(),
                  buildStrokeButton(),
                  buildMiddleMargin(),

                  buildTitle("Image"),
                  buildSmallMargin(),

                  /// Image
                  buildImageButton1(context),
                  buildBigMargin(),

                  /// Image
                  buildImageButton2(),
                  buildBigMargin(),
                  buildTitle("Loading"),
                  buildMiddleMargin(),

                  /// Loading
                  buildLoadingButton1(),
                  buildMiddleMargin(),

                  /// Loading
                  buildLoadingButton2(),
                  buildSmallMargin(),

                  /// Effect FButton
                  buildTitle("Effect"),
                  buildSmallMargin(),

                  /// Hover
                  buildEffectButton(),
                  buildMiddleMargin(),
                  buildTitle("Shadow"),
                  buildSmallMargin(),

                  /// Shadow
                  buildShadowButton(),
                  ///////
                  buildBigMargin(),
                  buildTitle("Neumorphism Style"),
                  buildMiddleMargin(),
                  buildMiddleMargin(),

                  /// Neumorphism
                  neumorphismDemo(),

                  buildBiggestMargin(),
                  buildBiggestMargin(),
                ],
              ),
            ),
          ),
        ));
  }

  Stack neumorphismDemo() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
          child: Column(
            children: [
              /// Neumorphism Style 1
              neumorphismDemo_1(),
              buildMiddleMargin(),
              buildMiddleMargin(),

              /// Neumorphism Style 2
              neumorphismDemo_2(),
            ],
          ),
        ),
        Positioned(
            left: 25,
            top: 0,
            child: Transform.rotate(
              angle: -math.pi / 4.0,
              alignment: Alignment.center,
              child: FRadio.custom(
                value: FLightOrientation.LeftTop,
                groupValue: lightOrientation,
                normal: Image.asset("assets/icon_light_unselected.png"),
                selected: Image.asset("assets/icon_light_selected.png"),
                onChanged: (value) {
                  setState(() {
                    lightOrientation = value;
                  });
                },
              ),
            )),
        Positioned(
            right: 25,
            top: 0,
            child: Transform.rotate(
              angle: math.pi / 4.0,
              alignment: Alignment.center,
              child: FRadio.custom(
                value: FLightOrientation.RightTop,
                groupValue: lightOrientation,
                normal: Image.asset("assets/icon_light_unselected.png"),
                selected: Image.asset("assets/icon_light_selected.png"),
                onChanged: (value) {
                  setState(() {
                    lightOrientation = value;
                  });
                },
              ),
            )),
        Positioned(
            right: 25,
            bottom: 0,
            child: Transform.rotate(
              angle: -math.pi / (3.0 / 4.0),
              alignment: Alignment.center,
              child: FRadio.custom(
                value: FLightOrientation.RightBottom,
                groupValue: lightOrientation,
                normal: Image.asset("assets/icon_light_unselected.png"),
                selected: Image.asset("assets/icon_light_selected.png"),
                onChanged: (value) {
                  setState(() {
                    lightOrientation = value;
                  });
                },
              ),
            )),
        Positioned(
            left: 25,
            bottom: 0,
            child: Transform.rotate(
              angle: math.pi / (3.0 / 4.0),
              alignment: Alignment.center,
              child: FRadio.custom(
                value: FLightOrientation.LeftBottom,
                groupValue: lightOrientation,
                normal: Image.asset("assets/icon_light_unselected.png"),
                selected: Image.asset("assets/icon_light_selected.png"),
                onChanged: (value) {
                  setState(() {
                    lightOrientation = value;
                  });
                },
              ),
            )),
      ],
    );
  }

  FLightOrientation lightOrientation = FLightOrientation.LeftTop;
  double neumorphismSize_1 = 30;
  double neumorphismSize_2 = 30;
  double neumorphismSize_3 = 30;

  Widget neumorphismDemo_1() {
    return StatefulBuilder(builder: (context, setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FButton(
            lightOrientation: lightOrientation,

            /// 开启 Neumorphism 支持
            isSupportNeumorphism: true,
            highlightShadowColor: Colors.white,
            shadowColor: mainShadowColor,
            width: 60,
            height: 60,
            image: Icon(
              Icons.call,
              color: mainTextTitleColor,
              size: neumorphismSize_1,
            ),
            alignment: Alignment.center,
            color: mainBackgroundColor,
            corner: FCorner.all(8.0),
            onPressed: () {},
            onPressedDown: () {
              setState(() {
                neumorphismSize_1 = 26;
              });
            },
            onPressedUp: () {
              setState(() {
                neumorphismSize_1 = 30;
              });
            },
            onPressedCancel: () {
              setState(() {
                neumorphismSize_1 = 30;
              });
            },
          ),
          FButton(
            lightOrientation: lightOrientation,

            /// 开启 Neumorphism 支持
            isSupportNeumorphism: true,
            highlightShadowColor: Colors.white,
            shadowColor: mainShadowColor,
            width: 60,
            height: 60,
            image: Icon(
              Icons.mic,
              color: mainTextTitleColor,
              size: neumorphismSize_2,
            ),
            alignment: Alignment.center,
            color: mainBackgroundColor,
            corner: FCorner.all(8.0),
            onPressed: () {},
            onPressedDown: () {
              setState(() {
                neumorphismSize_2 = 26;
              });
            },
            onPressedUp: () {
              setState(() {
                neumorphismSize_2 = 30;
              });
            },
            onPressedCancel: () {
              setState(() {
                neumorphismSize_2 = 30;
              });
            },
          ),
          FButton(
            lightOrientation: lightOrientation,

            /// 开启 Neumorphism 支持
            isSupportNeumorphism: true,
            strokeColor: mainBackgroundColor,
            strokeWidth: 3.0,
            highlightShadowColor: Colors.white,
            shadowColor: mainShadowColor,
            width: 60,
            height: 60,
            image: Icon(
              Icons.photo_camera,
              color: mainTextTitleColor,
              size: neumorphismSize_3,
            ),
            alignment: Alignment.center,
            color: mainBackgroundColor,
            corner: FCorner.all(8.0),
            onPressed: () {},
            onPressedDown: () {
              setState(() {
                neumorphismSize_3 = 26;
              });
            },
            onPressedUp: () {
              setState(() {
                neumorphismSize_3 = 30;
              });
            },
            onPressedCancel: () {
              setState(() {
                neumorphismSize_3 = 30;
              });
            },
          ),
        ],
      );
    });
  }

  double neumorphismSize_2_1 = 30;
  double neumorphismSize_2_2 = 18;

  Widget neumorphismDemo_2() {
    return StatefulBuilder(builder: (context, setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FButton(
            lightOrientation: lightOrientation,

            /// 开启 Neumorphism 支持
            isSupportNeumorphism: true,
            highlightShadowColor: Colors.white,
            shadowColor: mainShadowColor,
            strokeColor: mainBackgroundColor,
            strokeWidth: 3.0,
            width: 60,
            height: 60,
            image: Icon(
              Icons.play_arrow,
              color: mainTextTitleColor,
              size: neumorphismSize_2_1,
            ),
            alignment: Alignment.center,
            color: mainBackgroundColor,
            corner: FCorner.all(30.0),
            onPressed: () {},
            onPressedDown: () {
              setState(() {
                neumorphismSize_2_1 = 26;
              });
            },
            onPressedUp: () {
              setState(() {
                neumorphismSize_2_1 = 30;
              });
            },
            onPressedCancel: () {
              setState(() {
                neumorphismSize_2_1 = 30;
              });
            },
          ),
          FButton(
            /// 配置光源方向
            ///
            /// Configure light source direction
            lightOrientation: lightOrientation,

            /// 开启 Neumorphism 支持
            ///
            /// Turn on Neumorphism support
            isSupportNeumorphism: true,

            /// 配置亮部阴影
            ///
            /// Configure highlight shadow
            highlightShadowColor: Colors.white,

            /// 配置暗部阴影
            ///
            /// Configure dark shadows
            shadowColor: mainShadowColor,
            strokeColor: mainBackgroundColor,
            strokeWidth: 3.0,
            width: 190,
            height: 60,
            text: "FWidget",
            style: TextStyle(
                color: mainTextTitleColor, fontSize: neumorphismSize_2_2),
            alignment: Alignment.center,
            color: mainBackgroundColor,
            corner: FCorner.all(30.0),
            onPressed: () {},
            onPressedDown: () {
              setState(() {
                neumorphismSize_2_2 = 16;
              });
            },
            onPressedUp: () {
              setState(() {
                neumorphismSize_2_2 = 18;
              });
            },
            onPressedCancel: () {
              setState(() {
                neumorphismSize_2_2 = 18;
              });
            },
          ),
        ],
      );
    });
  }

  Widget buildShadowButton() {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: <Widget>[
          buildMiddleMargin(),
          FButton(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            text: "Shadow",
            style: TextStyle(color: Colors.white),
            color: Color(0xffb39ddb),
            onPressed: () {},
            clickEffect: true,
            corner: FCorner.all(28),
            shadowColor: Color(0xff3754AA).withOpacity(0.78),
            shadowBlur: _shadowBlur,
          ),
          buildMiddleMargin(),
          Container(
            width: 200,
            child: Slider(
              label: _shadowBlur.toString(),
              value: _shadowBlur,
              min: 0.0,
              max: 20,
              divisions: 40,
              activeColor: Color(0xff9fa8da),
              inactiveColor: Color(0xff9fa8da).withOpacity(0.38),
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
      text: "Try Me!",
      style: TextStyle(color: Colors.white),
      color: Color(0xff81d4fa),
      onPressed: () {},
      clickEffect: true,
      corner: FCorner.all(9),
      highlightColor: Color(0xffff8a65),
      hoverColor: Color(0xff80deea),
      shadowColor: mainShadowColor,
      shadowBlur: 6.0,
      shadowOffset: Offset(2.0, 2.0),
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
                text: "Click left loading",
                style: TextStyle(color: Colors.white),
                color: Color(0xffffab91),
                onPressed: () {
                  print("Loading...");
                },
                clickEffect: true,
                corner: FCorner.all(9),
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
                text: "Click top loading",
                style: TextStyle(color: Colors.white),
                color: Color(0xffb39ddb),
                onPressed: () {
                  print("Loading...");
                },
                clickEffect: true,
                corner: FCorner.all(9),
                loadingSize: 15,
                imageMargin: 6,
                loadingStrokeWidth: 2,
                clickLoading: true,
                loadingColor: Colors.white,
                loadingText: "Loading...",
                imageAlignment: ImageAlignment.top,
                loadingWidget: RefreshProgressIndicator(),
              ),
            ],
          ),
          buildMiddleMargin(),
          FButton(
            width: 170,
            height: 70,
            alignment: Alignment.center,
            text: "Click to loading",
            style: TextStyle(color: Colors.white),
            color: Color(0xff90caf9),
            onPressed: () {
              print("Loading...");
            },
            clickEffect: true,
            corner: FCorner.all(9),
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
            loadingWidget: CupertinoActivityIndicator(),
          ),
          buildMiddleMargin(),
          FButton(
            width: 100,
            height: 30,
            alignment: Alignment.center,
            text: "Reset",
            style: TextStyle(color: mainTextTitleColor),
            corner: FCorner.all(25),
            onPressed: () {
              setState(() {});
            },
            color: Color(0xffffab91),
//            clickEffect: true,
            highlightShadowColor: Color(0xfffbe9e7),
            shadowColor: Color(0xffff7043),
            isSupportNeumorphism: true,
            shadowBlur: 10.0,
          ),
        ],
      );
    });
  }

  Widget buildLoadingButton1() {
    return FButton(
      width: 200,
      height: 50,
      text: "loading",
      style: TextStyle(color: Colors.white),
      color: Color(0xffa5d6a7),
      onPressed: () {
        print("Loading...");
      },
      clickEffect: true,
      corner: FCorner.all(30),
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
            color: Color(0xffff8a65),
          ),
          imageMargin: 8,
          text: "Take Photo",
          style: TextStyle(color: mainTextTitleColor),
          color: Colors.transparent,
        ),
        SizedBox(
          width: 36,
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
          style: TextStyle(color: mainTextTitleColor),
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
          style: TextStyle(color: Colors.white),
          color: Color(0xff9ccc65),
          onPressed: () {
            toast(context, "Back!");
          },
          clickEffect: true,
          corner: FCorner(leftTopCorner: 25, leftBottomCorner: 25),
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
          style: TextStyle(color: Colors.white),
          color: Color(0xffd4e157),
          onPressed: () {
            toast(context, "Forward!");
          },
          corner: FCorner(rightTopCorner: 25, rightBottomCorner: 25),
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
            width: 38,
            height: 38,
            padding: EdgeInsets.all(0),
            color: Color(0xff26c6da),
            onPressed: () {
              toast(context, "Search!");
            },
            clickEffect: true,
            corner: FCorner.all(19),
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
        style: TextStyle(color: Colors.black87),
        color: Colors.white,
        onPressed: () {},
        clickEffect: true,
        corner: FCorner.all(6),
        strokeWidth: 1,
        strokeColor: Colors.black87,
        padding: EdgeInsets.all(10.0),
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
        style: TextStyle(color: Colors.white),
        gradient: RadialGradient(
          center: const Alignment(0.6, 0.2),
          radius: 0.2,
          colors: [
            const Color(0xFF0099FF),
            const Color(0xffff7043),
          ],
          stops: [0.4, 1.0],
        ),
        onPressed: () {},
        clickEffect: true,
        corner: FCorner.all(9),
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
        style: TextStyle(color: Colors.white),
        color: Colors.black54,
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
        corner: FCorner.all(9),
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
        style: TextStyle(color: Colors.white),
        color: Color(0xffFFc900),
        gradient: LinearGradient(colors: [
          Color(0xff00B0FF),
          Color(0xffFFc900),
        ]),
        onPressed: () {},
        clickEffect: true,
        corner: FCorner.all(9),
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
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFF7043),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(leftTopCorner: 10),
                cornerStyle: FCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xffD84315),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFFA726),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(
                  leftBottomCorner: 40,
                  leftTopCorner: 6,
                  rightTopCorner: 40,
                  rightBottomCorner: 6,
                ),
                cornerStyle: FCornerStyle.bevel,
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
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFFc900),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(rightTopCorner: 25, rightBottomCorner: 25),
                cornerStyle: FCornerStyle.bevel,
                strokeWidth: 0.5,
                strokeColor: Color(0xffF9A825),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xff00B0FF),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(leftTopCorner: 35, rightTopCorner: 35),
                cornerStyle: FCornerStyle.bevel,
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
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFF7043),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(leftTopCorner: 18),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFFA726),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(
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
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xffFFc900),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(leftTopCorner: 25, leftBottomCorner: 25),
              ),
              FButton(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                text: "Corner FButton",
                style: TextStyle(color: Colors.white),
                color: Color(0xff00B0FF),
                onPressed: () {},
                clickEffect: true,
                corner: FCorner(leftTopCorner: 35, rightTopCorner: 35),
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
        text: "FButton #3",
        style: TextStyle(color: Colors.white),
        disableStyle: TextStyle(color: Colors.black38),
        color: Color(0xffF8AD36),
        disabledColor: Colors.grey[300],
        corner: FCorner.all(6.0),
      ),
    );
  }

  Padding buildNormalButton2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        text: "FButton #2",
        style: TextStyle(color: Colors.white),
        color: Color(0xffffab91),
        corner: FCorner.all(6.0),
      ),
    );
  }

  Widget buildNormalButton1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: FButton(
        height: 40,
        alignment: Alignment.center,
        text: "FButton #1",
        style: TextStyle(color: Colors.white),
        color: Color(0xffffab91),
        onPressed: () {},
        clickEffect: true,
        highlightColor: Colors.red,
        hoverColor: Colors.blue,
        corner: FCorner.all(6.0),
      ),
    );
  }
}
