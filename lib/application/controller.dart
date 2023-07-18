import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/network.dart';

class ApplicationController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController SecondName = TextEditingController();
  TextEditingController addres = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController nin = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cont = TextEditingController();
  String field = '';
  TextEditingController desp = TextEditingController();
  var dp = File('').obs;
  var isLoading = false.obs;
  final ImagePicker picker = ImagePicker();

  final applicationKey = GlobalKey<FormState>();

  Future<void> getImage(ImageSource source) async {
    Get.back();
    final XFile? image = await picker.pickImage(source: source);

    if (image!.path.isNotEmpty) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          // CropAspectRatioPreset.ratio3x2,
          // CropAspectRatioPreset.original,
          // CropAspectRatioPreset.ratio4x3,
          // CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Edit image',
              // toolbarColor: Colors.deepOrange,
              // toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile!.path.isNotEmpty) {
        dp.value = File(croppedFile.path);
      }
    }
  }

  Future<void> createApplication() async {
    isLoading.value = true;
    await DataManagment.createApplication(
      dp: dp.value,
      info: {
        'first_name': firstName.text,
        'sec_name': SecondName.text,
        'addres': addres.text,
        'd_o_b': dob.text,
        'nin': nin.text,
        'email': email.text,
        'field': field,
        'desc': desp.text,
        'contact': cont.text,
      },
    );
    isLoading.value = false;
    // Future.delayed(Duration(seconds: 1));
    // Get.back();
  }
}
