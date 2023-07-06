import 'package:database_connection/view/home/home_view.dart';
import 'package:database_connection/view/login_signup/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'view/login_signup/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBylPrwkWyAErZOlRA179SH0ukudlQ9UeA",
        appId: "1:733051844303:web:f8d1916ba0d75b367de9ba",
        messagingSenderId: "733051844303",
        projectId: "thebasics-cb546"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter web app',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     textTheme: Theme.of(context).textTheme.apply(
    //           fontFamily: 'Open Sans',
    //         ),
    //   ),
    //   home: LoginScreen(),
    // );
    // Title
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeView.id: (context) => HomeView(),
        // ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        // LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
