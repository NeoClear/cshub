import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_button.dart';

class FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      iconData: FontAwesomeIcons.facebookF,
      color: Color(0xFF3B5998),
      text: 'Sign in with Facebook',
      onPressed: () {},
      isBlank: false,
    );
  }
}
