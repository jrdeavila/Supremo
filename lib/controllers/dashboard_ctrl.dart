import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class DashboardCtrl extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  // ===============================================

  int get selectedIndex => _selectedIndex.value;
  Widget get selectedContent => sidebarItemsWidgets[_selectedIndex.value];

  // ===============================================

  void onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  // ===============================================

  List<SidebarItemModel> sidebarItems = [
    SidebarItemModel(
      label: "Dashboard",
      icon: FontAwesomeIcons.house,
    ),
    SidebarItemModel(
      label: "Repair View",
      icon: FontAwesomeIcons.screwdriverWrench,
    ),
    SidebarItemModel(
      label: "Generator View",
      icon: FontAwesomeIcons.hammer,
    ),
  ];
  List<Widget> sidebarItemsWidgets = const [
    SidebarContentWidget(
      label: "Dashboard",
      content: DashboardView(),
    ),
    SidebarContentWidget(
      label: "Repair View",
      content: RepairView(),
    ),
    SidebarContentWidget(
      label: "Generator View",
      content: GeneratorView(),
    ),
  ];
}
