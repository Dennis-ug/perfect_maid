import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home.dart';
import 'widgets/snackbar.dart';

class UserManagment {
  static Future<void> createUser({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      snackBar('snackBar');
      Get.to(() => const HomeView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        snackBarError('The password provided is too weak.');
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        snackBarError('The account already exists for that email.');
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      snackBar(e.toString());
      debugPrint(e.toString());
    }
  }

  static Future<void> userSignIn({
    required String emailAddress,
    required String password,
  }) async {
    debugPrint('Password: $password');
    debugPrint('email: $emailAddress');
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password.trim(),
      );
      Get.to(() => const HomeView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        snackBarError('Wrong password provided for that user.');
        debugPrint('Wrong password provided for that user.');
      }
    }
  }
}

class DataManagment {
  static Future<void> createApplication(
      {required File dp, required Map<String, String> info}) async {
    final storageRef = FirebaseStorage.instance.ref("user_dp");
    storageRef.putFile(dp);
    final String dpUrl = await storageRef.getDownloadURL();
    //Adding User info
    final db = FirebaseFirestore.instance;

// Add a new document with a generated ID
    await db
        .collection("users")
        .add(info.addAll({'dp': dpUrl}) as Map<String, String>)
        .then((DocumentReference doc) =>
            print('DocumentSnapshot added with ID: ${doc.id}'));
  }
}
