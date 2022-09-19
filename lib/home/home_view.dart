import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/calculator/calculator_view.dart';
import 'package:lovikid/diet/diet_menu_view.dart';
import 'package:lovikid/interpretasi_gfr/interpretasi_view.dart';
import 'package:lovikid/themes/app_colors.dart';

class HomeView extends GetView {
  static const String route = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/home.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 230, 16, 16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary),
                    child: const Text(
                      "MAIN MENU",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildMenu(
                        image: "calc",
                        title: "Calculator ",
                        onTap: () {
                          Get.toNamed(CalculatorView.route);
                        },
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      buildMenu(
                        image: "food",
                        title: "Diet Gangguan Ginjal",
                        onTap: () {
                          Get.toNamed(DietMenuView.route);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  buildMenu(
                    image: "notes",
                    title: "Interpretasi GFR",
                    onTap: () {
                      Get.toNamed(InterpretasiView.route);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildMenu({
    required String image,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primary,
            ),
            child: Image.asset(
              "assets/$image.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: const TextStyle(
                color: AppColors.secondary, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
