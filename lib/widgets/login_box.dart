import 'package:flutter/material.dart';
import 'package:interactive_login_page/Pallete.dart';

class LoginBox extends StatelessWidget {
  final String hintText;
  final Color bColor;
  const LoginBox(
      {super.key, required this.hintText, this.bColor = Pallete.borderColor1});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 370,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(23),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: bColor,
                width: 3,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: bColor,
                width: 3,
              )),
          hintText: hintText,
        ),
      ),
    );
  }
}
