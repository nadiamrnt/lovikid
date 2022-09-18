import 'package:get/get.dart';
import 'package:lovikid/splash/splash_view.dart';

final splashRoute = [
  GetPage(
    name: SplashView.route,
    page: () => const SplashView(),
    participatesInRootNavigator: true,
  ),
];
