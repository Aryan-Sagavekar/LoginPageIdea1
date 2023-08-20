import 'package:flutter/material.dart';
import 'package:interactive_login_page/Pallete.dart';
import 'package:interactive_login_page/login_page.dart';
import 'package:interactive_login_page/widgets/login_box.dart';
import 'package:interactive_login_page/widgets/register_button.dart';
import 'package:interactive_login_page/widgets/social_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Row(
          children: [
            const SizedBox(
              width: 220,
            ),
            Column(children: [
              const Text(
                'Register',
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
                color: Pallete.borderColor2,
                svgcolor: Pallete.svgColor2,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              SocialButton(
                iconPath: 'assets/svg/f_logo.svg',
                label: "Sign in with facebook",
                horWidth: 81,
                color: Pallete.borderColor2,
                svgcolor: Pallete.svgColor2,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('or',
                  style: TextStyle(
                    fontSize: 20,
                    color: Pallete.borderColor2,
                  )),
              const SizedBox(height: 15),
              const LoginBox(
                hintText: 'Email',
                bColor: Pallete.borderColor2,
              ),
              const SizedBox(height: 15),
              const LoginBox(
                hintText: 'Password',
                bColor: Pallete.borderColor2,
              ),
              const SizedBox(height: 25),
              const RegisterButton(),
              const SizedBox(height: 25),
              GestureDetector(
                child: const Text(
                  "Already have an account Sign in!",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => LoginScreen()));
                },
              )
            ]),
            const SizedBox(
              width: 250,
            ),
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
              child: Image.network('assets/images/hightechred.png'),
            ),
          ],
        ),
      )),
    );
  }
}
