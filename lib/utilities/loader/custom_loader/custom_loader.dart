import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../custom_colors/custom_colors.dart';

class CustomLoader {
  static void openCustomLoader() {
    Future.delayed(const Duration(milliseconds: 0), () {
      showDialog(
          context: Get.context!,
          barrierDismissible: false,
          builder: (context) {
            return BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Center(
                child: LoadingAnimationWidget.discreteCircle(
                  color: CustomColors.darkPurple,
                  secondRingColor: CustomColors.green,
                  thirdRingColor: CustomColors.green,
                  size: 50,
                ),
              ),
            );
          });
    });
  }

  static void closeCustomLoader() {
    Get.back();
  }
}
