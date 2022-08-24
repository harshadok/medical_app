import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import '../model/mode_firebase.dart';

class Addname extends ChangeNotifier {
  final name = TextEditingController();
  ModeFirebase instance = ModeFirebase();
  addtofirebase() {
    if (name.text.isEmpty) {
      return;
    }
    User? currentUser = FirebaseAuth.instance.currentUser;

    instance.id = currentUser!.uid;

    instance.name = name.text.toString();
    FirebaseFirestore.instance
        .collection("user")
        .doc(instance.id)
        .set(instance.tojson());
  }
}
