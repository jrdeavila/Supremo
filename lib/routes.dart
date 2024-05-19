import 'package:get/get.dart';
import 'package:supremo/lib.dart';

final routerPages = [
  GetPage(
      name: "/dashboard",
      page: () => const DashboardScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => DashboardCtrl());
      })),
];
