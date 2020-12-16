import 'package:cshub/page/login/login_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MicrosoftLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      iconData: FontAwesomeIcons.microsoft,
      color: Color(0xff235A9F),
      text: 'Sign in with Microsoft',
      onPressed: () {},
      isBlank: false,
    );
  }
}
