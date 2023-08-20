import 'package:flutter/material.dart';
import 'package:interactive_login_page/register_page.dart';
import 'package:interactive_login_page/widgets/login_box.dart';
import 'package:interactive_login_page/widgets/login_button.dart';
import 'package:interactive_login_page/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Row(
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white,
                    Colors.white,
                    Colors.transparent
                  ],
                  stops: [0.0, 0.1, 0.4, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Image.network('assets/images/hightech.png'),
            ),
            const SizedBox(
              width: 250,
            ),
            Column(children: [
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SocialButton(
                iconPath: 'assets/svg/g_logo.svg',
                label: "Sign in with Google",
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              SocialButton(
                iconPath: 'assets/svg/f_logo.svg',
                label: "Sign in with facebook",
                horWidth: 81,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('or',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 184, 223, 255),
                  )),
              const SizedBox(height: 15),
              const LoginBox(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginBox(hintText: 'Password'),
              const SizedBox(height: 25),
              const LoginButton(),
              const SizedBox(height: 25),
              GestureDetector(
                child: const Text(
                  "Dont have an account Register!",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => RegisterScreen()));
                },
              )
            ]),
          ],
        ),
      )),
    );
  }
}
