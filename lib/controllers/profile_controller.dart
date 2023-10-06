import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enlight_q_app/views/pages/initial_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:enlightq_service_package/models/user.dart' as user;
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final degreeController = TextEditingController();
  final collegeController = TextEditingController();
  final yOPController = TextEditingController();
  final currentCourseController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _editableStatus = false.obs;

  bool get isEditable => _editableStatus.value;

  String get name => nameController.text;
  String get email => emailController.text;
  String get phone => phoneController.text;
  String get degree => degreeController.text;
  String get college => collegeController.text;
  String get yOP => yOPController.text;
  String get currentCourse => currentCourseController.text;

  @override
  void onInit() {
    _getuser();
    super.onInit();
  }

  _getuser() async {
    var id = FirebaseAuth.instance.currentUser?.uid;
    var snap =
        await FirebaseFirestore.instance.collection("users").doc(id).get();
    if (snap.exists) {
      var userSnap = snap.data();
      emailController.text = userSnap?['email'] ?? "";
      nameController.text = userSnap?['username'] ?? "";
      print("[M] ${userSnap}");
    } else {
      //signOut();
      editProfile(true);
    }
  }

  signOut({BuildContext? context}) {
    _auth.signOut();
    Get.offAll(() => const InitialView());
  }

  void saveUser() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .set(user.User(
          email: email,
          username: name,
        ).toJson());
  }

  void editProfile(bool status) {
    _editableStatus.value = status;
  }
}
