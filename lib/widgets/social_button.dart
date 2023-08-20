import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interactive_login_page/Pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horWidth;
  final VoidCallback onPressed;
  final Color color;
  final Color svgcolor;
  const SocialButton(
      {Key? key,
      required this.iconPath,
      required this.label,
      this.horWidth = 90,
      required this.onPressed,
      this.color = Pallete.borderColor1,
      this.svgcolor = Pallete.svgColor1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        colorFilter: ColorFilter.mode(svgcolor, BlendMode.srcIn),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: horWidth),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: BorderSide(
                color: color,
                width: 3,
              ))),
    );
  }
}
