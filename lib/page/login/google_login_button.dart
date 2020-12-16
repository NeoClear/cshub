import 'package:cshub/page/login/login_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      iconData: FontAwesomeIcons.google,
      color: Color(0xFF4285F4),
      text: 'Sign in with Google',
      onPressed: () {},
      isBlank: false,
    );
  }
}
