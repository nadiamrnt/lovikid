import 'package:lovikid/calculator/calculator_route.dart';
import 'package:lovikid/diet/diet_route.dart';
import 'package:lovikid/home/home_route.dart';
import 'package:lovikid/interpretasi_gfr/interpretasi_route.dart';
import 'package:lovikid/splash/splash_route.dart';
import 'package:lovikid/splash/splash_view.dart';

class AppPages {
  static const initial = SplashView.route;

  static final routes = [
    ...splashRoute,
    ...homeRoute,
    ...interpretasiRoute,
    ...dietRoute,
    ...calculatorRoute,
  ];
}
