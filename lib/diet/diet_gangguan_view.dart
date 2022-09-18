import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/themes/app_colors.dart';

class DietGangguanView extends GetView {
  static const String route = '/diet-gangguan';
  const DietGangguanView({Key? key}) : super(key: key);

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
              child: Container(
                height: 420,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(
                      "DIET GANGGUAN GINJAL",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        buildParagraf(
                            number: "1. ",
                            text:
                                "Perbanyak konsumsi sayur dan kurangi daging."),
                        buildParagraf(
                            number: "2. ",
                            text:
                                "Cobalah diet rendah garam : hindari makanan asin, coba bumbui makanan dengan rempah dan herba lain."),
                        buildParagraf(
                            number: "3. ", text: "Kurangi makanan cepat saji."),
                        buildParagraf(
                            number: "4. ",
                            text:
                                "Kurangi makanan kaya potasium karena mengganggu penyaringan ginjal : lobak, ubi jalar, kacang putih, yoghurt, halibut, sari jeruk, brokoli, blewah, pisang, babi, susu, salmon, kismis, ayam, dan tuna."),
                        buildParagraf(
                            number: "5. ",
                            text:
                                "Kurangi makanan kaya fosfor : susu, yoghurt, keju keras, keju cottage, es krim,serealia utuh, kacang polong kering, kacang-kacangan, biji-bijian, sarden, cola,dan air berasa."),
                        buildParagraf(
                            number: "6. ",
                            text:
                                "Jaga berat badan, dengan menjaga berat badan akan memudahkan sirkulasi darah dalam tubuh dan membantu mengatur tekanan darah."),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row buildParagraf({
    required String number,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(number), Expanded(child: Text(text))],
    );
  }
}
