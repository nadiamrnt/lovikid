import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/themes/app_colors.dart';

class InterpretasiView extends GetView {
  static const String route = '/interpretasi';
  const InterpretasiView({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
              child: Container(
                height: 400,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(
                      "INTERPRETASI GFR",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 20),
                    Image.asset("assets/interpretasi.png"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
