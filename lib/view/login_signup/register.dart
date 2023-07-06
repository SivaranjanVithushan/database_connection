import 'package:database_connection/widgets/centered_view/centered_view.dart';

import '/components/rounded_button.dart';

import 'package:flutter/material.dart';
// import 'package:flash_chat_app/components/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flash_chat_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;

  bool showSpinner = false;

  @override
  void dispose() {
    // emailController.dispose();
    // passwordController.dispose();
    email = null;
    password = null;
    super.dispose();
  }

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
                    tag: 'flash',
                    child: SizedBox(
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
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RoundedButton(
                    title: "Register",
                    colour: Colors.blueAccent,
                    onPressed: () async {
                      // setState(() {
                      //   showSpinner = true;
                      // });
                      // String email = emailController.text;
                      // String password = passwordController.text;
                      // try {
                      //   final newUser =
                      //       await _auth.createUserWithEmailAndPassword(
                      //           email: email, password: password);
                      //   if (newUser != null) {
                      //     // ignore: use_build_context_synchronously
                      //     Navigator.pushNamed(context, ChatScreen.id);
                      //   }
                      //   setState(() {
                      //     showSpinner = false;
                      //   });
                      // } catch (e) {
                      //   // ignore: avoid_print
                      //   print(e);
                      // }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
