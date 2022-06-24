import 'package:auth/screens/home.dart';
import 'package:auth/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../utils/showSnackbar.dart';

class FirebaseAuthMethod {
  final FirebaseAuth _auth;
  FirebaseAuthMethod(this._auth);
  //Email Sign Up
  Future<void> SignUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      showSanckBar(context, e.message!);
     
    }
  }

  //Email Login
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
      }
    } on FirebaseAuthException catch (e) {
      showSanckBar(context, e.message!);
    }
  }

  //Email Verification
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSanckBar(context, 'Email Verification Sent!');
    } on FirebaseAuthException catch (e) {
      showSanckBar(context, e.message!);
    }
  }
}
