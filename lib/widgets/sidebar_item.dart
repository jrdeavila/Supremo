import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class SidebarItemWidget extends StatelessWidget {
  const SidebarItemWidget({
    super.key,
    required this.item,
    required this.paddingHorizontal,
    this.bold = false,
    this.selected = false,
    this.onTap,
    this.isCollapsed = false,
  });

  final SidebarItemModel item;
  final double paddingHorizontal;
  final bool isCollapsed;
  final bool bold;
  final bool selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item.route != null) {
          Get.toNamed(item.route!);
        }
        if (onTap != null) {
          onTap!();
        }
      },
      child: LayoutBuilder(builder: (context, constraints) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: selected ? Get.theme.colorScheme.primary : Colors.transparent,
          padding: EdgeInsets.only(
            left: paddingHorizontal,
            top: 10,
            bottom: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                item.icon,
                color: Get.theme.iconTheme.color,
                size: Get.theme.iconTheme.size,
              ),
              if (!isCollapsed) ...[
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    item.label,
                    style: TextStyle(
                      color: Get.theme.iconTheme.color,
                      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                      fontSize: constraints.maxWidth * 0.07,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ],
          ),
        );
      }),
    );
  }
}
