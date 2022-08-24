import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/model/model.dart';
import 'package:medical_app/view/login_screen.dart';
import 'package:provider/provider.dart';
import '../../model/model.dart';
import '../../view_model/provider/auth_provider.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  Medicinmodel modelobj = Medicinmodel();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: context.watch<AuthProvider>().stream(),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) return Login_Screen();

          return (Scaffold(body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              // return Container(
              //   margin: const EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //             blurRadius: 10,
              //             offset: const Offset(1, 1),
              //             color: Colors.grey.withOpacity(0.5))
              //       ],
              //       borderRadius: BorderRadius.circular(30)),
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: TextFormField(
              //       //controller: passsword,
              //       decoration: InputDecoration(
              //           //hintText: "Your password",
              //           // prefixIcon: const Icon(
              //           //   Icons.lock,
              //           //   color: Colors.orange,
              //           // ),
              //           focusedBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(30),
              //               borderSide: const BorderSide(
              //                   color: Colors.white, width: 1.0)),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: const BorderSide(
              //                   width: 1.0, color: Colors.white),
              //               borderRadius: BorderRadius.circular(30))),
              //     ),
              //   ),
              // );

              return Column(
                children: [],
              );
            },
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.all(20),
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //                 blurRadius: 10,
            //                 offset: const Offset(1, 1),
            //                 color: Colors.grey.withOpacity(0.5))
            //           ],
            //           borderRadius: BorderRadius.circular(30)),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: TextFormField(
            //           //controller: passsword,
            //           decoration: InputDecoration(
            //               //hintText: "Your password",
            //               // prefixIcon: const Icon(
            //               //   Icons.lock,
            //               //   color: Colors.orange,
            //               // ),
            //               focusedBorder: OutlineInputBorder(
            //                   borderRadius: BorderRadius.circular(30),
            //                   borderSide: const BorderSide(
            //                       color: Colors.white, width: 1.0)),
            //               enabledBorder: OutlineInputBorder(
            //                   borderSide: const BorderSide(
            //                       width: 1.0, color: Colors.white),
            //                   borderRadius: BorderRadius.circular(30))),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       margin: const EdgeInsets.all(20),
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //                 blurRadius: 10,
            //                 offset: const Offset(1, 1),
            //                 color: Colors.grey.withOpacity(0.5))
            //           ],
            //           borderRadius: BorderRadius.circular(30)),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: TextFormField(
            //           //controller: passsword,
            //           decoration: InputDecoration(
            //               //hintText: "Your password",
            //               // prefixIcon: const Icon(
            //               //   Icons.lock,
            //               //   color: Colors.orange,
            //               // ),
            //               focusedBorder: OutlineInputBorder(
            //                   borderRadius: BorderRadius.circular(30),
            //                   borderSide: const BorderSide(
            //                       color: Colors.white, width: 1.0)),
            //               enabledBorder: OutlineInputBorder(
            //                   borderSide: const BorderSide(
            //                       width: 1.0, color: Colors.white),
            //                   borderRadius: BorderRadius.circular(30))),
            //         ),
            //       ),
            //     ),
            //     ElevatedButton(
            //         onPressed: () {
            //           context.read<AuthProvider>().signOut();
            //         },
            //         child: const Text("Sign Out"))
            //   ],
            // ),
          )));
        }));
  }
}
