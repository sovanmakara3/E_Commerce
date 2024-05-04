import 'package:flutter/material.dart';

class SizeDetail extends StatefulWidget {
  final String size;
  const SizeDetail({super.key, required this.size});

  @override
  State<SizeDetail> createState() => _SizeDetailState();
}

class _SizeDetailState extends State<SizeDetail> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 70,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.grey.shade100,
            border: Border.all(
                color: isSelected ? Colors.black : Colors.grey.shade300),
            borderRadius: BorderRadius.circular(6)),
        child: Text(
          widget.size,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
