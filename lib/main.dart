import 'package:flutter/material.dart';
import 'package:interactive_login_page/login_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Interactive Login Page",
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Color.fromARGB(255, 20, 20, 20)),
      home: const LoginScreen(),
    );
  }
}
