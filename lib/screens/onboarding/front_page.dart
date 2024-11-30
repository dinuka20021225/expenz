import 'package:expense/utils/colors.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 220),
      child: Column(
        children: [
          Image.asset(
            "assets/images/main.png",
            width: 160,
            fit: BoxFit.cover,
          ),
          const Text(
            "Expenz",
            style: TextStyle(
              fontSize: 65,
              fontWeight: FontWeight.bold,
              color: purpuleColor,
            ),
          ),
          const Text(
            "Track Smart, Spend Better.",
            style: TextStyle(
              fontSize: 12,
              color: blackColor,
            ),
          )
        ],
      ),
    );
  }
}
