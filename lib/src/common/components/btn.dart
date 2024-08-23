import 'package:flutter/material.dart';
import 'package:sanrio_market/src/common/components/app_font.dart';

class Btn extends StatelessWidget {
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.pink,
          child: const AppFont(
            '시작하기',
            align: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
