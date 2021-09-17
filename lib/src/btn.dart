import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class BTN1 extends StatelessWidget {
  final Key? key;
  final Function()? onPressed;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final Text child;
  BTN1({
    this.width,
    this.key,
    this.alignment,
    this.padding,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    required this.child,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      padding: padding ?? EdgeInsets.all(5),
      height: height ?? Medidas.heigth(6),
      width: width ?? Medidas.width(30),
      decoration: decoration ??
          BoxDecoration(
              color: Color(0xFFFF422C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
      child: TextButton(
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}

// ignore: must_be_immutable
class BTN2 extends StatefulWidget {
  Function(bool?) onTap;
  final Widget child;
  bool? state;
  final double? size;
  final double border;
  final double padding;
  final Color firstbackgroundColor;
  final Color firstborderColor;
  final Color firstcolor;
  final Color secondbackgroundColor;
  final Color secondborderColor;
  final Color secondcolor;
  BTN2(
      {required this.state,
      required this.child,
      required this.onTap,
      this.firstbackgroundColor = Colors.transparent,
      this.size,
      this.border = 10,
      this.firstborderColor = Colors.greenAccent,
      this.padding = 5,
      this.firstcolor = Colors.greenAccent,
      this.secondbackgroundColor = Colors.transparent,
      this.secondborderColor = Colors.red,
      this.secondcolor = Colors.red});

  @override
  _BTN2State createState() => _BTN2State();
}

class _BTN2State extends State<BTN2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        height: widget.size ?? double.infinity,
        width: widget.size ?? double.infinity,
        decoration: BoxDecoration(
          color: widget.state == true
              ? widget.firstbackgroundColor
              : widget.secondbackgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.state == true
                ? widget.firstborderColor
                : widget.secondborderColor,
            width: widget.border,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Material(
              borderRadius: BorderRadius.circular(40),
              color: Colors.transparent,
              child: Center(child: widget.child)),
          decoration: BoxDecoration(
            color:
                widget.state == true ? widget.firstcolor : widget.secondcolor,
            shape: BoxShape.circle,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.onTap.call(widget.state);
        });
      },
    );
  }
}

// ignore: must_be_immutable
class BTN3 extends StatefulWidget {
  Function(bool?) onTap;
  final Widget child;
  bool? state;
  final double? height;
  final double? width;
  final double border;
  final double padding;
  final Color firstbackgroundColor;
  final Color firstborderColor;
  final Color firstcolor;
  final Color secondbackgroundColor;
  final Color secondborderColor;
  final Color secondcolor;
  BTN3(
      {required this.state,
      required this.child,
      required this.onTap,
      this.firstbackgroundColor = Colors.black12,
      this.border = 2,
      this.firstborderColor = Colors.greenAccent,
      this.padding = 5,
      this.firstcolor = Colors.greenAccent,
      this.secondbackgroundColor = Colors.black12,
      this.secondborderColor = Colors.red,
      this.secondcolor = Colors.red,
      this.height = 50,
      this.width = 100});

  @override
  _BTN3State createState() => _BTN3State();
}

class _BTN3State extends State<BTN3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        height: widget.height,
        width:
            widget.width ?? double.infinity, //widget.width ?? double.infinity
        decoration: BoxDecoration(
          color: widget.state == true
              ? widget.firstbackgroundColor
              : widget.secondbackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: widget.state == true
                ? widget.firstborderColor
                : widget.secondborderColor,
            width: widget.border,
          ),
        ),
        child: Material(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            child: Center(child: widget.child)),
      ),
      onTap: () {
        setState(() {
          widget.onTap.call(widget.state);
        });
      },
    );
  }
}

class BTN4 extends StatefulWidget {
  final Key? key;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final List<Widget> children;
  final ChildrenOrientation childrenOrientation;
  final AlignmentGeometry? alignment;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final Function() onPressed;

  BTN4(
      {this.key,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      required this.children,
      required this.childrenOrientation,
      this.alignment,
      this.foregroundDecoration,
      this.constraints,
      this.margin,
      this.transform,
      this.transformAlignment,
      this.clipBehavior = Clip.none,
      this.textDirection,
      this.textBaseline,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.max,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.verticalDirection = VerticalDirection.down,
      required this.onPressed});
  @override
  _BTN4State createState() => _BTN4State();
}

class _BTN4State extends State<BTN4> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: widget.alignment,
        foregroundDecoration: widget.foregroundDecoration,
        constraints: widget.constraints,
        margin: widget.margin,
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        clipBehavior: widget.clipBehavior,
        padding: EdgeInsets.all(5),
        height: widget.height ?? Medidas.heigth(6),
        width: widget.width ?? Medidas.width(35),
        decoration: widget.decoration ??
            BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
        child: widget.childrenOrientation == ChildrenOrientation.Row
            ? Row(
                mainAxisAlignment: widget.mainAxisAlignment,
                mainAxisSize: widget.mainAxisSize,
                crossAxisAlignment: widget.crossAxisAlignment,
                textDirection: widget.textDirection,
                verticalDirection: widget.verticalDirection,
                textBaseline: widget.textBaseline,
                children: widget.children,
              )
            : widget.childrenOrientation == ChildrenOrientation.Column
                ? Column(
                    mainAxisAlignment: widget.mainAxisAlignment,
                    mainAxisSize: widget.mainAxisSize,
                    crossAxisAlignment: widget.crossAxisAlignment,
                    textDirection: widget.textDirection,
                    verticalDirection: widget.verticalDirection,
                    textBaseline: widget.textBaseline,
                    children: widget.children,
                  )
                : null,
      ),
      onTap: widget.onPressed,
    );
  }
}

class BtnSocial extends StatelessWidget {
  final Key? key;
  final Function()? onPressed;

  final AlignmentGeometry? alignment;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final Widget? child;

  final double childSize;
  final VisualDensity? childvisualDensity;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry childalignment;
  final double? childsplashRadius;
  final Color? childcolor;
  final Color? childfocusColor;
  final Color? childhoverColor;
  final Color? childhighlightColor;
  final Color? childsplashColor;
  final Color? childdisabledColor;
  final MouseCursor childmouseCursor;
  final FocusNode? childfocusNode;
  final bool childautofocus;
  final String? childtooltip;
  final bool childenableFeedback;
  final BoxConstraints? childconstraints;

  BtnSocial({
    this.width,
    this.key,
    this.alignment,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.child,
    required this.onPressed,
    this.childSize = 24.0,
    this.childvisualDensity,
    this.padding,
    this.childalignment = Alignment.center,
    this.childsplashRadius,
    this.childcolor,
    this.childfocusColor,
    this.childhoverColor,
    this.childhighlightColor,
    this.childsplashColor,
    this.childdisabledColor,
    this.childmouseCursor = SystemMouseCursors.click,
    this.childfocusNode,
    this.childautofocus = false,
    this.childtooltip,
    this.childconstraints,
    this.childenableFeedback = true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      height: height ?? Medidas.width(10),
      width: width ?? Medidas.width(11),
      decoration: decoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
      child: IconButton(
        iconSize: childSize,
        visualDensity: childvisualDensity,
        padding: padding ?? EdgeInsets.all(5),
        alignment: childalignment,
        splashRadius: childsplashRadius,
        color: childcolor,
        focusColor: childfocusColor,
        hoverColor: childhoverColor,
        highlightColor: childhighlightColor,
        splashColor: childsplashColor,
        disabledColor: childdisabledColor,
        mouseCursor: childmouseCursor,
        focusNode: childfocusNode,
        autofocus: childautofocus,
        tooltip: childtooltip,
        enableFeedback: childenableFeedback,
        constraints: childconstraints,
        icon: child ??
            Image(
              image: AssetImage('assets/g-144.png'),
            ),
        onPressed: onPressed,
      ),
    );
  }
}

// ignore: must_be_immutable
class BtnIconText1 extends StatefulWidget {
  final Key? key;
  final String? text;
  final IconData? icon;
  final TextStyle? textStyle;
  final double? iconSize;
  final Function()? onPressed;

  BtnIconText1(
      {this.text,
      this.icon,
      this.onPressed,
      this.textStyle,
      this.iconSize,
      this.key});

  @override
  _BtnIconText1State createState() => _BtnIconText1State();
}

class _BtnIconText1State extends State<BtnIconText1> {
  Widget textdat() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(start: 5),
            child: TextButton.icon(
              icon: Icon(
                widget.icon,
                color: Colors.white,
                size: widget.iconSize ?? null,
              ),
              label: Text(
                widget.text.toString(),
                style: widget.textStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              onPressed: widget.onPressed,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}
