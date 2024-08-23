import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanrio_market/src/common/components/getx_listener.dart';
import 'package:sanrio_market/src/splash/controller/splash_controller.dart';

import '../../common/controller/data_load_controller.dart';
import '../enum/step_type.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetxListener<bool>(
          listen: (bool value) {
            if (value) {
              controller.loadStep(StepType.authCheck);
            }
          },
          stream: Get.find<DataLoadController>().isDataLoad,
          child: GetxListener<StepType>(
            initCall: () {
              controller.loadStep(StepType.dataLoad);
            },
            listen: (StepType? value) {
              if (value == null) return;
              switch (value) {
                case StepType.init:
                case StepType.dataLoad:
                  Get.find<DataLoadController>().loadData();
                  break;
                case StepType.authCheck:
                  print('authCheck');
                  break;
              }
            },
            stream: controller.loadStep,
            child: Obx(
              () {
                return Text(
                  '${controller.loadStep.value.name}중 입니다.',
                  style: const TextStyle(color: Colors.white),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
