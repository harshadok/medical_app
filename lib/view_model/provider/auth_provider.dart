import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuth fb;

  AuthProvider(this.fb);
  bool isloading = false;
  bool get loading => isloading;
  Stream<User?> stream() => fb.authStateChanges();

  Future<String> signUp(String email, String password) async {
    try {
      isloading = true;
      notifyListeners();
      await fb.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      //.then((value) => addUser());
      isloading = false;
      notifyListeners();

      return Future.value("");
    } on FirebaseAuthException catch (ex) {
      isloading = false;
      notifyListeners();
      // return toatAdd(ex);

      // context.read<ToastBar>().errorBox(context, ex);
      return Future.value(ex.message);
    }
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
