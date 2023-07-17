import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/network.dart';

class SignInController extends GetxController {
  final signInForm = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var isLoading = false.obs;
  Future<void> signIn() async {
    isLoading.value = true;
    await UserManagment.userSignIn(
      emailAddress: email.text,
      password: password.text,
    );
    isLoading.value = false;
  }
}
