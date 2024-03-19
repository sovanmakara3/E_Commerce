import 'package:flutter/material.dart';

class IndecatorContainer extends StatelessWidget {
  const IndecatorContainer({
    super.key,
    this.child,
    this.backgroundColor = Colors.white,
    this.height = 400,
    this.padding = 0,
    this.margin,
    this.raduis = 400,
    this.width = 400,
  });

  final double? width;
  final double? height;
  final double raduis;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}