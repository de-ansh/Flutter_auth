import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/firebaseauthmethod.dart';
import 'loginpage.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController UsernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void signUpUser() async {
    FirebaseAuthMethod(FirebaseAuth.instance).SignUpWithEmail(
        email: UsernameController.text,
        password: passwordController.text,
        context: context);
    Navigator.pushNamed(context, Loginpage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Create Your Account',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: UsernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
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
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Confirm Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: signUpUser,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(150, 50)),
              ),
              child: const Text('Sign Up'),
            ),
          )
        ],
      ),
    );
  }
}
