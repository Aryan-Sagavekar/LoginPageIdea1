import 'package:flutter/material.dart';
import 'package:interactive_login_page/Pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(6)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(370, 50),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text('Login',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            )),
      ),
    );
  }
}
