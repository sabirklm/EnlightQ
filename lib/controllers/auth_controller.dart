import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final _isAuthentionStatus = false.obs;
  final _auth = FirebaseAuth.instance;
  final _registrationStatus = false.obs;
  final _loadingStatus = false.obs;
  bool get isLoading => _loadingStatus.value;

  bool get isAuthenticated => _isAuthentionStatus.value;

  bool get isRegistered => _registrationStatus.value;
  @override
  void onInit() {
    initAuth();
    super.onInit();
  }

  _checkAuthStatus() {
    _isAuthentionStatus.value = (_auth.currentUser != null);
  }

  initAuth() async {
    _loadingStatus.value = true;
    await Future.delayed(const Duration(seconds: 3));
    _checkAuthStatus();
    _checkRegistrationStatus();
    _loadingStatus.value = false;
  }

  _checkRegistrationStatus() async {
    var id = _auth.currentUser?.uid;
    var snap =
        await FirebaseFirestore.instance.collection("users").doc(id).get();
    _registrationStatus.value = snap.exists;
  }
}
