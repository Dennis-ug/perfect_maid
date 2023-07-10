import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/network.dart';

class SignInController extends GetxController {
  final signInForm = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<void> signIn() async => await UserManagment.userSignIn(
        emailAddress: email.text,
        password: password.text,
      );
}
