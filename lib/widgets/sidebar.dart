import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool _isCollapsed = false;

  // ===============================================

  void _onClickOutside(
    TapUpDetails details,
  ) {
    if (_isCollapsed) {
      return;
    }
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.globalToLocal(details.globalPosition);

    _isCollapsed = position.dx > widget.constraints.maxWidth * 0.5;
    if (kDebugMode) {
      print("position.dx: ${position.dx}");
    }
    setState(() {});
  }

  // ==============================================

  @override
  Widget build(BuildContext context) {
    final dashboardCtrl = Get.find<DashboardCtrl>();
    final sidebarWidth = _isCollapsed
        ? widget.constraints.maxWidth * 0.2
        : widget.constraints.maxWidth * 0.5;
    final renderSidebarItems = dashboardCtrl.sidebarItems
        .map(
          (item) => SidebarItemWidget(
            item: item,
            selected: dashboardCtrl.selectedIndex ==
                dashboardCtrl.sidebarItems.indexOf(item),
            onTap: () {
              dashboardCtrl.onItemTapped(
                dashboardCtrl.sidebarItems.indexOf(item),
              );
              setState(() {
                _isCollapsed = !_isCollapsed;
              });
            },
            isCollapsed: _isCollapsed,
            paddingHorizontal: widget.constraints.maxWidth * 0.06,
          ),
        )
        .toList();
    return GestureDetector(
      onTapUp: _onClickOutside,
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.only(
              top: kToolbarHeight + 20.0,
              bottom: widget.constraints.maxHeight * 0.05,
            ),
            width: sidebarWidth,
            color: Get.theme.colorScheme.primary.withOpacity(0.8),
            child: Column(children: [
              SidebarItemWidget(
                bold: true,
                item: SidebarItemModel(
                  label: "SUPREMO",
                  icon: _isCollapsed
                      ? FontAwesomeIcons.doorOpen
                      : FontAwesomeIcons.doorClosed,
                ),
                onTap: () {
                  setState(() {
                    _isCollapsed = !_isCollapsed;
                  });
                },
                isCollapsed: _isCollapsed,
                paddingHorizontal: widget.constraints.maxWidth * 0.06,
              ),
              const SizedBox(height: 40),
              ...renderSidebarItems,
            ]),
          ),
        ],
      ),
    );
  }
}
