export 'package:fcontrol/fdefine.dart';
import 'package:fcontrol/fcontrol.dart';
import 'package:fcontrol/fdefine.dart';
import 'package:flutter/material.dart';

/// [FButton] 图片相对与文字的位置
///
/// [FButton] The position of the picture relative to the text
enum ImageAlignment {
  /// 文字左边
  ///
  /// Left of text
  left,

  /// 文字顶部
  ///
  /// Top of text
  top,

  /// 文字右边
  ///
  /// Right side of text
  right,

  /// 文字底部
  ///
  /// Bottom of text
  bottom,
}

/// FButton 提供了一个常用按钮效果的实现集合。支持配置圆角、各种特效、边角、边框以及 Loading等。
/// FButton 让开发者可以只熟悉一个按钮组件，就能实现常见的按钮。而无需掌握多种不同类型的按钮组件。
///
/// FButton provides a collection of commonly used button effects.
/// Support for configuring rounded corners, various special effects, corners, borders, and loading.
/// FButton allows developers to familiarize themselves with just one button component and implement common buttons.
/// No need to master many different types of button components.
// ignore: must_be_immutable
class FButton extends StatefulWidget {
  /// 当按下按钮时，会触发该函数。如果未设置该函数，按钮将进入不可用状态。
  ///
  /// When the button is pressed, the function is triggered.If this function is not set, the button will enter an unavailable state.
  final VoidCallback onPressed;

  /// 按钮上的文字。
  ///
  /// The text on the button.
  final String text;

  /// 按钮文本样式
  ///
  /// Button text style
  final TextStyle style;

  /// 禁用按钮文本样式
  ///
  /// Disable button text style
  final TextStyle disableStyle;

  /// 文本在组件中的相对位置。[Alignment]
  ///
  /// The relative position of the text in the component. [Alignment]
  final Alignment alignment;

  /// 按钮的颜色
  ///
  /// Button color
  final Color color;

  /// 按钮不可用颜色
  ///
  /// Button is not available in color
  final Color disabledColor;

  /// 鼠标进入按钮范围时，按钮的颜色。
  ///
  /// the color of the button when the mouse enters the button range.
  final Color hoverColor;

  /// 按压按钮时的按钮颜色。
  ///
  /// the button color when the button is pressed.
  final Color highlightColor;

  /// 按压按钮时的蒙层颜色。调整颜色值的 alpha，以确保背后的视图能够展示。
  ///
  /// The color of the mask when the button is pressed. Adjust the alpha of the color value to ensure that the view behind can be displayed.
  final Color activeMaskColor;

  /// 内间距。
  ///
  /// Internal spacing
  final EdgeInsetsGeometry padding;

  /// 宽度。
  ///
  /// width
  final double width;

  /// 高度。
  ///
  /// height.
  final double height;

  /// 为组件设置边角。
  ///
  /// Set corners for widget
  final FCorner corner;

  /// 设置边角风格，默认 [FCornerStyle.round]
  ///
  /// Set rounded corner style, default [FCornerStyle.round]
  final FCornerStyle cornerStyle;

  /// 设置边框颜色。
  ///
  /// Set the border color.
  final Color strokeColor;

  /// 设置边框宽
  ///
  /// Set border width
  final double strokeWidth;

  /// 设置组件阴影颜色
  ///
  /// Set component shadow color
  final Color shadowColor;

  /// 开启 Neumorphism 风格后的，亮部阴影颜色
  ///
  /// After the Neumorphism style is turned on, the bright shadow color
  final Color highlightShadowColor;

  /// 设置组件阴影偏移
  ///
  /// Set component shadow offset
  final Offset shadowOffset;

  /// 设置组件高斯与阴影形状卷积的标准偏差。
  ///
  /// Sets the standard deviation of the component's Gaussian convolution with the shadow shape.
  final double shadowBlur;

  /// 是否开启基于阴影的点击特效。
  ///
  /// Whether to enable shadow-based click effects.
  final bool clickEffect;

  /// 设置组件渐变色背景。会覆盖 [color] 配置
  /// 你可选择 [LinearGradient]，[RadialGradient]，[SweepGradient] 等..
  ///
  /// Sets the gradient background of the component. [BackgroundColor]
  /// You can choose [LinearGradient], [RadialGradient], [SweepGradient], etc ..
  final Gradient gradient;

  /// 设置图标
  ///
  /// Settings icon
  final Widget image;

  /// 设置图标与文本的间距
  ///
  /// Set the distance between the icon and the text
  final double imageMargin;

  /// 设置图标与文本的相对位置。详见 [ImageAlignment]
  ///
  /// Set the relative position of the icon and the text. See [ImageAlignment] for details
  final ImageAlignment imageAlignment;

  /// 是否启动 Loading 状态。Loading 状态会覆盖 [image] 配置
  ///
  /// Whether to start the loading state. Loading status will override [image] configuration
  final bool loading;

  /// loading 状态时的 Loading 小部件。会覆盖默认的 Loading 效果
  ///
  /// Loading widget in loading state. Will override the default Loading effect
  final Widget loadingWidget;

  /// Loading 的颜色
  ///
  /// Loading colors
  final Color loadingColor;

  /// Loading 的宽度
  ///
  /// Loading width
  final double loadingStrokeWidth;

  /// Loading 的大小
  ///
  /// Loading size
  final double loadingSize;

  /// 是否启用点击进入 Loading 状态的模式
  ///
  /// Whether to enable click to enter the loading mode
  final bool clickLoading;

  /// Loading 状态下是否隐藏文本
  ///
  /// Whether to hide text in the loading state
  final bool hideTextOnLoading;

  /// Loading 状态下展示的文本
  ///
  /// Text displayed under Loading
  final String loadingText;

  /// 表面的风格。默认 [FSurface.Flat]。详见 [FSurface]
  ///
  /// Surface style. Default [FSurface.Flat]. See [FSurface] for details
  final FSurface surfaceStyle;

  /// 鼠标进入/退出组件范围时会回调
  ///
  /// Callback when the mouse enters/exits the component range
  final ValueChanged<bool> onHover;

  /// 按下时会回调
  ///
  /// Callback when pressed
  final VoidCallback onPressedDown;

  /// 抬起时会回调
  ///
  /// Callback when lifted
  final VoidCallback onPressedUp;

  /// 按下取消时会回调
  ///
  /// Callback when cancel is pressed
  final VoidCallback onPressedCancel;

  /// 是否支持 Neumorphism 风格。开启该项 [highlightColor] 将会失效
  ///
  /// Whether to support the Neumorphism style. Open this item [highlightColor] will be invalid
  final bool isSupportNeumorphism;

  /// 当 [isSupportNeumorphism] 为 true 时有效。光源方向，分为左上、左下、右上、右下四个方向。用来控制光源照射方向，会影响高亮方向和阴影方向
  ///
  /// Valid when [isSupportNeumorphism] is true. The direction of the light source is divided into four directions: upper left, lower left, upper right, and lower right. Used to control the illumination direction of the light source, which will affect the highlight direction and shadow direction
  final FLightOrientation lightOrientation;

  FButton({
    Key key,
    this.onPressed,
    this.text,
    this.color = Colors.transparent,
    this.disabledColor,
    this.hoverColor,
    this.highlightColor,
    this.padding,
    this.width,
    this.height,
    this.corner,
    this.cornerStyle = FCornerStyle.round,
    this.strokeColor,
    this.strokeWidth,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlur = 0.0,
    this.gradient,
    this.image,
    this.imageMargin = 6.0,
    this.imageAlignment = ImageAlignment.left,
    this.loading = false,
    this.loadingColor,
    this.loadingStrokeWidth = 4.0,
    this.clickLoading = false,
    this.hideTextOnLoading = false,
    this.loadingText,
    this.loadingSize = 12,
    this.clickEffect = false,
    this.style,
    this.disableStyle,
    this.alignment,
    this.activeMaskColor = Colors.transparent,
    this.surfaceStyle = FSurface.Flat,
    this.onHover,
    this.onPressedDown,
    this.onPressedUp,
    this.onPressedCancel,
    this.isSupportNeumorphism = false,
    this.highlightShadowColor,
    this.loadingWidget,
    this.lightOrientation = FLightOrientation.LeftTop,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FButton();
  }
}

class _FButton extends State<FButton> with SingleTickerProviderStateMixin {
  double shadowBlur;

  Color shadowColor;

  Tween shadowTween;

  AnimationController animationController;

  bool get enabled => widget.onPressed != null && !loading;

  bool loading = false;

  @override
  void initState() {
    super.initState();
    updateParam();
    animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    shadowTween = Tween(begin: 0, end: widget.shadowBlur);
    animationController.addListener(() {
      setState(() {
        shadowBlur = shadowTween.evaluate(animationController);
      });
    });
  }

  @override
  void didUpdateWidget(FButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    updateParam();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  updateParam() {
    shadowBlur = widget.shadowBlur;
    shadowColor = widget.shadowColor;
    loading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    double disableOpacity = 0.58;

    /// Handle the relationship between [image] and [loading]
    Widget image = loading
        ? widget.loadingWidget ??
            SizedBox(
              width: widget.loadingSize,
              height: widget.loadingSize,
              child: CircularProgressIndicator(
                strokeWidth: widget.loadingStrokeWidth,
                valueColor: AlwaysStoppedAnimation<Color>(widget.loadingColor ==
                        null
                    ? Theme.of(context).accentColor.withOpacity(disableOpacity)
                    : widget.loadingColor.withOpacity(disableOpacity)),
              ),
            )
        : widget.image;

    /// Corner
    BorderRadius borderRadius = widget.corner == null
        ? BorderRadius.all(Radius.circular(0))
        : BorderRadius.only(
            topLeft: Radius.circular(widget.corner.leftTopCorner),
            topRight: Radius.circular(widget.corner.rightTopCorner),
            bottomRight: Radius.circular(widget.corner.rightBottomCorner),
            bottomLeft: Radius.circular(widget.corner.leftBottomCorner),
          );

    /// side
    Color sideColor = widget.strokeColor ?? Colors.transparent;
    BorderSide borderSide = BorderSide(
      width: widget.strokeWidth ?? 0,
      color: sideColor,
      style: BorderStyle.solid,
    );

    /// shape
    FShape shape = FShape(
      borderShape: widget.cornerStyle == FCornerStyle.round
          ? FBorderShape.RoundedRectangle
          : FBorderShape.BeveledRectangle,
      side: borderSide,
      borderRadius: borderRadius,
    );

    /// Handle the relationship between loading text and regular text
    String loadingText =
        widget.loadingText == null ? widget.text : widget.loadingText;
    String text = loading ? loadingText : widget.text;
    Widget layerText = _buildTextLayer(text);
    Widget layerRow = _buildRowLayer(text, image, layerText);

    /////////////////
    Widget layerContainer = FControl(
      lightOrientation: widget.lightOrientation,
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      gradient: widget.gradient,
      shape: shape,
      surface: widget.surfaceStyle,
      supportDropShadow: (shadowColor != null && shadowBlur != 0.0) ||
          widget.isSupportNeumorphism,
      dropShadow: FShadow(
        highlightColor: widget.isSupportNeumorphism
            ? widget.highlightShadowColor ?? Colors.white.withOpacity(0.83)
            : Colors.transparent,
        highlightBlur: widget.isSupportNeumorphism ? _shadowBlur : 0.0,
        highlightDistance: shadowDistance,
        shadowColor: shadowColor ?? Color(0xffd1d9e6),
        shadowBlur: _shadowBlur,
        shadowDistance: shadowDistance,
        shadowOffset: widget.shadowOffset,
      ),
      supportInnerShadow: widget.isSupportNeumorphism,
      innerShadow: FShadow(
        highlightColor:
            widget.highlightShadowColor ?? Colors.white.withOpacity(0.83),
        highlightBlur: _shadowBlur,
        highlightDistance: shadowDistance,
        shadowColor: shadowColor ?? Color(0xffd1d9e6),
        shadowBlur: _shadowBlur,
        shadowDistance: shadowDistance,
      ),
      appearance: widget.isSupportNeumorphism
          ? FAppearance.Neumorphism
          : FAppearance.Material,
      onTapCallback: (_, __) {
        onPressed();
      },
      onTapDownCallback: (_, __) {
        widget.onPressedDown?.call();
      },
      onTapUpCallback: (_, __) {
        widget.onPressedUp?.call();
      },
      onTapCancelCallback: (_, __) {
        widget.onPressedCancel?.call();
      },
      maskColor: widget.activeMaskColor,
      colorForCallback: (sender, state) {
        if (state == FState.Highlighted) {
          return widget.isSupportNeumorphism
              ? widget.color
              : widget.highlightColor;
        } else if (state == FState.Disable) {
          return widget.disabledColor ??
              (widget.color ?? FDisableColor).withOpacity(disableOpacity);
        }
        return widget.color;
      },
      disabled: !enabled,
      hoverColor: widget.hoverColor,
      onHover: widget.onHover != null
          ? (v) {
              widget.onHover(v);
            }
          : null,
      child: Container(
        alignment: widget.alignment,
        child: layerRow,
      ),
    );
    /////////////////

    Widget result = Semantics(
      button: true,
      enabled: enabled,
      child: layerContainer,
    );
    return result;
  }

  double get _shadowBlur {
    if ((shadowBlur == null || shadowBlur == 0.0) &&
        widget.isSupportNeumorphism) {
      return 6.0;
    } else {
      return shadowBlur;
    }
  }

  double get shadowDistance {
    if (widget.isSupportNeumorphism) {
      return widget.shadowOffset?.dy ?? 3.0;
    } else {
      return widget.shadowOffset?.dy ?? 0.0;
    }
  }

  Text _buildTextLayer(String text) {
    return Text(
      text ?? "",
      style: enabled ? widget.style : widget.disableStyle ?? widget.style,
    );
  }

  Widget _buildRowLayer(String text, Widget image, Widget layerText) {
    if (image == null) return layerText;
    var showLoading = (loading && widget.hideTextOnLoading);
    if (showLoading || text == null || text == "") {
      return image;
    } else {
      switch (widget.imageAlignment) {
        case ImageAlignment.left:
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              image,
              SizedBox(width: widget.imageMargin),
              layerText,
            ],
          );
        case ImageAlignment.top:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              image,
              SizedBox(height: widget.imageMargin),
              layerText,
            ],
          );
        case ImageAlignment.right:
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              layerText,
              SizedBox(width: widget.imageMargin),
              image,
            ],
          );
        case ImageAlignment.bottom:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              layerText,
              SizedBox(height: widget.imageMargin),
              image,
            ],
          );
      }
    }
    return layerText;
  }

  onPressed() {
    widget.onPressed?.call();
    if (widget.clickLoading && !loading) {
      loading = true;
      setState(() {});
    } else if (widget.clickEffect) {
      pressOutEffect();
    }
  }

  pressOutEffect() {
    shadowBlur = (shadowBlur ?? 0) + 6;
    shadowColor = widget.shadowColor;
    if (shadowColor == null) {
      if (widget.isSupportNeumorphism) {
        shadowColor = Color(0xffd1d9e6);
      } else if (widget.strokeColor != null) {
        shadowColor = widget.strokeColor.withOpacity(0.58);
      } else {
        shadowColor = widget.color.withOpacity(0.58);
      }
    }
    shadowTween
      ..begin = shadowBlur
      ..end = widget.shadowBlur;
    animationController
      ..value = 0.0
      ..forward();
  }
}
