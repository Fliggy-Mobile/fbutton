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

/// 圆角风格。
/// [round] - 圆角
/// [bevel] - 斜角
///
/// Rounded corner style.
/// [round]-rounded corners
/// [bevel]-beveled corners
enum FButtonCornerStyle {
  round,
  bevel,
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

  final Alignment alignment;

  /// 按钮文字的颜色。
  ///
  /// The color of the button text.
  @deprecated
  final Color textColor;

  /// 按钮文字的大小
  ///
  /// Button text size
  @deprecated
  final double fontSize;

  /// 按钮文字的风格
  ///
  /// Button text style
  @deprecated
  final FontStyle fontStyle;

  /// 一行文字高度 = textSize * fontHeight
  ///
  /// height of one line of text = textSize * fontHeight
  @deprecated
  final double fontHeight;

  /// 文字粗细。默认 [FontWeight.normal]
  ///
  /// Text weight. Default [FontWeight.normal]
  @deprecated
  final FontWeight fontWeight;

  /// 按钮文字的不可用颜色
  ///
  /// Unavailable colors for button text
  final Color disabledTextColor;

  /// 按钮的颜色
  ///
  /// Button color
  final Color color;

  /// 按钮不可用颜色
  ///
  /// Button is not available in color
  final Color disabledColor;

  /// 当 [effect] 为 true 时，触摸按钮时涟漪的颜色。
  ///
  /// When [effect] is true, the color of the ripple when the button is touched.
  final Color splashColor;

  /// 当 [effect] 为 true 时，鼠标进入按钮范围时，按钮的颜色。
  ///
  /// When [effect] is true, the color of the button when the mouse enters the button range.
  final Color hoverColor;

  /// 当 [effect] 为 true 时，按压按钮时的按钮颜色。
  ///
  /// When [effect] is true, the button color when the button is pressed.
  final Color highlightColor;

  /// 内间距。
  ///
  /// Internal spacing
  final EdgeInsetsGeometry padding;

  /// 焦点。
  ///
  /// focus
  final FocusNode focusNode;

  /// 是否能够自动获取焦点
  ///
  /// Whether it can automatically obtain focus
  final bool autofocus;

  /// 宽度。
  ///
  /// width
  final double width;

  /// 高度。
  ///
  /// height.
  final double height;

  /// 设置组件圆角。详见 [FButtonCorner]
  ///
  /// Sets the component fillet. See [FButtonCorner] for details
  final FButtonCorner corner;

  /// 设置圆角风格，默认 [FButtonCorner.round]
  ///
  /// Set rounded corner style, default [FButtonCorner.round]
  final FButtonCornerStyle cornerStyle;

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

  /// 设置组件阴影偏移
  ///
  /// Set component shadow offset
  final Offset shadowOffset;

  /// 设置组件高斯与阴影形状卷积的标准偏差。
  ///
  /// Sets the standard deviation of the component's Gaussian convolution with the shadow shape.
  final double shadowBlur;

  /// 是否开启特效。开启特效后，[splashColor]、[highlightColor]、[hoverColor] 等属性才有效。
  ///
  /// Whether to enable special effects. After the special effects are turned on, the attributes such as [splashColor], [highlightColor], [hoverColor] are effective.
  final bool effect;

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

  FButton({
    Key key,
    this.onPressed,
    this.text,
    this.textColor,
    this.disabledTextColor,
    this.fontSize,
    this.fontStyle,
    this.color,
    this.disabledColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.effect = false,
    this.padding,
    this.focusNode,
    this.autofocus = false,
    this.width,
    this.height,
    this.corner,
    this.cornerStyle = FButtonCornerStyle.round,
    this.strokeColor,
    this.strokeWidth,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlur = 1.0,
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
    this.alignment,
    this.fontHeight,
    this.fontWeight,
  })  : assert(autofocus != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FButton();
  }
}

class _FButton extends State<FButton> {
  final Set<MaterialState> _states = <MaterialState>{};

  bool effect;

  double shadowBlur;

  double cacheShadowBlur;

  Color shadowColor;

  Color cacheShadowColor;

  bool get _hovered => _states.contains(MaterialState.hovered);

  bool get _pressed => _states.contains(MaterialState.pressed);

  bool get _disabled => _states.contains(MaterialState.disabled);

  bool get enabled => widget.onPressed != null && !loading;

  bool loading = false;

  void updateState(MaterialState state, bool value) {
    value ? _states.add(state) : _states.remove(state);
  }

  @override
  void initState() {
    super.initState();
    updateParam();
    updateState(MaterialState.disabled, !enabled);
  }

  @override
  void didUpdateWidget(FButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    updateParam();
    updateState(MaterialState.disabled, !enabled);
    if (_disabled && _pressed) {
      _handleHighlightChanged(false);
    }
  }

  updateParam() {
    shadowBlur = widget.shadowBlur;
    shadowColor = widget.shadowColor;
    loading = widget.loading;
  }

  void _handleHighlightChanged(bool value) {
    if (_pressed != value) {
      setState(() {
        updateState(MaterialState.pressed, value);
      });
    }
  }

  void _handleHoveredChanged(bool value) {
    if (_hovered != value) {
      setState(() {
        updateState(MaterialState.hovered, value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    cacheShadowBlur = widget.shadowBlur;
    cacheShadowColor = widget.shadowColor;
    var themeData = Theme.of(context);
    final ButtonThemeData buttonTheme = themeData.buttonTheme;
    final TextStyle textStyle = themeData.textTheme.button;
    bool gradientEnable = enabled && widget.gradient != null;
    double disableOpacity = 0.68;

    /// determine whether to enable special effects
    effect = enabled ? widget.effect : false;
    Color backgroundColor = widget.color;
    if (!enabled) {
      backgroundColor = widget.disabledColor ??
          (widget.color ?? Colors.grey[400]).withOpacity(disableOpacity);
    }
    Color _textColor = enabled
        ? widget.textColor ?? textStyle.color
        : widget.disabledTextColor ??
            (widget.textColor == null
                ? buttonTheme.colorScheme.onSurface.withOpacity(disableOpacity)
                : widget.textColor.withOpacity(disableOpacity));

    /// Handle the relationship between [image] and [loading]
    Widget image = loading
        ? SizedBox(
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

    /// Handle the relationship between loading text and regular text
    String loadingText =
        widget.loadingText == null ? widget.text : widget.loadingText;
    String text = loading ? loadingText : widget.text;

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
    Color sideColor = enabled
        ? widget.strokeColor ?? Colors.transparent
        : widget.strokeColor == null
            ? Colors.transparent
            : widget.strokeColor.withOpacity(disableOpacity);
    BorderSide borderSide = BorderSide(
      width: widget.strokeWidth ?? 0,
      color: sideColor,
      style: BorderStyle.solid,
    );

    /// shape
    ShapeBorder shape = widget.cornerStyle == FButtonCornerStyle.round
        ? RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          )
        : BeveledRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          );
    Decoration decoration = ShapeDecoration(
        color: gradientEnable ? null : backgroundColor,
        gradient: gradientEnable ? widget.gradient : null,
        shadows: shadowColor != null && shadowBlur != 0
            ? [
                BoxShadow(
                  color:
                      shadowColor ?? widget.color.withOpacity(disableOpacity),
                  offset: widget.shadowOffset ?? Offset(0, 0),
                  blurRadius: widget.shadowBlur,
                )
              ]
            : null,
        shape: shape);
    Widget layerText = _buildTextLayer(text, _textColor, themeData);
    Widget layerRow = _buildRowLayer(text, image, layerText);
    Widget layerContainer = _buildContainerLayer(layerRow);
    Widget layerEffect =
        _buildEffectLayer(_textColor, shape, borderRadius, layerContainer);
    Widget layerDecoratedBox = _buildDecoratedBoxLayer(decoration, layerEffect);
    Widget layerGestureDetector = effect
        ? layerDecoratedBox
        : GestureDetector(
            onTap: enabled ? _onPressed : null,
            child: layerDecoratedBox,
          );
    Widget result = Semantics(
      button: true,
      enabled: enabled,
      child: layerGestureDetector,
    );
    return result;
  }

  _buildDecoratedBoxLayer(ShapeDecoration decoration, Widget layerEffect) {
    var layerDecoratedBox;
    if (widget.clickEffect) {
      layerDecoratedBox = AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: decoration,
        onEnd: _onAnimationEnd,
        child: layerEffect,
      );
    } else {
      layerDecoratedBox = DecoratedBox(
        decoration: decoration,
        child: layerEffect,
      );
    }
    return layerDecoratedBox;
  }

  Text _buildTextLayer(String text, Color _textColor, ThemeData themeData) {
    return Text(
      widget.text ?? "",
      style: widget.style ??
          TextStyle(
              color: _textColor,
              fontWeight: widget.fontWeight,
              height: widget.fontHeight,
              fontSize: widget.fontSize ?? themeData.textTheme.button.fontSize,
              fontStyle:
                  widget.fontStyle ?? themeData.textTheme.button.fontStyle),
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

  Widget _buildContainerLayer(Widget layerRow) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      alignment: widget.alignment,
      child: layerRow,
    );
  }

  Widget _buildEffectLayer(Color _textColor, ShapeBorder shapeBorder,
      BorderRadius borderRadius, Widget layerContainer) {
    return Material(
      clipBehavior: Clip.none,
      type: MaterialType.transparency,
      child: effect
          ? InkWell(
              onTap: enabled ? _onPressed : null,
              onHighlightChanged: _handleHighlightChanged,
              onHover: _handleHoveredChanged,
              focusNode: widget.focusNode,
              autofocus: widget.autofocus,
              splashColor: widget.splashColor ?? _textColor.withOpacity(0.12),
              highlightColor:
                  widget.highlightColor ?? _textColor.withOpacity(0.16),
              hoverColor: widget.hoverColor ?? _textColor.withOpacity(0.04),
              borderRadius: borderRadius,
              customBorder: shapeBorder,
              child: layerContainer,
            )
          : layerContainer,
    );
  }

  void _onAnimationEnd() {
    setState(() {
      shadowBlur = cacheShadowBlur;
      shadowColor = cacheShadowColor;
    });
  }

  _onPressed() {
    widget.onPressed();
    if (widget.clickLoading && !loading) {
      loading = true;
      setState(() {});
    } else if (widget.clickEffect) {
      _pressOutEffect();
      setState(() {});
    }
  }

  _pressOutEffect() {
    shadowBlur = (shadowBlur ?? 0) + 6;
    shadowColor = shadowColor ?? widget.color.withOpacity(0.68);
  }
}

/// 为 [FButton] 设置圆角。详见 [FButton.corner]
///
/// Set rounded corners for [FButton]. See [FButton.corner] for details
class FButtonCorner {
  final double leftTopCorner;
  final double rightTopCorner;
  final double rightBottomCorner;
  final double leftBottomCorner;

  const FButtonCorner({
    this.leftTopCorner = 0,
    this.rightTopCorner = 0,
    this.rightBottomCorner = 0,
    this.leftBottomCorner = 0,
  });

  FButtonCorner.all(double radius)
      : leftTopCorner = radius,
        rightTopCorner = radius,
        rightBottomCorner = radius,
        leftBottomCorner = radius;
}
