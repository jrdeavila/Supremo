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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
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
  }
}
