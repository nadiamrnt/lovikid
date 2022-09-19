import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/calculator/calculator_controller.dart';
import 'package:lovikid/themes/app_colors.dart';

class CalculatorView extends GetView<CalculatorController> {
  static const String route = '/calculator';
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/home.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const Text(
                          "CALCULATOR GFR",
                          style: TextStyle(
                              color: AppColors.secondary,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Usia",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondary),
                                ),
                                Container(
                                  width: 120,
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: const BoxDecoration(
                                      color: Color(0XFFFEFADE)),
                                  child: TextFormField(
                                    controller: controller.usiaCtr,
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Berat Badan",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondary),
                                ),
                                Container(
                                  width: 120,
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: const BoxDecoration(
                                      color: Color(0XFFFEFADE)),
                                  child: TextFormField(
                                    controller: controller.bbCtr,
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Text(
                                    "Serum Kreatinin",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.secondary),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: const BoxDecoration(
                                      color: Color(0XFFFEFADE)),
                                  child: TextFormField(
                                    controller: controller.serumCtr,
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Jenis Kelamin",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondary),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: controller.lkClick,
                                  child: Obx(() => Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 30),
                                        color: controller.lk.isTrue
                                            ? AppColors.secondary
                                            : const Color(0XFFFEFADE),
                                        child: Text(
                                          "LK",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: controller.lk.isTrue
                                                  ? const Color(0XFFFEFADE)
                                                  : AppColors.secondary),
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: controller.prClick,
                                  child: Obx(() => Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 30),
                                        color: controller.pr.isTrue
                                            ? AppColors.secondary
                                            : const Color(0XFFFEFADE),
                                        child: Text(
                                          "PR",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: controller.pr.isTrue
                                                  ? const Color(0XFFFEFADE)
                                                  : AppColors.secondary),
                                        ),
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  if (controller.usiaCtr.text.isNotEmpty &&
                                      controller.bbCtr.text.isNotEmpty &&
                                      controller.serumCtr.text.isNotEmpty) {
                                    if (controller.lk.value == false &&
                                        controller.pr.value == false) {
                                      AnimatedSnackBar.material(
                                              'Pilih Jenis Kelamin!',
                                              type:
                                                  AnimatedSnackBarType.warning,
                                              mobileSnackBarPosition:
                                                  MobileSnackBarPosition.bottom)
                                          .show(context);
                                    } else {
                                      controller.cekGFR();
                                    }
                                  } else {
                                    AnimatedSnackBar.material(
                                            'Field tidak boleh kosong!',
                                            type: AnimatedSnackBarType.warning,
                                            mobileSnackBarPosition:
                                                MobileSnackBarPosition.bottom)
                                        .show(context);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 60),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0XFFD35C48),
                                  ),
                                  child: const Text(
                                    "CEK GFR",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFFEFADE)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "INTERPRETASI",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFFFEFADE)),
                                ),
                                const Icon(
                                  Icons.arrow_right_alt_rounded,
                                  color: Color(0XFFFEFADE),
                                ),
                                Obx(() => Expanded(
                                      child: Text(
                                        controller.interValue.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0XFFD35C48)),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
