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
class FButton extends StatefulWidget {
  /// 当按下按钮时，会触发该函数。如果未设置该函数，按钮将进入不可用状态。
  ///
  /// When the button is pressed, the function is triggered.If this function is not set, the button will enter an unavailable state.
  VoidCallback onPressed;

  /// 按钮上的文字。
  ///
  /// The text on the button.
  String text;

  /// 按钮文字的颜色。
  ///
  /// The color of the button text.
  Color textColor;

  /// 按钮文字的大小
  ///
  /// Button text size
  double fontSize;

  /// 按钮文字的风格
  ///
  /// Button text style
  FontStyle fontStyle;

  /// 一行文字高度 = textSize * fontHeight
  ///
  /// height of one line of text = textSize * fontHeight
  double fontHeight;

  /// 文字粗细。默认 [FontWeight.normal]
  ///
  /// Text weight. Default [FontWeight.normal]
  FontWeight textWeight;

  /// 按钮文字的不可用颜色
  ///
  /// Unavailable colors for button text
  Color disabledTextColor;

  /// 按钮的颜色
  ///
  /// Button color
  Color color;

  /// 按钮不可用颜色
  ///
  /// Button is not available in color
  Color disabledColor;

  /// 当 [effect] 为 true 时，触摸按钮时涟漪的颜色。
  ///
  /// When [effect] is true, the color of the ripple when the button is touched.
  Color splashColor;

  /// 当 [effect] 为 true 时，鼠标进入按钮范围时，按钮的颜色。
  ///
  /// When [effect] is true, the color of the button when the mouse enters the button range.
  Color hoverColor;

  /// 当 [effect] 为 true 时，按压按钮时的按钮颜色。
  ///
  /// When [effect] is true, the button color when the button is pressed.
  Color highlightColor;

  /// 内间距。
  ///
  /// Internal spacing
  EdgeInsetsGeometry padding;

  /// 焦点。
  ///
  /// focus
  FocusNode focusNode;

  /// 是否能够自动获取焦点
  ///
  /// Whether it can automatically obtain focus
  bool autofocus;

  /// 宽度。
  ///
  /// width
  double width;

  /// 高度。
  ///
  /// height.
  double height;

  /// 设置组件圆角。详见 [FButtonCorner]
  ///
  /// Sets the component fillet. See [FButtonCorner] for details
  FButtonCorner corner;

  /// 设置圆角风格，默认 [FButtonCorner.round]
  ///
  /// Set rounded corner style, default [FButtonCorner.round]
  FButtonCornerStyle cornerStyle;

  /// 设置边框颜色。
  ///
  /// Set the border color.
  Color strokeColor;

  /// 设置边框宽
  ///
  /// Set border width
  double strokeWidth;

  /// 设置组件阴影颜色
  ///
  /// Set component shadow color
  Color shadowColor;

  /// 设置组件阴影偏移
  ///
  /// Set component shadow offset
  Offset shadowOffset;

  /// 设置组件高斯与阴影形状卷积的标准偏差。
  ///
  /// Sets the standard deviation of the component's Gaussian convolution with the shadow shape.
  double shadowBlur;

  /// 是否开启特效。开启特效后，[splashColor]、[highlightColor]、[hoverColor] 等属性才有效。
  ///
  /// Whether to enable special effects. After the special effects are turned on, the attributes such as [splashColor], [highlightColor], [hoverColor] are effective.
  bool effect;

  /// 是否开启基于阴影的点击特效。
  ///
  /// Whether to enable shadow-based click effects.
  bool clickEffect;

  /// 设置组件渐变色背景。会覆盖 [color] 配置
  /// 你可选择 [LinearGradient]，[RadialGradient]，[SweepGradient] 等..
  ///
  /// Sets the gradient background of the component. [BackgroundColor]
  /// You can choose [LinearGradient], [RadialGradient], [SweepGradient], etc ..
  Gradient gradient;

  /// 设置图标
  ///
  /// Settings icon
  Widget image;

  /// 设置图标与文本的间距
  ///
  /// Set the distance between the icon and the text
  double imageMargin;

  /// 设置图标与文本的相对位置。详见 [ImageAlignment]
  ///
  /// Set the relative position of the icon and the text. See [ImageAlignment] for details
  ImageAlignment imageAlignment;

  /// 是否启动 Loading 状态。Loading 状态会覆盖 [image] 配置
  ///
  /// Whether to start the loading state. Loading status will override [image] configuration
  bool loading;

  /// Loading 的颜色
  ///
  /// Loading colors
  Color loadingColor;

  /// Loading 的宽度
  ///
  /// Loading width
  double loadingStrokeWidth;

  /// Loading 的大小
  ///
  /// Loading size
  double loadingSize;

  /// 是否启用点击进入 Loading 状态的模式
  ///
  /// Whether to enable click to enter the loading mode
  bool clickLoading;

  /// Loading 状态下是否隐藏文本
  ///
  /// Whether to hide text in the loading state
  bool hideTextOnLoading;

  /// Loading 状态下展示的文本
  ///
  /// Text displayed under Loading
  String loadingText;

  double cacheShadowBlur;

  Color cacheShadowColor;

  bool get enabled => onPressed != null && !loading;

  FButton(
      {Key key,
      @required this.onPressed,
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
      this.clickEffect = false})
      : cacheShadowBlur = shadowBlur,
        cacheShadowColor = shadowColor,
        assert(autofocus != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FButton();
  }
}

class _FButton extends State<FButton> {
  final Set<MaterialState> _states = <MaterialState>{};

  bool get _hovered => _states.contains(MaterialState.hovered);

  bool get _pressed => _states.contains(MaterialState.pressed);

  bool get _disabled => _states.contains(MaterialState.disabled);

  void _updateState(MaterialState state, bool value) {
    value ? _states.add(state) : _states.remove(state);
  }

  @override
  void initState() {
    super.initState();
    _updateState(MaterialState.disabled, !widget.enabled);
  }

  @override
  void didUpdateWidget(FButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateState(MaterialState.disabled, !widget.enabled);
    if (_disabled && _pressed) {
      _handleHighlightChanged(false);
    }
  }

  void _handleHighlightChanged(bool value) {
    if (_pressed != value) {
      setState(() {
        _updateState(MaterialState.pressed, value);
      });
    }
  }

  void _handleHoveredChanged(bool value) {
    if (_hovered != value) {
      setState(() {
        _updateState(MaterialState.hovered, value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    final ButtonThemeData buttonTheme = themeData.buttonTheme;
    final TextStyle textStyle = themeData.textTheme.button;
    bool gradientEnable = widget.enabled && widget.gradient != null;
    double disableOpacity = 0.68;

    /// determine whether to enable special effects
    widget.effect = widget.enabled ? widget.effect : false;
    widget.color = widget.enabled
        ? widget.color ?? buttonTheme.colorScheme.background
        : widget.disabledColor ??
            (widget.color == null
                ? buttonTheme.colorScheme.onSurface.withOpacity(disableOpacity)
                : widget.color.withOpacity(disableOpacity));
    Color _textColor = widget.enabled
        ? widget.textColor ?? textStyle.color
        : widget.disabledTextColor ??
            (widget.textColor == null
                ? buttonTheme.colorScheme.onSurface.withOpacity(disableOpacity)
                : widget.textColor.withOpacity(disableOpacity));

    /// Handle the relationship between [image] and [loading]
    widget.image = widget.loading
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
    widget.loadingText =
        widget.loadingText == null ? widget.text : widget.loadingText;
    widget.text = widget.loading ? widget.loadingText : widget.text;

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
    var sideColor = widget.enabled
        ? widget.strokeColor ?? Colors.transparent
        : widget.strokeColor == null
            ? Colors.transparent
            : widget.strokeColor.withOpacity(disableOpacity);
    var borderSide = BorderSide(
      width: widget.strokeWidth ?? 0,
      color: sideColor,
      style: BorderStyle.solid,
    );

    /// shape
    var shape = widget.cornerStyle == FButtonCornerStyle.round
        ? RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          )
        : BeveledRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          );
    var decoration = ShapeDecoration(
        color: gradientEnable ? null : widget.color,
        gradient: gradientEnable ? widget.gradient : null,
        shadows: widget.shadowColor != null && widget.shadowBlur != 0
            ? [
                BoxShadow(
                  color: widget.shadowColor ??
                      widget.color.withOpacity(disableOpacity),
                  offset: widget.shadowOffset ?? Offset(0, 0),
                  blurRadius: widget.shadowBlur,
                )
              ]
            : null,
        shape: shape);
    var layerText = _buildTextLayer(_textColor, themeData);
    var layerRow = _buildRowLayer(layerText);
    var layerContainer = _buildContainerLayer(layerRow);
    var layerEffect =
        _buildEffectLayer(_textColor, shape, borderRadius, layerContainer);
    var layerDecoratedBox = _buildDecoratedBoxLayer(decoration, layerEffect);
    var layerGestureDetector = widget.effect
        ? layerDecoratedBox
        : GestureDetector(
            onTap: widget.enabled ? _onPressed : null,
            child: layerDecoratedBox,
          );
    var result = Semantics(
      button: true,
      enabled: widget.enabled,
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

  Text _buildTextLayer(Color _textColor, ThemeData themeData) {
    return Text(
      widget.text ?? "",
      style: TextStyle(
          color: _textColor,
          fontWeight: widget.textWeight,
          height: widget.fontHeight,
          fontSize: widget.fontSize ?? themeData.textTheme.button.fontSize,
          fontStyle: widget.fontStyle ?? themeData.textTheme.button.fontStyle),
    );
  }

  Widget _buildRowLayer(Widget layerText) {
    if (widget.image == null) return layerText;
    var showLoading = (widget.loading && widget.hideTextOnLoading);
    if (showLoading || widget.text == null || widget.text == "") {
      return widget.image;
    } else {
      switch (widget.imageAlignment) {
        case ImageAlignment.left:
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget.image,
              SizedBox(width: widget.imageMargin),
              layerText,
            ],
          );
        case ImageAlignment.top:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget.image,
              SizedBox(height: widget.imageMargin),
              layerText,
            ],
          );
        case ImageAlignment.right:
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              layerText,
              SizedBox(width: widget.imageMargin),
              widget.image,
            ],
          );
        case ImageAlignment.bottom:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              layerText,
              SizedBox(height: widget.imageMargin),
              widget.image,
            ],
          );
      }
    }
    return layerText;
  }

  Container _buildContainerLayer(Widget layerRow) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      padding: widget.padding ??
          EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: layerRow,
    );
  }

  Widget _buildEffectLayer(Color _textColor, ShapeBorder shapeBorder,
      BorderRadius borderRadius, Container layerContainer) {
    return Material(
      clipBehavior: Clip.none,
      type: MaterialType.transparency,
      child: widget.effect
          ? InkWell(
              onTap: widget.enabled ? _onPressed : null,
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
      widget.shadowBlur = widget.cacheShadowBlur;
      widget.shadowColor = widget.cacheShadowColor;
    });
  }

  _onPressed() {
    widget.onPressed();
    if (widget.clickLoading && !widget.loading) {
      widget.loading = true;
      setState(() {});
    } else if (widget.clickEffect) {
      _pressOutEffect();
      setState(() {});
    }
  }

  _pressOutEffect() {
    widget.shadowBlur = (widget.shadowBlur ?? 0) + 6;
    widget.shadowColor = widget.shadowColor ?? widget.color.withOpacity(0.68);
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
