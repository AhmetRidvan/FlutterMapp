import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: 'herobla',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(70),
        child: Image.asset('assets/images/diwali-apple-logo-5120x2880-27421.png'),
      ),
    );
  }
}
