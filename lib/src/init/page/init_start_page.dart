import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanrio_market/src/common/components/app_font.dart';

import '../../common/components/btn.dart';

class InitStartPage extends StatelessWidget {
  final Function() onStart;

  const InitStartPage({
    super.key,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 99,
              height: 116,
              child: Image.asset('assets/images/pompom.webp'),
            ),
            const SizedBox(
              height: 40,
            ),
            const AppFont(
              '당신 근처의 산리오 마켓',
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            AppFont(
              '국내 및 해외 산리오 제품구매까지, \n 지금 내 동네를 선택하고 시작해보세요!',
              align: TextAlign.center,
              size: 18,
              color: Colors.white.withOpacity(0.6),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: 25, right: 25, bottom: 25 + Get.mediaQuery.padding.bottom),
        child: Btn(
          onTap: onStart,
          child: const AppFont(
            '시작하기',
            align: TextAlign.center,
            size: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
