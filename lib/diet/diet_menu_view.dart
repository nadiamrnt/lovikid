import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/diet/diet_gagal_view.dart';
import 'package:lovikid/diet/diet_gangguan_view.dart';

class DietMenuView extends GetView {
  static const String route = '/diet';
  const DietMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              "assets/home.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
                child: SizedBox(
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.toNamed(DietGangguanView.route);
                          },
                          child: Image.asset("assets/diet_gangguan.png")),
                      InkWell(
                          onTap: () {
                            Get.toNamed(DietGagalView.route);
                          },
                          child: Image.asset("assets/diet_gagal.png"))
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
