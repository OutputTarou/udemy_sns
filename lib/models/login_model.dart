import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = ChangeNotifierProvider((ref) => LoginModel());

class LoginModel extends ChangeNotifier {
  User? currentUser;
  String email = '';
  String password = '';
  bool isObscure = true;

  Future<void> login({required BuildContext context}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      currentUser = FirebaseAuth.instance.currentUser;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    currentUser = FirebaseAuth.instance.currentUser;
    notifyListeners();
  }

  void toggleIsObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
