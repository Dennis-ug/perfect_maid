import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> loadingDia(String message) async {
  await Get.defaultDialog(
      radius: 12,
      title: "Loading",
      content: Row(
        children: [
          CircularProgressIndicator.adaptive(
            backgroundColor: Color(0xff20494F),
          ),
          Text(
            message,
            style: GoogleFonts.poppins(
              color: Color(0xff20494F),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ));
}
