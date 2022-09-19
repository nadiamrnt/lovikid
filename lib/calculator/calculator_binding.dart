import 'package:get/get.dart';
import 'package:lovikid/calculator/calculator_controller.dart';

class CalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorController());
  }
}
