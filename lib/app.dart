import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremo/lib.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Supremo',
      theme: themeApp,
      getPages: routerPages,
      initialRoute: "/dashboard",
      debugShowCheckedModeBanner: false,
    );
  }
}
