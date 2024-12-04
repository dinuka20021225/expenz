import 'package:expense/screens/main_screen.dart';
import 'package:expense/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  final bool showMainscrenn;
  const Wrapper({
    super.key,
    required this.showMainscrenn,
  });

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return widget.showMainscrenn
        ? const MainScreen()
        : const OnboardingScreen();
  }
}
