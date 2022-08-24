import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/view/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

import '../model/fech_data.dart/fech_data.dart';
import '../view_model/add_data_provider.dart';
import '../view_model/provider/auth_provider.dart';

// ignore: camel_case_types
class Login_Screen extends StatelessWidget {
  Login_Screen({Key? key}) : super(key: key);
  final TextEditingController email = TextEditingController(),
      passsword = TextEditingController();
  DataFromJson obj = DataFromJson();

  @override
  Widget build(BuildContext context) {
    Future singUp(AuthProvider provider) async {
      final msg = await provider.signUp(email.text, passsword.text);

      if (msg == '') return;

      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }

    final authProvider = context.watch<AuthProvider>();

    return StreamBuilder<User?>(
        stream: authProvider.stream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) return HomePage();
          return Scaffold(
            body: Consumer<Addname>(
              builder: (BuildContext context, data, Widget? child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      offset: const Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              // controller: passsword,
                              controller: data.name,
                              decoration: InputDecoration(
                                  hintText: "Your Name",
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0, color: Colors.white),
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      offset: const Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              controller: email,
                              decoration: InputDecoration(
                                  hintText: "Your eamil id",
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0, color: Colors.white),
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      offset: const Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              controller: passsword,
                              decoration: InputDecoration(
                                  hintText: "Your password",
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0, color: Colors.white),
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      offset: const Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              // controller: passsword,
                              decoration: InputDecoration(
                                  hintText: "confrom password",
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0, color: Colors.white),
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: ElevatedButton(
                            onPressed: () {
                              data.addtofirebase();
                              singUp(authProvider);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  backgroundColor:
                                      Color.fromARGB(44, 11, 22, 22)),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        });
  }
}
