import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void snackBar(String message) {
  Get.showSnackbar(
    GetSnackBar(
      margin: EdgeInsets.symmetric(horizontal: 15),
      borderRadius: 12,
      duration: const Duration(seconds: 6),
      backgroundColor: Color.fromRGBO(70, 180, 2, 1),
      messageText: Text(
        message,
        // "user authenticated successfully!",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

void snackBarError(String message) {
  Get.showSnackbar(
    GetSnackBar(
      margin: EdgeInsets.symmetric(horizontal: 15),
      borderRadius: 12,
      duration: const Duration(seconds: 6),
      backgroundColor: Color.fromRGBO(202, 1, 1, 1),
      messageText: Text(
        message,
        // "user authenticated successfully!",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
