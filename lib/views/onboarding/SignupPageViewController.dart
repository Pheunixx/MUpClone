import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex; // 0, 1, or 2

  const OnboardingIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.all(2),
          height: 8,
          width: currentIndex == index ? 10 : 8,
          decoration: BoxDecoration(
            color: currentIndex == index ? Color(0xFFFFFA500): Colors.orange[200],
            borderRadius: BorderRadius.circular(50),
          ),
        );
      }),
    );
  }
}

class SignUpIndicator extends StatelessWidget {
  final int currentIndex2;
  const SignUpIndicator({super.key, required this.currentIndex2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.all(2),
          height: 2,
          width: currentIndex2 == index ? 10 : 8,
          decoration: BoxDecoration(
            color: currentIndex2 == index ? Color(0xFFFFFA500): Colors.orange[200],
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  
  }
}
