import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovikid/themes/app_colors.dart';

class DietGagalView extends GetView {
  static const String route = '/diet-gagal';
  const DietGagalView({Key? key}) : super(key: key);

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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 80, 16, 16),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(
                      "DIET GAGAL GINJAL",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Bahan makanan yang dihindari : "),
                        buildParagraf(
                            number: "1. ",
                            text:
                                "Makanan yang mengandung tinggi Natrium, seperti pada garam dapur, makanan yang diawet."),
                        buildParagraf(
                            number: "2. ",
                            text:
                                "Makanan yang mengandung tinggi Kalium, seperti pada buah pisang, alpukat, duku, nangka, dan sayuran pada bayam, daun pepaya, kembang kol, kapri."),
                        buildParagraf(
                            number: "3. ",
                            text:
                                "Makanan tinggi phospor : Produk susu, keju, yogurt, es krim, kacang - kacangan, biji bijian, daging awetan, seperti kornet, sosis, ikan sarden, seafood (udang, kepiting) dan kuning telur.\n"),
                        const Text("Batasi cairan : "),
                        buildParagraf(
                            number: "1. ",
                            text:
                                "Makanan sebaiknya tidak dibuat dalam bentuk berkuah, pengolahan dapat dipanggang, dikukus, ditumis dan digoreng."),
                        buildParagraf(
                            number: "2. ",
                            text:
                                "Kurangi konsumsi garam karena akan menimbulkan rasa haus.\n"),
                        const Text("Batasi cairan : "),
                        buildParagraf(
                            number: "1. ",
                            text:
                                "Tidak dianjurkan konsumsi sayuran dalam keadaan mentah (lalapan)."),
                        buildParagraf(
                            number: "2. ",
                            text:
                                "Batasi garam dan bumbu – bumbu, seperti kecap, saus yang mengandung Na, ganti dengan bumbu dapur lain."),
                        buildParagraf(
                            number: "2. ",
                            text:
                                "Untuk membatasi banyaknya cairan diolah dalam bentuk tidak berkuah, dipanggang, dikukus, ditumis dan digoreng."),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
