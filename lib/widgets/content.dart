import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class DashboardContent extends GetView<DashboardCtrl> {
  const DashboardContent({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: kToolbarHeight,
        left: constraints.maxWidth * 0.2,
        bottom: constraints.maxHeight * 0.05,
      ),
      width: constraints.maxWidth,
      color: Get.theme.colorScheme.secondary,
      child: Obx(() => controller.selectedContent),
    );
  }
}
