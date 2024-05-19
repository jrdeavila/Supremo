import 'package:flutter/material.dart';

class SidebarContentWidget extends StatelessWidget {
  const SidebarContentWidget({
    super.key,
    required this.label,
    required this.content,
  });

  final String label;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: constraints.maxWidth * 0.08,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: content,
            ),
          ],
        ),
      );
    });
  }
}
