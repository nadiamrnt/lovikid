import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/home/home_view.dart';

class SplashView extends StatefulWidget {
  static const String route = '/splash';

  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(HomeView.route));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        child: Image.asset(
          "assets/splash_screen.png",
          fit: BoxFit.cover,
        ));
  }
}
