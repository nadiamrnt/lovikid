import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  TextEditingController usiaCtr = TextEditingController();
  TextEditingController bbCtr = TextEditingController();
  TextEditingController serumCtr = TextEditingController();

  RxBool lk = false.obs;
  RxBool pr = false.obs;
  RxDouble interValue = 0.0.obs;

  void lkClick() {
    lk.toggle();
    pr.value = false;
  }

  void prClick() {
    pr.toggle();
    lk.value = false;
  }

  void cekGFR() {
    int usia = int.parse(usiaCtr.text);
    int bb = int.parse(bbCtr.text);
    double serum = double.parse(serumCtr.text);

    if (lk.isTrue) {
      interValue.value = ((140 - usia) * bb * (1)) / (72 * serum);
    }

    if (pr.isTrue) {
      interValue.value = ((140 - usia) * bb * (0.85)) / (72 * serum);
    }
  }
}
