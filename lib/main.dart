import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:medical_app/view/login_screen.dart';
import 'package:medical_app/view_model/add_data_provider.dart';
import 'package:medical_app/view_model/provider/auth_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => Addname())),
        ChangeNotifierProvider(
            create: ((context) => AuthProvider(FirebaseAuth.instance))),
        StreamProvider(
            create: (context) => context.watch<AuthProvider>().stream(),
            initialData: null),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Login_Screen(),
      ),
    );
  }
}
