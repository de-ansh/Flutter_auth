import 'package:auth/screens/home.dart';
import 'package:auth/services/firebaseauthmethod.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loginpage extends StatefulWidget {
  static const String routeName = '/login';
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void loginUser() {
    FirebaseAuthMethod(FirebaseAuth.instance).loginWithEmail(
        email: nameController.text,
        password: passwordController.text,
        context: context);
    Navigator.pushNamed(context, HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('loginPage'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: loginUser,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(150, 50)),
              ),
              child: const Text('Login'),
            ),
          )
        ],
      ),
    );
  }
}
