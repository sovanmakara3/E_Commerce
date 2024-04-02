import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/helper_functions/helper_function.dart';
import 'package:flutter/material.dart';

class MyCirCularIcon extends StatelessWidget {
  const MyCirCularIcon(
      {super.key,
      required this.icon,
      this.width,
      this.height,
      this.backgroundColor,
      this.color,
      this.onPressed,
      this.size});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : MyHelperFunction.isDarkMode(context)
                ? MyColors.black.withOpacity(0.9)
                : MyColors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
