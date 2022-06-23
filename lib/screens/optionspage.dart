import 'package:auth/screens/loginpage.dart';
import 'package:auth/screens/signuppage.dart';
import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  static const String routeName = '/options';
  const OptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Row(children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Loginpage.routeName);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(175, 50)),
              ),
              child: const Text('Login'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SignUpPage.routeName);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                minimumSize: MaterialStateProperty.all(const Size(175, 50)),
              ),
              child: const Text('Signup'),
            ),
          )
        ]),
      ),
    );
  }
}
