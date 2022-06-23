import 'package:auth/firebase_options.dart';
import 'package:auth/screens/loginpage.dart';
import 'package:auth/screens/optionspage.dart';
import 'package:auth/screens/signuppage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        OptionsPage.routeName: (context) => const OptionsPage(),
        Loginpage.routeName: (context) => const Loginpage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
      },
      home: const OptionsPage(),
    );
  }
}
