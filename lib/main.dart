import 'package:finanzas/modules/auth/change_pasword.dart';
import 'package:finanzas/modules/auth/code_verification.dart';
import 'package:finanzas/modules/auth/login.dart';
import 'package:finanzas/modules/auth/recovery.dart';
import 'package:finanzas/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/recovery': (context) => const Recovery(),
        '/code_verification': (context) => const CodeVerification(),
        '/change_password': (context) => const ChangePasword(),
      },
    );
  }
}
