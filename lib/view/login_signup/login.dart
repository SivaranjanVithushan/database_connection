// import 'dart:html';
// import 'package:flash_chat_app/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../widgets/centered_view/centered_view.dart';
import '/components/rounded_button.dart';
import 'package:database_connection/view/home/home_view.dart';

import 'register.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // TextEditingController emailContoller = TextEditingController();
  // TextEditingController passwordContoller = TextEditingController();
  String? email;
  String? password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CenteredView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Flexible(
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        height: 200.0,
                        child: Image.asset('images/logo.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                      onChanged: (value) {
                        email = value;
                      }),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter your password.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        password = value;
                      }),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RoundedButton(
                      colour: Colors.lightBlueAccent,
                      title: "Log In",
                      onPressed: () async {
                        // setState(() {
                        //   showSpinner = true;
                        // });
                        // String email = emailContoller.text;
                        // String password = passwordContoller.text;
                        // try {
                        //   final User = await _auth.signInWithEmailAndPassword(
                        //       email: email, password: password);
                        //   if (User != null) {
                        //     // Navigator.pushNamed(context,);
                        //   }
                        //   setState(() {
                        //     showSpinner = false;
                        //   });
                        // } catch (e) {
                        //   print(e);
                        // }
                        Navigator.pushNamed(context, HomeView.id);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegistrationScreen.id);
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
