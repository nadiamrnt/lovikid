import 'package:get/get.dart';
import 'package:lovikid/diet/diet_gagal_view.dart';
import 'package:lovikid/diet/diet_gangguan_view.dart';
import 'package:lovikid/diet/diet_menu_view.dart';

final dietRoute = [
  GetPage(
    name: DietMenuView.route,
    page: () => const DietMenuView(),
  ),
  GetPage(
    name: DietGagalView.route,
    page: () => const DietGagalView(),
  ),
  GetPage(
    name: DietGangguanView.route,
    page: () => const DietGangguanView(),
  ),
];
