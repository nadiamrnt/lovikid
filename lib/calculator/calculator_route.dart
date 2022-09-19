import 'package:get/get.dart';
import 'package:lovikid/calculator/calculator_binding.dart';
import 'package:lovikid/calculator/calculator_view.dart';

final calculatorRoute = [
  GetPage(
    name: CalculatorView.route,
    page: () => const CalculatorView(),
    binding: CalculatorBinding(),
  ),
];
