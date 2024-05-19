import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class DashboardScreen extends GetView {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            // Main content
            Positioned(
              left: 0,
              height: constraints.maxHeight,
              child: DashboardContent(
                constraints: constraints,
              ),
            ),
            // Sidebar
            Align(
              alignment: Alignment.centerLeft,
              child: Sidebar(
                constraints: constraints,
              ),
            ),
          ],
        );
      }),
    );
  }
}
