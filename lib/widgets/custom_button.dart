import 'package:expense/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final String title;
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
