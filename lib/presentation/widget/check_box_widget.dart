import 'package:collaborado/config/constants.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final VoidCallback onChange;
  final bool isChecked;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChange,
    this.size,
    this.iconSize,
    this.selectedColor,
    this.selectedIconColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChange,
      child: AnimatedContainer(
        margin: const EdgeInsets.all(4),
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: isChecked ? selectedColor ?? ebony : Colors.transparent,
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: borderColor ?? Colors.white,
            width: 1.5,
          ),
        ),
        width: size ?? 18,
        height: size ?? 18,
        child: isChecked
            ? Icon(
                Icons.check,
                color: selectedIconColor ?? Colors.white,
                size: iconSize ?? 14,
              )
            : null,
      ),
    );
  }
}
