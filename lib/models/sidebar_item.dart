import 'package:flutter/material.dart';

class SidebarItemModel {
  final String label;
  final IconData icon;
  final String? route;

  SidebarItemModel({
    required this.label,
    required this.icon,
    this.route,
  });
}
