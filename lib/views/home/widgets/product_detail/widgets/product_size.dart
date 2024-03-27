import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/helper_functions/helper_function.dart';
import 'package:flutter/material.dart';

class MyChoiceSize extends StatelessWidget {
  const MyChoiceSize(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  final Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunction.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? MyColors.white : null),
      avatar: isColor
          ? Container(
              width: 50, height: 50, color: MyHelperFunction.getColor(text)!)
          : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? MyHelperFunction.getColor(text)! : null,
    );
  }
}
