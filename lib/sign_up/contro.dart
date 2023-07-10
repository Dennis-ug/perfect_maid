import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/network.dart';

class SignUpController extends GetxController {
  final signUpForm = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  Future<void> creatUser() async => await UserManagment.createUser(
        emailAddress: email.text,
        password: password.text,
      );
}
